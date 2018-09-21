package org.vhmml.batch.processor;

import org.springframework.batch.item.ItemProcessor;
import org.springframework.beans.factory.annotation.Value;
import org.vhmml.batch.SitemapBatch.BatchType;
import org.vhmml.entity.SitemapUrl;

public class ReadingRoomSitemapUrlProcessor extends BaseSitemapUrlProcessor implements ItemProcessor<Long, SitemapUrl> {
	
	@Value("${sitemap.base.readingroom}")
	private String baseUrl;
	
	@Value("${sitemap.base.readingroom.priority}")
	private String defaultPriority;
	
	@Value("${sitemap.base.readingroom.frequency}")
	private String defaultFrequency;
	
	public ReadingRoomSitemapUrlProcessor(BatchType batchType) {
		super(batchType.getType());
	}
	
	@Override
    public SitemapUrl process(final Long id) throws Exception {
		final StringBuilder url = new StringBuilder(baseUrl).append(id);
		
		return new SitemapUrl(this.getType(), id, url.toString(), Double.parseDouble(defaultPriority), defaultFrequency);
    }

}
