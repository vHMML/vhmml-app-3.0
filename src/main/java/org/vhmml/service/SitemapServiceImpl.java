package org.vhmml.service;

import java.io.File;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletContext;
import javax.transaction.Transactional;

import org.apache.commons.io.FileUtils;
import org.apache.commons.lang3.StringUtils;
import org.apache.log4j.Logger;
import org.springframework.batch.core.Job;
import org.springframework.batch.core.JobParameters;
import org.springframework.batch.core.JobParametersBuilder;
import org.springframework.batch.core.JobParametersInvalidException;
import org.springframework.batch.core.launch.JobLauncher;
import org.springframework.batch.core.repository.JobExecutionAlreadyRunningException;
import org.springframework.batch.core.repository.JobInstanceAlreadyCompleteException;
import org.springframework.batch.core.repository.JobRestartException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Service;
import org.vhmml.entity.SitemapHistory;
import org.vhmml.entity.User;
import org.vhmml.entity.SitemapHistory.SitemapStatus;
import org.vhmml.repository.SitemapRepository;

import com.redfin.sitemapgenerator.SitemapIndexGenerator;

@Service
public class SitemapServiceImpl implements SitemapService {
	
	private static final Logger LOG = Logger.getLogger(SitemapServiceImpl.class);
	
	@Autowired
	ServletContext servletContext;
	
	@Autowired
	JobLauncher jobLauncher;
	
	@Autowired
	@Qualifier("sitemapJob")
	Job sitemapJob;
	
	@Value("${sitemap.host}")
	private String sitemapHost;
	
	@Value("${sitemap.ping}")
	private boolean pingFlag;
	
	@Value("${sitemap.google.ping}")
	private String googlePingUrl;
	
	@Value("${sitemap.bing.ping}")
	private String bingPingUrl;
	
	@Autowired
	SitemapRepository sitemapRepository;

	/**
	 * Method will return a File object that has the path set for where to place the sitemaps.
	 * @return
	 */
	private File getSitemapDirectory() {
		return new File(servletContext.getRealPath("/WEB-INF/sitemaps/"));
	}
	
	/**
	 * Method will kick off the sitemap generation process.
	 */
	public boolean generateSitemap() {
		// Start tracking the sitemap generation process.
		SitemapHistory sitemapHistory = startSitemapTracking();
				
		if (removeCurrentSitemaps(sitemapHistory)) {
			// Update the sitemap record to show that it is generating.
			updateSitemapHistory(sitemapHistory, SitemapStatus.GENERATING);
			
			if (generateSitemaps(sitemapHistory) && generateSitemapIndex(sitemapHistory)) {
				// Update the sitemap history table to denote that the process was completed successfully.
				updateSitemapHistory(sitemapHistory, SitemapStatus.COMPLETED);
				
				// If the ping flag is set to true, then ping Google and Bing.
				if (pingFlag && StringUtils.isNotBlank(googlePingUrl) && StringUtils.isNotBlank(bingPingUrl)) {
					String[] searchEngines = new String[] { googlePingUrl, bingPingUrl };
						
					return pingSearchEngines(searchEngines);
				}
				
				return true;
			}
		}
		
		// Update the sitemap history record to show that it failed.
		updateSitemapHistory(sitemapHistory, SitemapStatus.FAILED);
		
		return false;
	}
	
	/**
	 * Method will ping the search engines passed in about the sitemaps.
	 * @param searchEngines
	 * @return
	 */
	private boolean pingSearchEngines(String[] searchEngines) {
		boolean status = false;
		
		for (int i = 0; i < searchEngines.length; i++) {
			URL url;
			HttpURLConnection connection;
			
			try {
				url = new URL(searchEngines[i]);
				connection = (HttpURLConnection) url.openConnection();
				connection.setRequestMethod("GET");
				int responseStatus = connection.getResponseCode();
				
				// Check response status.  If it's a 200 code, then change the status to true.
				// Or else log an error and set the status to false.
				if (responseStatus == 200) {
					status = true;
				} else {
					LOG.error("Could not ping the following search engine using URL: " + searchEngines[i]);
					status = false;
				}
				
			} catch (IOException e) {
				LOG.error("ERROR pinging search engine. ", e);
			}
			
		}
		
		return status;
	}
	
