package org.vhmml.service;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.collections.CollectionUtils;
import org.apache.commons.lang3.StringUtils;
import org.elasticsearch.action.search.SearchResponse;
import org.elasticsearch.index.query.QueryBuilder;
import org.elasticsearch.index.query.QueryBuilders;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.vhmml.dto.ReadingRoomSearchHit;
import org.vhmml.dto.ReadingRoomSearchResult;
import org.vhmml.dto.elasticsearch.IndexedType;
import org.vhmml.entity.MyListItem;
import org.vhmml.entity.User;
import org.vhmml.entity.readingroom.ReadingRoomObject;
import org.vhmml.entity.readingroom.ReadingRoomObjectOverview;
import org.vhmml.repository.MyListItemRepository;
import org.vhmml.security.VhmmlSecurityUtil;
import org.vhmml.web.VhmmlSession;

import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.DeserializationFeature;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.google.common.collect.Lists;

@Service
public class MyListServiceImpl implements MyListService {
	
	@Autowired
	ReadingRoomService readingRoomService;
	
	@Autowired
	ElasticSearchService elasticSearchService;
	
	@Autowired
	MyListItemRepository myListItemRepository;
	
	public static final String MY_LIST_CUSTOM_SORT_DATESAVED = "dateSaved";
	public static final String MY_LIST_SORT_DIRECTION_ASC = "ASC";
	public static final String MY_LIST_SORT_DIRECTION_DESC = "DESC";
	public static final int ES_MAX_VALUE = 10000;
	
	private static final ObjectMapper objectMapper = new ObjectMapper();
	
	static {
		objectMapper.configure(DeserializationFeature.FAIL_ON_UNKNOWN_PROPERTIES, false);		
	}

	/**
	 * Method will add an item to My List and return the amount of saves.
	 */
	@Override
	@Transactional
	public int addItemToMyList(Long objectId, HttpServletRequest request) {
		VhmmlSession session = VhmmlSession.getSession(request);
		MyListItem newMyListItem = new MyListItem(objectId);
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		Object principal = auth.getPrincipal();	       
		
		// If the user is signed-in, then save the item to the database also.
		if(principal.getClass().isAssignableFrom(User.class)) {
			User user = (User)principal;
			newMyListItem.setUserId(user.getId());
			myListItemRepository.save(newMyListItem);
		}

		session.getMyListSaves().add(newMyListItem);
		
		return session.getMyListSaves().size();
	}

	/**
	 * Method will remove an item from My List and return the amount of saves.
	 */
	@Override
	@Transactional
	public int removeItemFromMyList(Long objectId, HttpServletRequest request) {
		VhmmlSession session = VhmmlSession.getSession(request);
		Set<MyListItem> myListSaves = session.getMyListSaves();
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		Object principal = auth.getPrincipal();	       
		
		// If the user is signed-in, then remove the selected items from the database.
		if(principal.getClass().isAssignableFrom(User.class)) {
			User user = (User)principal;
			myListItemRepository.deleteByUserIdAndObjectId(user.getId(), objectId);
		}
		
		// Remove the RR object from the list.
		for (MyListItem listItem : myListSaves) {
			if ((listItem.getObjectId()).equals(objectId)) {
				myListSaves.remove(listItem);
				break;
			}
		}
		
		// Reset the My List saves in the session.
		session.setMyListSaves(myListSaves);
		
		return session.getMyListSaves().size();
	}
	
	/**
	 * This method will update the search results' search hits with their respective My List status and saved date for that user.
	 */
	@Override
	public ReadingRoomSearchResult updateSearchResultsWithMyListStatus(ReadingRoomSearchResult result, HttpServletRequest request) {
		VhmmlSession session = VhmmlSession.getSession(request);
		Set<MyListItem> myListSaves = session.getMyListSaves();
		Map<Long, Date> ids = new HashMap<>();
		
		// Put all the object ids into a set that we'll use for checking the RR search hits.
		for (MyListItem listItem : myListSaves) {
			ids.put(listItem.getObjectId(), listItem.getDateAdded());
		}
		
		for (ReadingRoomSearchHit hit : result.getSearchHits()) {
			if (ids.containsKey(hit.getObjectOverview().getId())) {
				hit.getObjectOverview().setMyListSaved((true));
				hit.getObjectOverview().setMyListSavedDate(ids.get(hit.getObjectOverview().getId()));
				hit.getObjectOverview().setMyListSavedDateDisplay(new SimpleDateFormat("yyyy/MM/dd HH:mm z").format(ids.get(hit.getObjectOverview().getId())));
			}
		}
		
		return result;
	}
	
