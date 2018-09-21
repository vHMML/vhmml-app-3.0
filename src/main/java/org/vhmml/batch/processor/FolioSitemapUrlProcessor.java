package org.vhmml.batch.processor;

import org.springframework.batch.item.ItemProcessor;
import org.springframework.beans.factory.annotation.Value;
import org.vhmml.batch.SitemapBatch.BatchType;
import org.vhmml.entity.SitemapUrl;

public class FolioSitemapUrlProcessor extends BaseSitemapUrlProcessor implements ItemProcessor<Long, SitemapUrl> {

	@Value("${sitemap.base.folio}")
	private String baseUrl;
	
	@Value("${sitemap.base.folio.priority}")
	private String defaultPriority;
	
	@Value("${sitemap.base.folio.frequency}")
	private String defaultFrequency;
	
	public FolioSitemapUrlProcessor(BatchType batchType) {
		super(batchType.getType());
	}
	
	@Override
    public SitemapUrl process(final Long id) throws Exception {
		final StringBuilder url = new StringBuilder(baseUrl).append(id);
		
		return new SitemapUrl(this.getType(), id, url.toString(), Double.parseDouble(defaultPriority), defaultFrequency);
    }
}
