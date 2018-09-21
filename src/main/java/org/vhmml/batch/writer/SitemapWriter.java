package org.vhmml.batch.writer;

import java.io.File;
import java.util.List;

import javax.servlet.ServletContext;

import org.apache.commons.lang3.EnumUtils;
import org.springframework.batch.item.ItemWriter;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.vhmml.entity.SitemapUrl;

import com.redfin.sitemapgenerator.ChangeFreq;
import com.redfin.sitemapgenerator.WebSitemapGenerator;
import com.redfin.sitemapgenerator.WebSitemapUrl;
import com.redfin.sitemapgenerator.WebSitemapUrl.Options;

public class SitemapWriter implements ItemWriter<SitemapUrl> {
	
	@Autowired
	ServletContext servletContext;
	
	@Value("${sitemap.host}")
	private String sitemapHost;
	
	private static String SITEMAPS_DIR = "/WEB-INF/sitemaps/";
	
	private File getSitemapDirectory() {
		return new File(servletContext.getRealPath(SITEMAPS_DIR));
	}

	@Override
	public void write(List<? extends SitemapUrl> sitemapUrls) throws Exception {
		WebSitemapGenerator wsg;
		int batchPart = 1;
		String fileNamePrefix = new StringBuilder(sitemapUrls.get(0).getBatchType()).append("_").append(Integer.toString(batchPart)).toString();
		String filePath = new StringBuilder(SITEMAPS_DIR).append(fileNamePrefix).append(".xml").toString();
		File sitemapFile = new File(servletContext.getRealPath(filePath));
		
		while (sitemapFile.exists()) {
			fileNamePrefix = new StringBuilder(sitemapUrls.get(0).getBatchType()).append("_").append(Integer.toString(batchPart++)).toString();
			filePath = new StringBuilder(SITEMAPS_DIR).append(fileNamePrefix).append(".xml").toString();
			sitemapFile = new File(servletContext.getRealPath(filePath));
		}
		
		// Generate the sitemap
		wsg = WebSitemapGenerator.builder(sitemapHost, getSitemapDirectory())
		    .fileNamePrefix(fileNamePrefix).build();
		
		// Loop through the list of sitemap urls and assign them the appropriate priorities and frequencies before adding them to our web sitemap generator object.
		for(SitemapUrl currentUrl : sitemapUrls) {
			Options urlOptions = new WebSitemapUrl.Options(currentUrl.getUrl());
			
			if (currentUrl.getPriority() != null) {
				urlOptions.priority(currentUrl.getPriority().doubleValue());
			} else {
				urlOptions.priority(0.5);
			}
			
			if (currentUrl.getFrequency() != null && EnumUtils.isValidEnum(ChangeFreq.class, currentUrl.getFrequency())) {
				urlOptions.changeFreq(ChangeFreq.valueOf(currentUrl.getFrequency()));
			} else {
				urlOptions.changeFreq(ChangeFreq.WEEKLY);
			}
			
			wsg.addUrl(urlOptions.build());
		}
		
		wsg.write();
		
	}

}
