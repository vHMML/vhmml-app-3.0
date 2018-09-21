package org.vhmml.batch;

import javax.persistence.EntityManagerFactory;
import javax.sql.DataSource;

import org.apache.log4j.Logger;
import org.springframework.batch.core.Job;
import org.springframework.batch.core.Step;
import org.springframework.batch.core.configuration.annotation.DefaultBatchConfigurer;
import org.springframework.batch.core.configuration.annotation.EnableBatchProcessing;
import org.springframework.batch.core.configuration.annotation.JobBuilderFactory;
import org.springframework.batch.core.configuration.annotation.StepBuilderFactory;
import org.springframework.batch.core.launch.support.RunIdIncrementer;
import org.springframework.batch.item.database.JpaPagingItemReader;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.vhmml.batch.processor.CustomSitemapUrlProcessor;
import org.vhmml.batch.processor.FolioSitemapUrlProcessor;
import org.vhmml.batch.processor.LexiconSitemapUrlProcessor;
import org.vhmml.batch.processor.ReadingRoomSitemapUrlProcessor;
import org.vhmml.batch.processor.ReferenceSitemapUrlProcessor;
import org.vhmml.batch.writer.SitemapWriter;
import org.vhmml.entity.SitemapUrl;

@Configuration
@EnableBatchProcessing
public class SitemapBatch extends DefaultBatchConfigurer {

	private static final Logger LOG = Logger.getLogger(SitemapBatch.class);
	
	@Autowired
    public JobBuilderFactory jobBuilderFactory;
 
    @Autowired
    public StepBuilderFactory stepBuilderFactory;
    
    @Autowired
    private EntityManagerFactory entityManagerFactory;
    
    private int batchPart;
    
    public enum BatchType {
    		READING_ROOM("readingroom"),
    		FOLIO("folio"),
    		LEXICON("lexicon"),
    		REFERENCE("reference"),
    		CUSTOM("custom");
    	
    		private final String type;
    		
    		BatchType(String type) {
    			this.type = type;
    		}

		public String getType() {
			return type;
		}
    }
    
    public int getBatchPart() {
    		return this.batchPart;
    }
    
    public void setBatchPart(int batchPart) {
    		this.batchPart = batchPart;
    }
    
    @Override
    public void setDataSource(DataSource dataSource) {
        // override to do not set datasource even if a datasource exist.
        // initialize will use a Map based JobRepository (instead of database)
    }
 
	@Bean
    public Job sitemapJob() {
		
        return jobBuilderFactory.get("sitemapJob")
                .incrementer(new RunIdIncrementer())
                .flow(generateReadingRoomSitemap())
                .next(generateFolioSitemap())
                .next(generateLexiconSitemap())
                .next(generateReferenceSitemap())
                .next(generateCustomUrlSitemap())
                .end()
                .build();
    }
	
	@Bean
	public Step generateCustomUrlSitemap() {
		return stepBuilderFactory.get("generateCustomUrlSitemap")
                .<SitemapUrl, SitemapUrl> chunk(50000)
                .reader(getCustomUrlsForSitemap())
                .processor(customSitemapUrlProcessor())
                .writer(sitemapWriter())
                .build();
	}
	
	@Bean
    public Step generateReadingRoomSitemap() {
        return stepBuilderFactory.get("generateReadingRoomSiteMap")
                .<Long, SitemapUrl> chunk(50000)
                .reader(getActiveReadingRoomObjects())
                .processor(readingRoomProcessor())
                .writer(sitemapWriter())
                .build();
    }
    
    @Bean
    public Step generateFolioSitemap() {
    		return stepBuilderFactory.get("generateFolioSitemap")
    					.<Long, SitemapUrl> chunk(50000)
    					.reader(getActiveFolioObjects())
    					.processor(folioProcessor())
    					.writer(sitemapWriter())
    					.build();
    }
    
    @Bean
    public Step generateLexiconSitemap() {
    		return stepBuilderFactory.get("generateLexiconSitemap")
    					.<Long, SitemapUrl> chunk(50000)
    					.reader(getLexiconTerms())
    					.processor(lexiconProcessor())
    					.writer(sitemapWriter())
    					.build();
    }
    