	/**
	 * This method will update a Reading Room object with the it's appropriate My List saved status and date for that user.
	 */
	@Override
	public ReadingRoomObject updateObjectWithMyListStatus(ReadingRoomObject object, HttpServletRequest request) {
		VhmmlSession session = VhmmlSession.getSession(request);
		Set<MyListItem> myListSaves = session.getMyListSaves();
		ReadingRoomObject updatedObject = object;
		
		for (MyListItem listItem : myListSaves) {
			if ((listItem.getObjectId()).equals(updatedObject.getId())) {
				updatedObject.setMyListSaved(true);
				updatedObject.setMyListSavedDate(listItem.getDateAdded());
				break;
			}
		}
		
		
		return updatedObject;
		
	}
	
	/**
	 * This method will take the object ids of any saved items for that user and return a search result of those ids from Elastic Search
	 * that will be used to populate the My List page.
	 * @throws IOException 
	 */
	@Override
	public ReadingRoomSearchResult search(Pageable pageable, HttpServletRequest request) throws IOException {
		Set<Long> ids = new HashSet<>();
		boolean doSortByDateSaved= this.determineIfSortByDate(pageable);
		Set<MyListItem> myListSaves;
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		Object principal = auth.getPrincipal();	
		VhmmlSession session = VhmmlSession.getSession(request);
		
		// If the user is signed-in, then bring in the items from the database.
		if(principal.getClass().isAssignableFrom(User.class)) {
			User user = (User)principal;
			myListSaves = myListItemRepository.findAllByUserId(user.getId());
			session.setMyListSaves(myListSaves);
		} else {
			myListSaves = session.getMyListSaves();
		}
		
		// Put all the object ids into a set that we'll use for checking the RR search hits.
		for (MyListItem listItem : myListSaves) {
			ids.add(listItem.getObjectId());
		}
		
		// Retrieve the RR search results using the set of ids.
		ReadingRoomSearchResult result = this.retrieveReadingRoomSearchResultWithIds(ids, pageable);
		
		// Remove the restricted items per user role.
		result = this.removeRestrictedItemsPerRole(result, request);
		
		// Add the date saved and save status to the results
		result = this.updateSearchResultsWithMyListStatus(result, request);
		
		// Check if we need to sort the result by date saved.  If so, then do the sort.
		if (doSortByDateSaved) {
			return this.sortResultsByDateSaved(result, pageable);
		}
		
		return result;
	}
	
	/**
	 * Method used to retrieve RR search results with the passed in ids and pageable.
	 * 
	 * @param ids
	 * @param pageable Can be null.
	 * @return
	 */
	private ReadingRoomSearchResult retrieveReadingRoomSearchResultWithIds(Set<Long> ids, Pageable pageable) {
		QueryBuilder query = QueryBuilders.boolQuery()
				.must(QueryBuilders.termsQuery("_id", ids));
		
		SearchResponse searchResponse = elasticSearchService.executeQuery(IndexedType.READING_ROOM_OBJECT, query, pageable, null, new String[]{});
		return readingRoomService.getSearchResult(searchResponse, pageable);
	}
	
	/**
	 * Method will query Elastic search with the passed in objects, then remove any restricted items that
	 * the user cannot view.
	 * @throws IOException 
	 * 
	 */
	@Override
	public Set<MyListItem> removeRestrictedItems(User user, Set<MyListItem> savedItems, HttpServletRequest request) throws IOException {
		Set<Long> ids = new HashSet<>();
		Pageable noPageable = new PageRequest(0, ES_MAX_VALUE, null);
		
		// Get a set of ids from the set of MyListItem objects.
		for (MyListItem item : savedItems) {
			ids.add(item.getObjectId());
		}
		
		ReadingRoomSearchResult result = this.retrieveReadingRoomSearchResultWithIds(ids, noPageable);
		result = this.removeRestrictedItemsPerRole(result, request);
		
		return this.loadMyList(user);
	}
	
