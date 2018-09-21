package org.vhmml.batch.processor;

import org.springframework.batch.item.ItemProcessor;
import org.vhmml.batch.SitemapBatch.BatchType;
import org.vhmml.entity.SitemapUrl;

public class CustomSitemapUrlProcessor extends BaseSitemapUrlProcessor implements ItemProcessor<SitemapUrl, SitemapUrl> {
	
	public CustomSitemapUrlProcessor(BatchType batchType) {
		super(batchType.getType());
	}
	
	@Override
    public SitemapUrl process(final SitemapUrl customSitemapUrl) throws Exception {
		return new SitemapUrl(this.getType(), customSitemapUrl.getId(), customSitemapUrl.getUrl(), customSitemapUrl.getPriority(), customSitemapUrl.getFrequency());
    }
}
