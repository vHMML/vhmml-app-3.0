package org.vhmml.service;

public interface SitemapService {
	public boolean generateSitemap();
	public String retrieveLatestCompletedSitemapGeneratedDateAsString();
}