	/**
	 * This method will go through the results returned and updated results.
	 * @param result
	 * @param request
	 * @return
	 * @throws IOException
	 */
	private ReadingRoomSearchResult removeRestrictedItemsPerRole(ReadingRoomSearchResult result, HttpServletRequest request) throws IOException {
		boolean isCataloger = VhmmlSecurityUtil.isCurrentUserCataloger();
		boolean isScholar = VhmmlSecurityUtil.isCurrentScholar();
		String assignedScholarId = VhmmlSecurityUtil.getCurrentUser() != null ? VhmmlSecurityUtil.getCurrentUser().getId().toString() : "";
		Set<Long> idsToRemove = new HashSet<>();
		List<ReadingRoomSearchHit> updatedResultList = result.getSearchHits();
		Iterator<ReadingRoomSearchHit> hitIterator = updatedResultList.iterator();
		
		while (hitIterator.hasNext()) {
			ReadingRoomSearchHit hit = hitIterator.next();
			ReadingRoomObjectOverview object = hit.getObjectOverview();
			
			if((!isCataloger && !isScholar) && !object.isActive()) {
				idsToRemove.add(object.getId());
				hitIterator.remove();
			}
			
			if((isScholar && !isCataloger) 
					&& !object.isActive() 
					&& !StringUtils.equals(assignedScholarId, object.getAssignedScholar())) {
				idsToRemove.add(object.getId());
				hitIterator.remove();
			}
		}
		
		result.setSearchHits(updatedResultList);
		
		if (CollectionUtils.isNotEmpty(idsToRemove)) {
			Long newTotalElements = result.getTotalElements() - idsToRemove.size();
			result.setTotalElements(newTotalElements);
			this.removeSelectedItemsFromMyList(null, idsToRemove, request);
		}
		
		return result;
	}
	
	/**
	 * This method will determine if user is attempting to sort their My List items by the custom saved date.
	 * 
	 * @param pageable
	 * @return
	 */
	private boolean determineIfSortByDate(Pageable pageable) {
		if(pageable != null) {
			Sort sort = pageable.getSort();
			
			if(sort != null) {
				Iterator<Sort.Order> sortFields = pageable.getSort().iterator();
		
				// Loop through the sort fields in pageable to see if "date added" was
				// selected for sorting.  This will be a custom function and not be a sort
				// done by Elastic Search because the value "date added" is not indexed nor should
				// it be.
				while (sortFields.hasNext()) {
					Sort.Order sortField = sortFields.next();
					if (sortField.getProperty().equals(MY_LIST_CUSTOM_SORT_DATESAVED) 
							|| ("null").equalsIgnoreCase(sortField.getProperty())) {
						return true;
					}
				}
				
				return false;
			}

		}
		
		return true;
	}
	
	/**
	 * This method will determine what the sort direction is going to be, specifically when the custom saved date is the sort by criteria.
	 * 
	 * @param pageable
	 * @return
	 */
	private String determineSortDirection(Pageable pageable) {
		if(pageable != null) {
			Sort sort = pageable.getSort();
			
			if(sort != null) {
				Iterator<Sort.Order> sortFields = pageable.getSort().iterator();
		
				// Loop through the sort fields in pageable to see if "date added" was
				// selected for sorting.  This will be a custom function and not be a sort
				// done by Elastic Search because the value "date added" is not indexed nor should
				// it be.
				while (sortFields.hasNext()) {
					Sort.Order sortField = sortFields.next();
					if (sortField.getDirection().toString().equals(MY_LIST_SORT_DIRECTION_ASC)) {
						return MY_LIST_SORT_DIRECTION_ASC;
					}
				}
				
				return MY_LIST_SORT_DIRECTION_DESC;
			}
		}
		
		// Default is descending order
		return MY_LIST_SORT_DIRECTION_DESC;
	}

