package org.vhmml.service;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertNotNull;
import static org.mockito.MockitoAnnotations.initMocks;

import java.util.List;

import javax.transaction.Transactional;

import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.Mockito;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;
import org.vhmml.dto.elasticsearch.IndexedType;
import org.vhmml.entity.Creator;
import org.vhmml.entity.ReferenceCreator;
import org.vhmml.entity.ReferenceEntry;
import org.vhmml.repository.CreatorRepository;
import org.vhmml.util.TestObjectBuilder;

@WebAppConfiguration // need web app config because VhmmlMessageUtil puts messages on servlet context
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations={"classpath:spring/app-config.xml", "classpath:spring/service-config.xml", "classpath:spring/test-data-config.xml"})
@Transactional
public class ReferenceServiceTest {

	public static final Long TEST_ENTRY_ID = 13964L;
	public static final Integer TEST_GROUP_ID = 89728;	
		
	@InjectMocks
	@Autowired
	private ReferenceService referenceService;	
	
	@Autowired
	private CreatorRepository creatorRepository;
	
	@Mock
	private ElasticSearchService elasticSearchService;
	
	public ReferenceServiceTest() {
		super();
	}
	
	@Before
	public void setUp() {		
		initMocks(this);
		referenceService.setElasticSearchService(elasticSearchService);
	}
	
	@SuppressWarnings("unchecked")
	@Test
	public void testSaveEntryAndGetEntry() throws Exception {
		
		Mockito.doNothing().when(elasticSearchService).reindex(Mockito.isA(IndexedType.class), Mockito.isA(List.class));
		
		ReferenceEntry testEntry = TestObjectBuilder.getReferenceEntryWithMultipleCreators();
		testEntry = referenceService.saveEntry(testEntry);
		ReferenceEntry retrievedEntry = referenceService.getEntry(testEntry.getId());
		assertNotNull("Entry was null", retrievedEntry);
		assertEquals("Wrong id on object retrieved using referenceService.getEntry", testEntry.getId(), retrievedEntry.getId());
		assertEquals("Wrong title on object retrieved using referenceService.getEntry", testEntry.getTitle(), retrievedEntry.getTitle());
		
		for(ReferenceCreator referenceCreator : testEntry.getReferenceCreators()) {
			Long creatorId = referenceCreator.getCreator().getId();
			Creator creator = creatorRepository.findOne(creatorId);			
			assertNotNull("Creator was null after saving entry with creators", creator);
			assertEquals("Wrong name on creator", referenceCreator.getCreator().getName(), creator.getName());
			assertEquals("Wrong first name on creator", referenceCreator.getCreator().getFirstName(), creator.getFirstName());
			assertEquals("Wrong last name on creator", referenceCreator.getCreator().getLastName(), creator.getLastName());
		}
	}
}