	private boolean generateSitemapIndex(SitemapHistory sitemapHistory) {
		String vhmmlSitemapsURL = sitemapHost + "/sitemaps/";
		File sitemapIndexFile = new File(servletContext.getRealPath("/WEB-INF/sitemaps/sitemap_index.xml"));
		
		try {
			SitemapIndexGenerator sitemapIndex = new SitemapIndexGenerator(sitemapHost, sitemapIndexFile);
			File sitemapDirectory = getSitemapDirectory();
			String[] extensions = new String[] { "xml" };
			List<File> sitemapFiles = (List<File>)FileUtils.listFiles(sitemapDirectory, extensions, true);
			
			// Loop through the list of sitemap files and add the name of those files to the site index file.
			for (File sitemap : sitemapFiles) {
				sitemapIndex.addUrl(vhmmlSitemapsURL + sitemap.getName());
			}
			
			sitemapIndex.write();
			
			return true;
		} catch (MalformedURLException e) {
			LOG.error("Error trying to create sitemap index file. ", e);
			// Update the sitemap history record to show that it failed.
			updateSitemapHistory(sitemapHistory, SitemapStatus.FAILED);
		}
		
		return false;
	}
	
	/**
	 * Remove the current sitemaps that are in the directory.
	 */
	private boolean removeCurrentSitemaps(SitemapHistory sitemapHistory) {
		try {
			
			// If the sitemap directory exists, then clean it first, or else create the
			// directory if it doesn't exist.
			if (getSitemapDirectory().exists()) {
				FileUtils.cleanDirectory(getSitemapDirectory());
			} else {
				getSitemapDirectory().mkdir();
			}
			
			return true;
		} catch (IOException e) {
			LOG.error("Error trying to clean directory: " + getSitemapDirectory().getPath(), e);
			// Update the sitemap history record to show that it failed.
			updateSitemapHistory(sitemapHistory, SitemapStatus.FAILED);
		}
		
		return false;
	}
	
	/**
	 * Method will generate the site maps using the Spring Batch job that will read, process, and write the sitemap XML files.
	 */
	private boolean generateSitemaps(SitemapHistory sitemapHistory) {
		JobParameters jobParameters = new JobParametersBuilder().addLong("time", System.currentTimeMillis())
				.toJobParameters();
		try {
			// Run the batch job to generate the sitemaps.
			jobLauncher.run(sitemapJob, jobParameters);
			
			return true;
		} catch (JobExecutionAlreadyRunningException e) {
			LOG.error("ERROR, JobExecutionAlreadyRunningException: ", e);
		} catch (JobRestartException e) {
			LOG.error("ERROR, JobRestartException: ", e);
		} catch (JobInstanceAlreadyCompleteException e) {
			LOG.error("ERROR, JobInstanceAlreadyCompleteException: ", e);
		} catch (JobParametersInvalidException e) {
			LOG.error("ERROR, JobParametersInvalidException: ", e);
		} catch (Exception e) {
			LOG.error("ERROR generating sitemaps. ", e);
		}
		
		return false;
	}
	
	/**
	 * This method will update the sitemap history table for the specific sitemap record.
	 * @param sitemapHistory
	 * @param status
	 */
	@Transactional
	private void updateSitemapHistory(SitemapHistory sitemapHistory, SitemapStatus status) {
		sitemapRepository.updateSitemapHistory(status.getStatus(), sitemapHistory.getId());
	}
	
	/**
	 * This method will insert a new sitemap record into the sitemap history table.
	 * @return
	 */
	@Transactional
	private SitemapHistory startSitemapTracking() {
		User user = (User)SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		String currentUser = user.getUsername();
		
		// Insert a record into the sitemap history table to start tracking the status of the sitemap generation.
		// Then return the saved entity to our class variable to be used.
		return sitemapRepository.save(new SitemapHistory(new Date(), currentUser, SitemapStatus.STARTED));
	}
	
	/**
	 * This method will retrieve the latest successfully complete sitemap generation record and return the formatted date.
	 */
	@Override
	public String retrieveLatestCompletedSitemapGeneratedDateAsString() {
		SitemapHistory latestSuccessfulSitemap = sitemapRepository.findLatestSuccessfulSitemapGeneration();
		
		if (latestSuccessfulSitemap == null) {
			return null;
		}
		
		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
        return dateFormat.format(latestSuccessfulSitemap.getLastGenerated());
	}
}