	/**
	 * This method will remove all the items from a user's My List.
	 */
	@Override
	@Transactional
	public void removeAllItemsFromMyList(HttpServletRequest request) {
		VhmmlSession session = VhmmlSession.getSession(request);
		Set<MyListItem> freshList = new HashSet<>();
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		Object principal = auth.getPrincipal();	   
		
		// If the user is signed-in, then remove all items from db for user.
		if(principal.getClass().isAssignableFrom(User.class)) {
			User user = (User)principal;
			myListItemRepository.deleteByUserId(user.getId());
		}
		
		session.setMyListSaves(freshList);
	}

	/**
	 * This method will remove the selected items from a user's My List.
	 */
	@Override
	@Transactional
	public int removeSelectedItemsFromMyList(String selectedSaves, Set<Long> idsToRemove, HttpServletRequest request) throws IOException {
		Set<Long> ids;
		int listSize = 0;
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		Object principal = auth.getPrincipal();	
		

		if (CollectionUtils.isNotEmpty(idsToRemove)) {
			ids = idsToRemove;
		} else {
			ids = objectMapper.readValue(selectedSaves, new TypeReference<Set<Long>>(){});
		}
		
		// If the user is signed-in, then remove the selected items from the database.
		if(principal.getClass().isAssignableFrom(User.class)) {
			User user = (User)principal;
			myListItemRepository.deleteByUserIdAndObjectIds(user.getId(), ids);
		}
		
		for (Long id : ids) {
			listSize = this.removeItemFromMyList(id, request);
		}
			
		return listSize;
	}

	/**
	 * This method will take a set of incoming saved items (from session) and save it all to the database.
	 */
	@Override
	@Transactional
	public Set<MyListItem> addMyListToDatabase(User user, Set<MyListItem> incomingSaves) {
		
		// Change from a set to a list for the batch save.
		List<MyListItem> incomingSavesList = Lists.newArrayList(assignMissingValuesToMyListItems(user, incomingSaves));
		// Get a list of existing saves from the database so we can pop out the duplicates.
		Set<MyListItem> myListSavesFromDb = myListItemRepository.findAllByUserId(user.getId());
		
		// Compare the 2 collections on the object id.  If the object id exists already in the records
		// from the database, then pop the one that's in the incoming list.
		for (MyListItem item : myListSavesFromDb) {
			for (MyListItem incomingItem : incomingSavesList) {
				if ((item.getObjectId()).equals(incomingItem.getObjectId())) {
					incomingSavesList.remove(incomingItem);
					break;
				}
				
			}
		}
			
		myListItemRepository.batchSave(incomingSavesList);
		
		// Query the database for a fresh set of records for My List.
		return myListItemRepository.findAllByUserId(user.getId());
	}
	
	/**
	 * This method will assign any missing properties to the list of items for a user's incoming My List items going into
	 * the database.
	 * 
	 * @param user
	 * @param incomingSaves
	 * @return
	 */
	private Set<MyListItem> assignMissingValuesToMyListItems(User user, Set<MyListItem> incomingSaves) {
		for (MyListItem incomingItem : incomingSaves) {
			// Set the user id to the new saves
			incomingItem.setUserId(user.getId());
		}
		
		return incomingSaves;
	}

	/**
	 * This method will load a user's My List from the database.
	 */
	@Override
	public Set<MyListItem> loadMyList(User user) {
		return myListItemRepository.findAllByUserId(user.getId());
	}
	
	/**
	 * This method will sort the results according to the direction of the saved date value for each My List item.
	 * 
	 * @param result
	 * @param pageable
	 * @return
	 */
	private ReadingRoomSearchResult sortResultsByDateSaved(ReadingRoomSearchResult result, Pageable pageable) {
		List<ReadingRoomSearchHit> hits = result.getSearchHits();
		String direction = determineSortDirection(pageable);
		
		if (direction.equals(MY_LIST_SORT_DIRECTION_ASC)) {
			Collections.sort(hits, new MyListItemDateSavedAscendingComparator());
		} else {
			Collections.sort(hits, new MyListItemDateSavedDescendingComparator());
		}
		
		result.setSearchHits(hits);
		
		return result;
	}
	
