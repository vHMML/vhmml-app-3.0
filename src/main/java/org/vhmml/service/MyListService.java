package org.vhmml.service;

import java.io.IOException;
import java.util.Set;

import javax.servlet.http.HttpServletRequest;

import org.springframework.data.domain.Pageable;
import org.vhmml.dto.ReadingRoomSearchResult;
import org.vhmml.entity.MyListItem;
import org.vhmml.entity.User;
import org.vhmml.entity.readingroom.ReadingRoomObject;

public interface MyListService {
	public int addItemToMyList(Long objectId, HttpServletRequest request);
	public Set<MyListItem> addMyListToDatabase(User user, Set<MyListItem> myListSaves);
	public int removeItemFromMyList(Long objectId, HttpServletRequest request);
	public ReadingRoomSearchResult updateSearchResultsWithMyListStatus(ReadingRoomSearchResult result, HttpServletRequest request);
	public ReadingRoomObject updateObjectWithMyListStatus(ReadingRoomObject object, HttpServletRequest request);
	public ReadingRoomSearchResult search(Pageable pageable, HttpServletRequest request) throws IOException;
	public void removeAllItemsFromMyList(HttpServletRequest request);
	public int removeSelectedItemsFromMyList(String selectedSaves, Set<Long> idsToRemove, HttpServletRequest request) throws IOException;
	public Set<MyListItem> loadMyList(User user);
	public Set<MyListItem> removeRestrictedItems(User user, Set<MyListItem> savedItems, HttpServletRequest request) throws IOException;
	public String exportSelectedMyListItems(HttpServletRequest request, Pageable pageable, String selectedSaves);
	public String exportAllMyListItems(HttpServletRequest request, Pageable pageable);
}
