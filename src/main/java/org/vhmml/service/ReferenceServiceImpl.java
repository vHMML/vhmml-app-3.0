package org.vhmml.service;

import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.transaction.Transactional;

import org.apache.commons.beanutils.BeanUtils;
import org.apache.commons.lang3.StringUtils;
import org.apache.log4j.Logger;
import org.elasticsearch.action.search.SearchResponse;
import org.elasticsearch.index.query.MultiMatchQueryBuilder;
import org.elasticsearch.search.SearchHit;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.util.CollectionUtils;
import org.vhmml.dto.ReferenceSearchResult;
import org.vhmml.dto.elasticsearch.ElasticSearchQuery;
import org.vhmml.dto.elasticsearch.ElasticSearchQuery.BoolOperation;
import org.vhmml.dto.elasticsearch.IndexedType;
import org.vhmml.dto.elasticsearch.MultiMatchQuery;
import org.vhmml.entity.Creator;
import org.vhmml.entity.ReferenceCreator;
import org.vhmml.entity.ReferenceEntry;
import org.vhmml.entity.ReferenceEntry.DisplayField;
import org.vhmml.entity.ReferenceListItem;
import org.vhmml.entity.ReferenceTag;
import org.vhmml.entity.Tag;
import org.vhmml.repository.CreatorRepository;
import org.vhmml.repository.ReferenceCreatorRepository;
import org.vhmml.repository.ReferenceEntryRepository;
import org.vhmml.repository.ReferenceListRepository;
import org.vhmml.repository.ReferenceTagRepository;
import org.vhmml.repository.TagRepository;
import org.vhmml.service.ApplicationConfigService.Property;
import org.vhmml.util.PagingUtil;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.DeserializationFeature;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.google.common.collect.Lists;

@Service
public class ReferenceServiceImpl implements ReferenceService {

	private static final Logger LOG = Logger.getLogger(ReferenceServiceImpl.class);
	private static final ObjectMapper objectMapper = new ObjectMapper();
	
	@Autowired
	private ReferenceEntryRepository referenceEntryRepository;
	
	@Autowired
	private ReferenceListRepository referenceListRepository;
	
	@Autowired
	private CreatorRepository creatorRepository;
	
	@Autowired
	private ReferenceCreatorRepository referenceCreatorRepository;
	
	@Autowired
	private TagRepository tagRepository;
	
	@Autowired
	private ReferenceTagRepository referenceTagRepository;
	
	@Autowired
	private ApplicationConfigService configService;
	
	@Autowired
	private EmailService emailService;	
	
	@Autowired
	private PagingUtil pagingUtil;
	
	private ElasticSearchService elasticSearchService;
	
	static {
		objectMapper.configure(DeserializationFeature.FAIL_ON_UNKNOWN_PROPERTIES, false);
	}
	
	public List<ReferenceListItem> findAll() {
		return Lists.newArrayList(referenceListRepository.findAll());
	}
	
	public ReferenceSearchResult search(String searchString, Pageable pageable) {
		SearchResponse searchResponse = null;
		List<ElasticSearchQuery> elasticSearchQueries = new ArrayList<>();
		
		if(StringUtils.isEmpty(searchString)) {
			searchResponse = elasticSearchService.findAll(IndexedType.REFERENCE_ITEM, pageable);
		} else {
			String[] fields = new String[] {
				"authors",
				"authors.folded",
				"blogTitle",
				"blogTitle.folded",
				"bookTitle",
				"bookTitle.folded",
				"conferenceName",
				"conferenceName.folded",
				"date",
				"date.folded",
				"dictionaryTitle",
				"dictionaryTitle.folded",
				"encyclopediaTitle",
				"encyclopediaTitle.folded",
				"id",
				"id.folded",
				"institution",
				"institution.folded",
				"itemType",
				"itemType.folded",
				"manuscriptType",
				"manuscriptType.folded",
				"otherContributors",
				"otherContributors.folded",
				"place",
				"place.folded",
				"proceedingsTitle",
				"proceedingsTitle.folded",
				"publicationTitle",
				"publicationTitle.folded",
				"publisher",
				"publisher.folded",
				"series",
				"series.folded",
				"seriesTitle",
				"seriesTitle.folded",
				"shortTitle",
				"shortTitle.folded",
				"studio",
				"studio.folded",
				"tags",
				"tags.folded",
				"title",
				"title.folded",
				"university",
				"university.folded",
			};						
			// replacing single quotes to deal with languages that use an apostrophe on compound words, e.g. if the user
			// searches for l'écriture they need to find records that are just écriture
			searchString = searchString.replaceAll("'", " ");
			
			String[] searchStringTokens = StringUtils.split(searchString);
			// if they entered more than one term in the keyword field, then we do a "should" operation, meaning one of the search terms should appear in a field, (a "must" would require every search term to be in a single field)
			// if they only entered one search term, then we do a "must" operation because the search term must appear in a field, otherwise it's not filtering based on the search term they entered at all
			// because it doesn't necessarily have to match any fields to be considered a match
			BoolOperation boolOperation = searchStringTokens.length > 1 ? BoolOperation.SHOULD : BoolOperation.MUST;
			elasticSearchQueries.add(new MultiMatchQuery(searchString, fields, MultiMatchQueryBuilder.Type.CROSS_FIELDS, org.elasticsearch.index.query.MatchQueryBuilder.Operator.AND, boolOperation));
			
			searchResponse = elasticSearchService.multiFieldSearch(
				IndexedType.REFERENCE_ITEM, 
				elasticSearchQueries, 
				true,
				pageable);			
		}
		
		return getReferenceSearchResult(searchResponse, pageable);
	}
	