    @Bean
    public Step generateReferenceSitemap() {
    		return stepBuilderFactory.get("generateReferenceSitemap")
    					.<Long, SitemapUrl> chunk(50000)
    					.reader(getReferenceEntries())
    					.processor(referenceProcessor())
    					.writer(sitemapWriter())
    					.build();
    }
    
    JpaPagingItemReader<SitemapUrl> getCustomUrlsForSitemap() {
        JpaPagingItemReader<SitemapUrl> databaseReader = new JpaPagingItemReader<>();
        String query = "SELECT su FROM SitemapUrl su";
        
        try {
        		databaseReader.setEntityManagerFactory(entityManagerFactory);
            databaseReader.setPageSize(1000);
            databaseReader.setQueryString(query);
			databaseReader.afterPropertiesSet();
		} catch (Exception e) {
			LOG.error("Error retrieving custom urls for the sitemap: ", e);
		}
        
        return databaseReader;
    }
    
    JpaPagingItemReader<Long> getActiveFolioObjects() {
        JpaPagingItemReader<Long> databaseReader = new JpaPagingItemReader<>();
        String query = "SELECT id FROM FolioObject WHERE active = 1";
        
        try {
        		databaseReader.setEntityManagerFactory(entityManagerFactory);
            databaseReader.setPageSize(1000);
            databaseReader.setQueryString(query);
			databaseReader.afterPropertiesSet();
		} catch (Exception e) {
			LOG.error("Error retrieving active Folio objects for the sitemap: ", e);
		}
        
        return databaseReader;
    }
    
    JpaPagingItemReader<Long> getActiveReadingRoomObjects() {
        JpaPagingItemReader<Long> databaseReader = new JpaPagingItemReader<>();
        String query = "SELECT id FROM ReadingRoomObject WHERE active = 1";
        
        try {
        		databaseReader.setEntityManagerFactory(entityManagerFactory);
            databaseReader.setPageSize(1000);
            databaseReader.setQueryString(query);
			databaseReader.afterPropertiesSet();
		} catch (Exception e) {
			LOG.error("Error retrieving active Reading Room objects for the sitemap: ", e);
		}
        
        return databaseReader;
    }
    
    JpaPagingItemReader<Long> getLexiconTerms() {
        JpaPagingItemReader<Long> databaseReader = new JpaPagingItemReader<>();
        String query = "SELECT id FROM LexiconTerm";
        
        try {
        		databaseReader.setEntityManagerFactory(entityManagerFactory);
            databaseReader.setPageSize(1000);
            databaseReader.setQueryString(query);
			databaseReader.afterPropertiesSet();
		} catch (Exception e) {
			LOG.error("Error retrieving Lexicon terms for the sitemap: ", e);
		}
        
        return databaseReader;
    }
    
    JpaPagingItemReader<Long> getReferenceEntries() {
        JpaPagingItemReader<Long> databaseReader = new JpaPagingItemReader<>();
        String query = "SELECT id FROM ReferenceEntry";
        
        try {
        		databaseReader.setEntityManagerFactory(entityManagerFactory);
            databaseReader.setPageSize(1000);
            databaseReader.setQueryString(query);
			databaseReader.afterPropertiesSet();
		} catch (Exception e) {
			LOG.error("Error retrieving Reference entries for the sitemap: ", e);
		}
        
        return databaseReader;
    }
    
    @Bean
    public CustomSitemapUrlProcessor customSitemapUrlProcessor() {
        return new CustomSitemapUrlProcessor(BatchType.CUSTOM);
    }

    @Bean
    public ReadingRoomSitemapUrlProcessor readingRoomProcessor() {
        return new ReadingRoomSitemapUrlProcessor(BatchType.READING_ROOM);
    }

    @Bean
    public FolioSitemapUrlProcessor folioProcessor() {
    		return new FolioSitemapUrlProcessor(BatchType.FOLIO);
    }

    @Bean
    public LexiconSitemapUrlProcessor lexiconProcessor() {
    		return new LexiconSitemapUrlProcessor(BatchType.LEXICON);
    }

    @Bean
    public ReferenceSitemapUrlProcessor referenceProcessor() {
    		return new ReferenceSitemapUrlProcessor(BatchType.REFERENCE);
    }
    
    @Bean
    public SitemapWriter sitemapWriter() {
    		return new SitemapWriter();
    }    
}
