package org.vhmml.service;

import java.lang.reflect.InvocationTargetException;
import java.util.List;

import org.springframework.data.domain.Pageable;
import org.vhmml.dto.ReferenceSearchResult;
import org.vhmml.entity.ReferenceEntry;
import org.vhmml.entity.ReferenceListItem;
import org.vhmml.entity.Tag;

public interface ReferenceService {
	
	public enum SearchType {
		AUTHOR,
		TITLE,
		KEYWORD
	}
	
	public ReferenceEntry getEntry(Long id);
	public ReferenceEntry saveEntry(ReferenceEntry referenceEntry);
	public ReferenceSearchResult search(String searchString, Pageable pageable);	
	public void deleteEntry(Long entryId);	
	public ReferenceListItem findListItemById(Long referenceEntryId);
	public List<ReferenceListItem> findAll();
	public void sendEntryToUser(Long entryId, String emailAddress) throws NoSuchMethodException, InvocationTargetException, IllegalAccessException;
	public List<Tag> searchTags(String startsWith);
	public void setElasticSearchService(ElasticSearchService elasticSearchService);
}