	private ReferenceSearchResult getReferenceSearchResult(SearchResponse searchResponse, Pageable pageable) {
		ReferenceSearchResult searchResult = new ReferenceSearchResult();
		
		if(searchResponse != null) {
			SearchHit[] hits = searchResponse.getHits().getHits();
			List<ReferenceListItem> items = new ArrayList<ReferenceListItem>();
			
	        for(SearchHit hit : hits) {
	        	items.add(getReferenceListItemFromSearchHit(hit));
	        }		
			
	        searchResult.setItems(items);
	        
			if(pageable.getOffset() > 0) {
				searchResult.setPageNumber(pageable.getOffset()/pageable.getPageSize());
			}
			
			searchResult.setPageSize(pageable.getPageSize());
			searchResult.setTotalElements(searchResponse.getHits().getTotalHits());
		}		
        
		return searchResult;
	}
	
	private ReferenceListItem getReferenceListItemFromSearchHit(SearchHit hit) {
		ReferenceListItem referenceItem = new ReferenceListItem();
		Map<String, Object> source = hit.getSource();		        	
    	Field[] fields = ReferenceListItem.class.getDeclaredFields();
    	
    	for(Field field : fields) {
    		String fieldName = field.getName();        		
    		try {
        		if("highlightFields".equals(fieldName)) {
            		referenceItem.setHighlightFieldsForDisplay(hit);
            	} else if("itemType".equals(fieldName)) {
            		ReferenceEntry.Type itemType = ReferenceEntry.Type.valueOf((String)source.get(fieldName));
            		referenceItem.setItemType(itemType);
    			} else {
    				BeanUtils.setProperty(referenceItem, fieldName, source.get(fieldName));
            	}
    		} catch (Exception e) {
    			LOG.error("Unable to set property " + fieldName + " from ElasticSearch hit to " + source.get(fieldName) + ", property will be null", e);
			}
    	}
    	
    	return referenceItem;
	}
	
	public ReferenceListItem findListItemById(Long referenceEntryId) {		
		return referenceListRepository.findOne(referenceEntryId);		
	}
	
	@Transactional
	public ReferenceEntry saveEntry(ReferenceEntry referenceEntry) {
		Long referenceEntryId = referenceEntry.getId();
		
		findOrCreateEntryCreators(referenceEntry);
		findOrCreateEntryTags(referenceEntry);
		
		if(referenceEntryId != null) {
			ReferenceEntry dbEntry = referenceEntryRepository.findOne(referenceEntryId);
			referenceCreatorRepository.delete(dbEntry.getReferenceCreators());
			referenceTagRepository.delete(dbEntry.getReferenceTags());
			org.springframework.beans.BeanUtils.copyProperties(referenceEntry, dbEntry);
			referenceEntry = dbEntry;
		}
		
		ReferenceEntry entry = referenceEntryRepository.save(referenceEntry);
		referenceEntryId = entry.getId();
		// we use this native query strictly to query for a list item after updating it so we can re-index it. For some reason 
		// JPA will return an out of sync version if we use the built-in findOne method
		ReferenceListItem listItem = referenceListRepository.findById(referenceEntryId);
		Pageable defaultPageable = pagingUtil.getDefaultPageable(new String[]{"authors", "title", "date"});
		
		try {
			elasticSearchService.updateIndexedObject(IndexedType.REFERENCE_ITEM, listItem.getId().toString(), objectMapper.writeValueAsString(listItem));
		} catch (JsonProcessingException e) {
			LOG.error("JsonProcessingException while trying to update index after updating a reference item, index will be out of sync with the database", e);
		}
		
		ReferenceSearchResult searchResult = search(referenceEntryId.toString(), defaultPageable);
		
		// make sure we can read the object from the index before returning, there is an edge case race condition where
		// a new item should be part of the reference home page initial search results but it hasn't been indexed yet
		long start = new Date().getTime();
		
		while((org.apache.commons.collections4.CollectionUtils.isEmpty(searchResult.getItems()) && (new Date().getTime() - start < 2000))
				|| (new Date().getTime() - start < 2000)) {
			LOG.info("Waiting for reindex...");
			try {
				Thread.sleep(200);
			} catch (InterruptedException e) {
				LOG.error("Unexpected InterruptedException waiting for reindex to finish after saving reference entry", e);
			}
			searchResult = search(referenceEntryId.toString(), defaultPageable);
		}
				
		return referenceEntry;
	}
	