	private Set<Long> retrieveObjectIdsOfMyListItems(Set<MyListItem> savedItems) {
		Set<Long> ids = new HashSet<>();
		
		// Get a set of ids from the set of MyListItem objects.
		for (MyListItem item : savedItems) {
			ids.add(item.getObjectId());
		}
		
		return ids;
	}
	
	/**
	 * Method will handle exporting all My List Items.
	 */
	@Override
	public String exportAllMyListItems(HttpServletRequest request, Pageable pageable) {
		Pageable sortOnlyPageable = new PageRequest(0, ES_MAX_VALUE, pageable.getSort());
		VhmmlSession session = VhmmlSession.getSession(request);
		Set<MyListItem> myListSaves = session.getMyListSaves();
		Set<Long> ids = retrieveObjectIdsOfMyListItems(myListSaves);
		
		return buildMyListExportText(retrieveReadingRoomSearchResultWithIds(ids, sortOnlyPageable), request.getContextPath());
	}
	
	/**
	 * Method will handle exporting selected My List items.
	 */
	@Override
	public String exportSelectedMyListItems(HttpServletRequest request, Pageable pageable, String selectedSaves) {
		Pageable sortOnlyPageable = new PageRequest(0, ES_MAX_VALUE, pageable.getSort());
		List<String> objectIdsAsString = Arrays.asList(selectedSaves.split("\\s*,\\s*"));
		Set<Long> ids = new HashSet<>();
		
		for (String objectIdAsString : objectIdsAsString) {
			ids.add(Long.valueOf(objectIdAsString));
		}
		
		// Get the "search" result using the set of ids, passing null for pageable because we want everything
		// returned.  Then build our text for the file.
		return buildMyListExportText(retrieveReadingRoomSearchResultWithIds(ids, sortOnlyPageable), request.getContextPath());
	}
	
	/**
	 * Method will build and return the string to put in the plain text file for all My List items being exported.
	 * 
	 * @param result
	 * @param contextForPermalink
	 * @return
	 */
	private String buildMyListExportText(ReadingRoomSearchResult result, String contextForPermalink) {
		StringBuilder text = new StringBuilder();
		
		if (result != null) {
		
			for (ReadingRoomSearchHit hit : result.getSearchHits()) {
				ReadingRoomObjectOverview item = hit.getObjectOverview();
				String permalink = "https://w3id.org/vhmml/readingRoom/view/" + item.getId();
				
				text.append("HMML project number: " + item.getHmmlProjectNumber()).append("\r\n");
				text.append("Country: " + item.getCountry()).append("\r\n");
				text.append("City: " + item.getCity()).append("\r\n");
				text.append("Repository: " + item.getRepository()).append("\r\n");
				text.append("Shelfmark: " + item.getShelfmark()).append("\r\n");
				text.append("Permalink: " + permalink).append("\r\n \t \r\n");
			}
			
		} else {
			text.append("There was nothing to export for your My List or an error may have occurred when attempting to export saved items from your My List.");
		}
		
		return text.toString();
	}
	
	/**
	 * A comparator class implementation used for sorting the My List items by their saved dates in ascending order.
	 * 
	 * @author lorbs28
	 *
	 */
	class MyListItemDateSavedAscendingComparator implements Comparator<ReadingRoomSearchHit> {
	    public int compare(ReadingRoomSearchHit first, ReadingRoomSearchHit second) {
	        return Long.compare(first.getObjectOverview().getMyListSavedDate().getTime(), second.getObjectOverview().getMyListSavedDate().getTime());
	    }
	}
	
	/**
	 * A comparator class implementation used for sorting the My List items by their saved dates in descending order.
	 * 
	 * @author lorbs28
	 *
	 */
	class MyListItemDateSavedDescendingComparator implements Comparator<ReadingRoomSearchHit> {
	    public int compare(ReadingRoomSearchHit first, ReadingRoomSearchHit second) {
	        return Long.compare(second.getObjectOverview().getMyListSavedDate().getTime(), first.getObjectOverview().getMyListSavedDate().getTime());
	    }
	}
	
}
