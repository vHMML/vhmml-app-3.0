package org.vhmml.batch.processor;

import org.springframework.batch.item.ItemProcessor;
import org.springframework.beans.factory.annotation.Value;
import org.vhmml.batch.SitemapBatch.BatchType;
import org.vhmml.entity.SitemapUrl;

public class LexiconSitemapUrlProcessor extends BaseSitemapUrlProcessor implements ItemProcessor<Long, SitemapUrl> {
	
	@Value("${sitemap.base.lexicon}")
	private String baseUrl;
	
	@Value("${sitemap.base.lexicon.priority}")
	private String defaultPriority;
	
	@Value("${sitemap.base.lexicon.frequency}")
	private String defaultFrequency;
	
	public LexiconSitemapUrlProcessor(BatchType batchType) {
		super(batchType.getType());
	}
	
	@Override
    public SitemapUrl process(final Long id) throws Exception {
		final StringBuilder url = new StringBuilder(baseUrl).append(id);
		
		return new SitemapUrl(this.getType(), id, url.toString(), Double.parseDouble(defaultPriority), defaultFrequency);
    }
}
