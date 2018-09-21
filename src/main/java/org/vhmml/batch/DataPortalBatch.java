package org.vhmml.batch;

import javax.persistence.EntityManagerFactory;
import org.apache.log4j.Logger;
import org.springframework.batch.core.Job;
import org.springframework.batch.core.Step;
import org.springframework.batch.core.configuration.annotation.EnableBatchProcessing;
import org.springframework.batch.core.configuration.annotation.JobBuilderFactory;
import org.springframework.batch.core.configuration.annotation.StepBuilderFactory;
import org.springframework.batch.core.launch.support.RunIdIncrementer;
import org.springframework.batch.item.database.JpaPagingItemReader;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.vhmml.batch.processor.DataPortalProcessor;
import org.vhmml.batch.writer.DataPortalWriter;
import org.vhmml.dto.DataPortalResult;
import org.vhmml.entity.readingroom.ReadingRoomObject;

@Configuration
@EnableBatchProcessing
public class DataPortalBatch {
	
	private static final Logger LOG = Logger.getLogger(SitemapBatch.class);
	
	@Autowired
    public JobBuilderFactory jobBuilderFactory;
 
    @Autowired
    public StepBuilderFactory stepBuilderFactory;
    
    @Autowired
    private EntityManagerFactory entityManagerFactory;
    
    @Value("${data.portal.batch.limit}")
	private String CHUNK_LIMIT;
    
    @Value("${data.portal.page.size.limit}")
	private String PAGE_SIZE;
    
	@Bean
    public Job datasetJob() {
		
        return jobBuilderFactory.get("datasetJob")
                .incrementer(new RunIdIncrementer())
                .flow(processReadingRoomObjectDataset())
                .end()
                .build();
    }
	
	@Bean
	public Step processReadingRoomObjectDataset() {
		return stepBuilderFactory.get("processReadingRoomObjectDataset")
                .<ReadingRoomObject, DataPortalResult> chunk(Integer.valueOf(CHUNK_LIMIT))
                .reader(getActiveReadingRoomObjects())
                .processor(dataPortalProcessor())
                .writer(dataPortalResultsWriter())
                .build();
	}
	
	JpaPagingItemReader<ReadingRoomObject> getActiveReadingRoomObjects() {
        JpaPagingItemReader<ReadingRoomObject> databaseReader = new JpaPagingItemReader<>();
        String query = "SELECT rr FROM ReadingRoomObject rr WHERE active = 1";
        
        try {
        	databaseReader.setEntityManagerFactory(entityManagerFactory);
            databaseReader.setPageSize(Integer.valueOf(PAGE_SIZE));
            databaseReader.setQueryString(query);
			databaseReader.afterPropertiesSet();
		} catch (Exception e) {
			LOG.error("Error retrieving custom urls for the sitemap: ", e);
		}
        
        return databaseReader;
    }
	
	@Bean
	public DataPortalProcessor dataPortalProcessor() {
		return new DataPortalProcessor();
	}
	
	@Bean
	public DataPortalWriter dataPortalResultsWriter() {
		return new DataPortalWriter();
	}
}