	public ReferenceEntry getEntry(Long id) {
		return referenceEntryRepository.findOne(id);
	}	
	
	@Transactional
	public void deleteEntry(Long entryId) {
		referenceEntryRepository.delete(entryId);
		elasticSearchService.removeIndexedObject(IndexedType.REFERENCE_ITEM, entryId.toString());
		Pageable defaultPageable = pagingUtil.getDefaultPageable(new String[]{"authors", "title", "date"});
		ReferenceSearchResult searchResult = search(entryId.toString(), defaultPageable);
		
		// make sure we the object has been removed from the index before returning, there is an edge case race condition where
		// a deleted item is part of the reference home page initial search results so it still shows up after deleting because
		// it hasn't been removed from the indexed yet
		List<ReferenceListItem> items = searchResult.getItems();
		long start = new Date().getTime();
		
		while(org.apache.commons.collections4.CollectionUtils.isNotEmpty(items) && (new Date().getTime() - start < 2000)) {
			LOG.info("Waiting for reindex...");
			try {
				Thread.sleep(200);
			} catch (InterruptedException e) {
				LOG.error("Unexpected InterruptedException waiting for reindex to finish after deleting reference entry", e);
			}			
			searchResult = search(entryId.toString(), defaultPageable);
		}
	}
	
	public void sendEntryToUser(Long entryId, String emailAddress) throws NoSuchMethodException, InvocationTargetException, IllegalAccessException {
		ReferenceEntry entry = referenceEntryRepository.findOne(entryId);
		
		if(entry != null) {
			String message = "Dear vHMML user,<br/><br/>";
			message += "Here is the citation reference information you emailed to yourself from the vHMML website:<br/></br>";
			message += "Item type: " + entry.getItemType().getDisplayName() + "<br/>";
			List<DisplayField> fields = entry.getDisplayFields();
			
			for(DisplayField field : fields) {
				String value =  BeanUtils.getProperty(entry, field.getName());
				if(StringUtils.isNoneEmpty(value)) {
					message += field.getLabel() + ": " + value + "<br/>";
				}				
			}
			
			message += "<br/>" + configService.getValue(Property.VHMML_EMAIL_SIGNATURE);
			
			emailService.sendMessages(Lists.newArrayList(emailAddress), "vHMML Citation Reference", message);
		}			
	}
	

	@Transactional
	private void findOrCreateEntryCreators(ReferenceEntry entry) {

		List<ReferenceCreator> referenceCreators = entry.getReferenceCreators();
		
		if(!CollectionUtils.isEmpty(referenceCreators)) {
			// get list of existing creators in the database so we don't re-insert existing ones 
			// (select for update so we lock on the table in case someone else is inserting at the same time)
			Map<Creator, Creator> existingCreators = getCreatorsForUpdate();
			
			for(ReferenceCreator referenceCreator : referenceCreators) {
				Creator nextCreator = referenceCreator.getCreator();				
				Creator existingCreator = existingCreators.get(nextCreator);
				
				if(existingCreator != null) {
					referenceCreator.setCreator(existingCreator);
				} else {
					referenceCreator.setCreator(creatorRepository.save(nextCreator));
				}
			}		
		}		
	}
	
	@Transactional
	private void findOrCreateEntryTags(ReferenceEntry entry) {

		List<ReferenceTag> referenceTags = entry.getReferenceTags();
		
		if(!CollectionUtils.isEmpty(referenceTags)) {
			// get list of existing tags in the database so we don't re-insert existing ones 
			// (select for update so we lock on the table in case someone else is inserting at the same time)
			Map<Tag, Tag> existingTags = getTagsForUpdate();
			
			for(ReferenceTag referenceTag : referenceTags) {
				Tag nextTag = referenceTag.getTag();				
				Tag existingTag = existingTags.get(nextTag);
				
				if(existingTag != null) {
					referenceTag.setTag(existingTag);
				} else {
					referenceTag.setTag(tagRepository.save(nextTag));
				}
			}		
		}		
	}
	
	@Transactional
	private Map<Creator, Creator> getCreatorsForUpdate() {
		Map<Creator, Creator> creators = new HashMap<Creator, Creator>();
		
		List<Creator> creatorList = creatorRepository.findAllForUpdate();
		
		for(Creator creator : creatorList) {
			creators.put(creator, creator);
		}
		
		return creators;
	}
	
	@Transactional
	private Map<Tag, Tag> getTagsForUpdate() {
		Map<Tag, Tag> tags = new HashMap<Tag, Tag>();
		
		List<Tag> tagList = tagRepository.findAllForUpdate();
		
		for(Tag tag : tagList) {
			tags.put(tag, tag);
		}
		
		return tags;
	}
	
	public List<Tag> searchTags(String startsWith) {
		return tagRepository.findByTagStartsWith(startsWith);
	}

	@Autowired
	public void setElasticSearchService(ElasticSearchService elasticSearchService) {
		this.elasticSearchService = elasticSearchService;
	}
}
