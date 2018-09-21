package org.vhmml.service;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.FileWriter;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.nio.file.attribute.BasicFileAttributeView;
import java.nio.file.attribute.BasicFileAttributes;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import java.util.Map;
import java.util.zip.ZipEntry;
import java.util.zip.ZipOutputStream;

import javax.servlet.ServletContext;
import javax.transaction.Transactional;

import org.apache.commons.collections.CollectionUtils;
import org.apache.commons.io.FileUtils;
import org.apache.log4j.Logger;
import org.springframework.batch.core.BatchStatus;
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
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Service;
import org.vhmml.batch.writer.DataPortalBaseFileWriter.FileType;
import org.vhmml.dto.DataPortalDatasetFile;
import org.vhmml.dto.DataPortalListingSchemaDTO;
import org.vhmml.dto.ReadingRoomSearchHit;
import org.vhmml.dto.ReadingRoomSearchResult;
import org.vhmml.entity.DataPortalHistory;
import org.vhmml.entity.DataPortalHistory.Status;
import org.vhmml.entity.readingroom.AlternateSurrogate;
import org.vhmml.entity.readingroom.ArchivalContent;
import org.vhmml.entity.readingroom.ArchivalContributor;
import org.vhmml.entity.readingroom.ArchivalData;
import org.vhmml.entity.readingroom.ArchivalObject;
import org.vhmml.entity.readingroom.BibliographyUrl;
import org.vhmml.entity.readingroom.City;
import org.vhmml.entity.readingroom.Content;
import org.vhmml.entity.readingroom.ContentContributor;
import org.vhmml.entity.readingroom.Contributor;
import org.vhmml.entity.readingroom.Country;
import org.vhmml.entity.readingroom.Extent;
import org.vhmml.entity.readingroom.FacsimileUrl;
import org.vhmml.entity.readingroom.Feature;
import org.vhmml.entity.readingroom.Format;
import org.vhmml.entity.readingroom.Genre;
import org.vhmml.entity.readingroom.Institution;
import org.vhmml.entity.readingroom.Language;
import org.vhmml.entity.readingroom.ReadingRoomObject;
import org.vhmml.entity.readingroom.ReadingRoomObjectContributor;
import org.vhmml.entity.readingroom.ReadingRoomObjectOverview;
import org.vhmml.entity.readingroom.ReadingRoomObjectPart;
import org.vhmml.entity.readingroom.ReadingRoomPartContributor;
import org.vhmml.entity.readingroom.Repository;
import org.vhmml.entity.readingroom.Subject;
import org.vhmml.entity.readingroom.UniformTitle;
import org.vhmml.repository.DataPortalRepository;
import org.vhmml.repository.readingroom.ReadingRoomObjectRepository;
import org.vhmml.service.ApplicationConfigService.Property;
import org.vhmml.util.PermalinkUtil;

import com.fasterxml.jackson.databind.DeserializationFeature;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.google.common.collect.Lists;
import com.google.gson.Gson;
import com.google.gson.JsonArray;
import com.google.gson.JsonObject;

@Service
public class DataPortalServiceImpl implements DataPortalService {

	private static final Logger LOG = Logger.getLogger(DataPortalServiceImpl.class);
	
	private static final ObjectMapper objectMapper = new ObjectMapper();
	public static final String RIGHTS_LICENSE_URL = "https://www.vhmml.org/terms";

	@Autowired
	ServletContext servletContext;
	
	@Autowired
	private ApplicationConfigService appConfigService;
	
	@Autowired
	private EmailService emailService;

	@Autowired
	private ReadingRoomObjectRepository readingRoomObjectRepository;
	
	@Autowired
	private ReadingRoomService readingRoomService;

	@Autowired
	JobLauncher jobLauncher;

	@Autowired
	@Qualifier("datasetJob")
	Job datasetJob;
	
	@Autowired
	DataPortalRepository dataPortalRepository;
	
	@Value("${data.portal.temp.dir}")
	private String TEMP_DATASET_DIR;
	
	@Value("${data.portal.public.dir}")
	private String PUBLIC_DATASET_DIR;
	
	@Value("${data.portal.dataset.download.url}")
	private String PUBLIC_DATASET_DOWNLOAD_URL;
	
	private static final String LISTING_DATA_CSV_HEADERS = "Id,Permalink,Country,City,Repository,Shelfmark,HMML Project Number";
	
	static {
		objectMapper.configure(DeserializationFeature.FAIL_ON_UNKNOWN_PROPERTIES, false);		
	}
	
	/**
	 * Method will run per the cron schedule expression that is located in the environment config properties file.
	 */
	@Scheduled(cron = "${data.portal.job.schedule}")
	public void runScheduledDatasetJob() {
		LOG.info("Starting scheduled job for dataset file generation...");
		executeDatasetJob();
	}
	
	@Override
	public DataPortalDatasetFile getDatasetFileInformation(FileType currentFile) {
		String publicFilePath = new StringBuilder(PUBLIC_DATASET_DOWNLOAD_URL).append(currentFile.getZipName()).toString();
		String serverFilePath = servletContext.getRealPath(new StringBuilder(PUBLIC_DATASET_DIR).append(currentFile.getZipName()).toString());
		File datasetFile = new File(serverFilePath);
		Path path = Paths.get(datasetFile.getAbsolutePath());
		BasicFileAttributes fileAttributes;
		String createdDate = "";
		
		try {
			BasicFileAttributeView view = Files.getFileAttributeView(path, BasicFileAttributeView.class);
			
			fileAttributes = view.readAttributes();
			// Handle the file created date.
			long creationTimeInMillis = fileAttributes.creationTime().toMillis();
			Calendar calendar = Calendar.getInstance();
			calendar.setTimeInMillis(creationTimeInMillis);
			SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
			createdDate = dateFormat.format(calendar.getTime());
		} catch (IOException e) {
			LOG.error("There was an error trying to retrieve file attributes for a dataset file. ", e);
			return new DataPortalDatasetFile(0, null, null);
		}
		
		return new DataPortalDatasetFile(FileUtils.sizeOf(datasetFile), publicFilePath, createdDate);
	}
	
	/**
	 * Method will execute the dataset job.
	 */
	@Override
	public boolean executeDatasetJob() {
		JobParameters jobParameters = new JobParametersBuilder().addLong("time", System.currentTimeMillis())
				.toJobParameters();

		DataPortalHistory dataPortalHistoryTracker = startDataPortalJobTracking();
		boolean fileStatus = false;
		boolean error = false;
		long duration = 0;
		
		try {
			// Clear out the temp directory where we store the generated files.
			FileUtils.cleanDirectory(new File(servletContext.getRealPath(TEMP_DATASET_DIR)));
			
			createNewTempFile(FileType.FULL_DATA_JSON);
			createNewTempFile(FileType.LISTING_DATA_JSON);
			createNewTempFile(FileType.LISTING_DATA_CSV);
			
			// Run the batch job to generate the full data json.
			long startTime = System.nanoTime();
			
			BatchStatus status = jobLauncher.run(datasetJob, jobParameters).getStatus();
			
			long endTime = System.nanoTime();
			
			LOG.info("BATCH STATUS: " + status.getBatchStatus());
			
			if (status.equals(BatchStatus.COMPLETED)) {
				duration = (((endTime - startTime) / 1000000) / 1000);
				
				LOG.info("Dataset job took " + duration + " seconds to complete.");
				LOG.info("Compressing and moving files to the public directory...");
				
				// After job completion, compress the files, then move the files to the public directory.
				FileType[] fileTypes = FileType.values();
				
				for (int i = 0; i < fileTypes.length; i++) {
					fileStatus = compressDatasetFiles(fileTypes[i]);
				}
			}
			
		} catch (JobExecutionAlreadyRunningException e) {
			LOG.error("ERROR, JobExecutionAlreadyRunningException: ", e);
			sendErrorEmailForFailedDatasetJob(e.getMessage());
			error = true;
		} catch (JobRestartException e) {
			LOG.error("ERROR, JobRestartException: ", e);
			sendErrorEmailForFailedDatasetJob(e.getMessage());
			error = true;
		} catch (JobInstanceAlreadyCompleteException e) {
			LOG.error("ERROR, JobInstanceAlreadyCompleteException: ", e);
			sendErrorEmailForFailedDatasetJob(e.getMessage());
			error = true;
		} catch (JobParametersInvalidException e) {
			LOG.error("ERROR, JobParametersInvalidException: ", e);
			sendErrorEmailForFailedDatasetJob(e.getMessage());
			error = true;
		} catch (Exception e) {
			LOG.error("ERROR generating dataset files: ", e);
			sendErrorEmailForFailedDatasetJob(e.getMessage());
			error = true;
		}
		
		// Send email if job failed without error
		if (!fileStatus && !error) {
			String failedJobNoErrorMessage = new StringBuilder("The job failed to complete without error. ")
					.append("This may mean that there was an attempt to run the job while a previous instance was still running. ")
					.append("Please check the database and logs to ensure that there are no current active jobs, then try again.").toString();
			
			sendErrorEmailForFailedDatasetJob(failedJobNoErrorMessage);
		}
		
		// Update database with a final status.
		Status finalStatus = fileStatus ? Status.COMPLETED : Status.FAILED;
		updateDataPortalHistory(dataPortalHistoryTracker, finalStatus, new Date(), duration);
		
		return fileStatus;
	}
	
	private void createNewTempFile(FileType fileType) {
		String filePath = new StringBuilder(TEMP_DATASET_DIR).append(fileType.getName()).toString();
		File file = new File(servletContext.getRealPath(filePath));

		// We want to write to a temporary file first, then remove the old file and replace it with the new file.
		try (FileWriter writer = new FileWriter(file.getAbsoluteFile(), true)) {
			if (fileType.equals(FileType.FULL_DATA_JSON) || fileType.equals(FileType.LISTING_DATA_JSON)) {
				writer.append("[");
			} else if (fileType.equals(FileType.LISTING_DATA_CSV)) {
				writer.append(LISTING_DATA_CSV_HEADERS).append(System.lineSeparator());
			}
		} catch (Exception e) {
			LOG.error("Error writing out data portal temp files. ", e);
		}
	}
	
	/**
	 * Method will send out emails if an error occurs when generating the dataset files.
	 * @param errorMessage
	 */
	private void sendErrorEmailForFailedDatasetJob(String errorMessage) {
		String subject = "vHMML - Error generating dataset files for the Data Portal. Please view email for further details.";
		String message = new StringBuilder("There was an error trying to generate the dataset files.  Please see the error message below and also check the logs:")
				.append(System.lineSeparator()).append(System.lineSeparator())
				.append(errorMessage).toString();
		List<String> addressList = appConfigService.getValues(ApplicationConfigService.Property.SYSTEMS_LIB_EMAIL_LIST);
		emailService.sendMessages(addressList, subject, message);
	}
	
	/**
	 * Method will compress the dataset files and move them to a public directory for downloading.
	 * @param currentFile
	 * @return
	 */
	private boolean compressDatasetFiles(FileType currentFile) {
		
		try {
			final byte[] bytes = new byte[1024];
			int length;
			
			// Source
			String sourceFilePath = servletContext.getRealPath(new StringBuilder(TEMP_DATASET_DIR).append(currentFile.getName()).toString());
			File fileToZip = new File(sourceFilePath);
			
			try (FileWriter writer = new FileWriter(fileToZip.getAbsoluteFile(), true)) {
				
				if (currentFile.equals(FileType.FULL_DATA_JSON) || currentFile.equals(FileType.LISTING_DATA_JSON)) {
					writer.append("{}]");
				}
				
			} catch (Exception e) {
				LOG.error("Error writing to the JSON file for full data dataset.", e);
			}
			
			FileInputStream inputStream = new FileInputStream(fileToZip);
			
			// Destination
			String destinationFilePath = servletContext.getRealPath(new StringBuilder(PUBLIC_DATASET_DIR).append(currentFile.getZipName()).toString());
			File zipFile = new File(destinationFilePath);
			FileOutputStream outputStream = new FileOutputStream(zipFile);
			ZipOutputStream zipOutputStream = new ZipOutputStream(outputStream);
			
			// Zippity zip zip!
			ZipEntry zipEntry = new ZipEntry(fileToZip.getName());
			zipOutputStream.putNextEntry(zipEntry);
			
			while ((length = inputStream.read(bytes)) >= 0) {
				zipOutputStream.write(bytes, 0, length);
			}
			
			zipOutputStream.close();
			inputStream.close();
			outputStream.close();
			
			return true;
			
		} catch (FileNotFoundException e) {
			LOG.error("Error compressing dataset files.  Files were not found. ", e);
		} catch (Exception e) {
			LOG.error("Error compressing dataset files. ", e);
		}
		
		return false;
	}
	
	/**
	 * Method will create the listing data JSON string.
	 */
	@Override
	public String createListingDataJson(Map<String, String> searchParameters) throws IOException {
		Gson gson = new Gson();
		List<DataPortalListingSchemaDTO> listingData = new ArrayList<>();
		int maxListingData = Integer.parseInt(appConfigService.getValue(ApplicationConfigService.Property.DATA_PORTAL_MAX_DATA_LISTING));
		Pageable pagingData = new PageRequest(0, maxListingData);
		ReadingRoomSearchResult result = readingRoomService.search(searchParameters, pagingData, true, false);
		
		listingData = createListingData(result);
		
		return gson.toJson(listingData);
	}
	
	/**
	 * Method will create the full data JSON string using the search parameters.
	 */
	@Override
	public String createFullDataJsonUsingSearchParameters(Map<String, String> searchParameters) throws IOException {
		int maxFullData = Integer.parseInt(appConfigService.getValue(ApplicationConfigService.Property.DATA_PORTAL_MAX_DATA_FULL));
		Pageable pagingData = new PageRequest(0, maxFullData);
		ReadingRoomSearchResult result = readingRoomService.search(searchParameters, pagingData, true, false);
		List<Long> ids = getIdsFromResult(result);
		List<ReadingRoomObject> readingRoomObjectList = Lists.newArrayList(readingRoomObjectRepository.findByIdIn(ids));
		
		return createFullDataJsonUsingList(readingRoomObjectList);
	}
	
	/**
	 * Method will create the full data JSON string using a list of Reading Room objects.
	 * @param readingRoomObjectList
	 * @return
	 */
	@Override
	public String createFullDataJsonUsingList(List<ReadingRoomObject> readingRoomObjectList) {
		JsonArray fullDataJsonArray = new JsonArray();
		Gson gson = new Gson();
		
		for (ReadingRoomObject readingRoomObject : readingRoomObjectList) {
			fullDataJsonArray.add(createSingleFullDataJsonForObject(readingRoomObject));
		}
		
		return gson.toJson(fullDataJsonArray);
	}
	
	@Override
	public String createDataExportForExportType(Long objectId, String exportType) {
		Gson gson = new Gson();
		ReadingRoomObject readingRoomObject = readingRoomObjectRepository.findOne(objectId);
		JsonObject fullDataObject = createSingleFullDataJsonForObject(readingRoomObject);
		return gson.toJson(fullDataObject);
	}
	
	/**
	 * Method will return a fully-built JSON object per the full data schema using GSON's JsonObject.
	 * @param readingRoomObject
	 * @return
	 */
	@Override
	public JsonObject createSingleFullDataJsonForObject(ReadingRoomObject readingRoomObject) {
		JsonObject fullDataObject = new JsonObject();
		
		fullDataObject.addProperty("id", readingRoomObject.getId());
		fullDataObject.addProperty("PURL", PermalinkUtil.getPermalinkForTypeAndId(appConfigService.getValue(Property.PERMALINK_URL), PermalinkUtil.Type.READINGROOM, readingRoomObject.getId()));
		fullDataObject.addProperty("rights", RIGHTS_LICENSE_URL);
		fullDataObject.addProperty("summary", readingRoomObject.getSummary());
		fullDataObject.addProperty("processedBy", readingRoomObject.getProcessedBy());
		fullDataObject.addProperty("shelfMark", readingRoomObject.getShelfMark());
		fullDataObject.addProperty("commonName", readingRoomObject.getCommonName());
		fullDataObject.addProperty("conditionNotes", readingRoomObject.getConditionNotes());
		fullDataObject.addProperty("collation", readingRoomObject.getCollation());
		fullDataObject.addProperty("binding", readingRoomObject.getBinding());
		fullDataObject.addProperty("bindingDimensionsImported", readingRoomObject.getBindingDimensionsImported());
		fullDataObject.addProperty("bindingWidth", readingRoomObject.getBindingWidth());
		fullDataObject.addProperty("bindingHeight", readingRoomObject.getBindingHeight());
		fullDataObject.addProperty("bindingDepth", readingRoomObject.getBindingDepth());
		fullDataObject.addProperty("provenance", readingRoomObject.getProvenance());
		fullDataObject.addProperty("bibliography", readingRoomObject.getBibliography());
		fullDataObject.addProperty("notes", readingRoomObject.getNotes());
		fullDataObject.addProperty("colophon", readingRoomObject.getColophon());
		fullDataObject.addProperty("medium", readingRoomObject.getMedium());
		fullDataObject.addProperty("foliation", readingRoomObject.getFoliation());
		fullDataObject.addProperty("hmmlProjectNumber", readingRoomObject.getHmmlProjectNumber());
		fullDataObject.addProperty("reproductionNotes", readingRoomObject.getReproductionNotes());
		fullDataObject.addProperty("acknowledgments", readingRoomObject.getAcknowledgments());
		fullDataObject.addProperty("objectType", readingRoomObject.getObjectType().getName());
		fullDataObject.addProperty("accessRestriction", (readingRoomObject.getAccessRestriction() != null ? readingRoomObject.getAccessRestriction().getDisplayName() : null));
		fullDataObject.addProperty("viewableOnline", readingRoomObject.isViewableOnline());
		fullDataObject.addProperty("downloadOption", readingRoomObject.getDownloadOption());
		
		fullDataObject.add("externalFacsimileUrls", createExternalFacsimileUrlsObjectArray(readingRoomObject.getExternalFacsimileUrls()));
		
		fullDataObject.addProperty("support", readingRoomObject.getSupport());
		
		fullDataObject.add("country", createJsonObject(readingRoomObject.getCountry()));
		fullDataObject.add("city", createJsonObject(readingRoomObject.getCity()));
		fullDataObject.add("holdingInstitution", createJsonObject(readingRoomObject.getHoldingInstitution()));
		fullDataObject.add("repository", createJsonObject(readingRoomObject.getRepository()));
		
		fullDataObject.addProperty("collection", readingRoomObject.getCollection());
		fullDataObject.addProperty("captureDateDisplay", readingRoomObject.getCaptureDateDisplay());
		
		fullDataObject.add("surrogateFormat", createJsonObject(readingRoomObject.getSurrogateFormat()));
		fullDataObject.add("alternateSurrogates", createAlternateSurrogatesObjectArray(readingRoomObject.getAlternateSurrogates()));
		fullDataObject.add("externalBibliographyUrls", createExternalBibliographyUrlsObjectArray(readingRoomObject.getExternalBibliographyUrls()));
		fullDataObject.add("extents", createExtentsObjectArray(readingRoomObject.getExtents()));
		fullDataObject.add("genres", createGenresObjectArray(readingRoomObject.getGenres()));
		fullDataObject.add("subjects", createSubjectsObjectArray(readingRoomObject.getSubjects()));
		fullDataObject.add("features", createFeaturesObjectArray(readingRoomObject.getFeatures()));
		
		fullDataObject.addProperty("featuresImported", readingRoomObject.getFeaturesImported());
		fullDataObject.addProperty("currentStatus", (readingRoomObject.getCurrentStatus() != null ? readingRoomObject.getCurrentStatus().getDisplayName() : null));
		
		fullDataObject.add("objectContributors", createObjectContributorsObjectArray(readingRoomObject.getContributors()));
		fullDataObject.add("parts", createPartsObject(readingRoomObject.getParts()));
		
		if (readingRoomObject.getObjectType().equals(ReadingRoomObject.Type.ARCHIVAL_OBJECT)) {
			fullDataObject = createArchivalObjectSchemaPart((ArchivalObject)readingRoomObject, fullDataObject);
		}
		
		return fullDataObject;
	}
	
	/**
	 * Method will create the archive object parts of the full data schema.
	 * @param archivalObject
	 * @param fullDataObject
	 * @return
	 */
	private JsonObject createArchivalObjectSchemaPart(ArchivalObject archivalObject, JsonObject fullDataObject) {
		ArchivalData archivalData = archivalObject.getArchivalData();
		Gson gson = new Gson();
		
		fullDataObject.addProperty("archivalid", archivalData.getId());
		fullDataObject.addProperty("collectionFond", archivalData.getCollectionFond());
		fullDataObject.addProperty("series", archivalData.getSeries());
		fullDataObject.addProperty("subSeries", archivalData.getSubSeries());
		fullDataObject.addProperty("subSubSeries", archivalData.getSubSubSeries());
		fullDataObject.addProperty("containerType", archivalData.getContainerType());
		fullDataObject.addProperty("containerCount", archivalData.getContainerCount());
		fullDataObject.addProperty("title", archivalData.getTitle());
		fullDataObject.addProperty("creator", archivalData.getCreator());
		fullDataObject.addProperty("scopeContent", archivalData.getScopeContent());
		fullDataObject.addProperty("historicalNote", archivalData.getHistoricalNote());
		fullDataObject.addProperty("custodialHistory", archivalData.getCustodialHistory());
		fullDataObject.addProperty("support", archivalData.getSupport());
		fullDataObject.addProperty("datePreciseYear", archivalData.getDatePreciseYear());
		fullDataObject.addProperty("datePreciseMonth", archivalData.getDatePreciseMonth());
		fullDataObject.addProperty("datePreciseDay", archivalData.getDatePreciseDay());
		fullDataObject.addProperty("beginDate", archivalData.getBeginDate());
		fullDataObject.addProperty("endDate", archivalData.getEndDate());
		fullDataObject.addProperty("nativeDate", archivalData.getNativeDate());
		fullDataObject.addProperty("decoration", archivalData.getDecoration());
		fullDataObject.addProperty("centuryImported", archivalData.getCenturyImported());
		
		fullDataObject.add("centuries", gson.toJsonTree(archivalData.getCenturies()).getAsJsonArray());
		
		fullDataObject.addProperty("centuryUncertain", archivalData.isCenturyUncertain());
		
		fullDataObject.add("languages", createLanguagesObjectArray(archivalData.getLanguages()));
		
		fullDataObject.addProperty("writingSystem", archivalData.getWritingSystem());
		
		fullDataObject.add("associatedNames", createAssociatedNamesObject(archivalData.getAssociatedNames()));
		
		fullDataObject.add("contents", createArchivalContentsObject(archivalData.getContent()));
		
		return fullDataObject;
	}
	
	/**
	 * Method will create a archival contents JSON object array using the list of archival contents objects.
	 * @param archivalContents
	 * @return
	 */
	private JsonArray createArchivalContentsObject(List<ArchivalContent> archivalContents) {
		JsonArray archivalContentsObjectArray = new JsonArray();
		Gson gson = new Gson();
		
		if (CollectionUtils.isNotEmpty(archivalContents)) {
			
			for (ArchivalContent archivalContent : archivalContents) {
				JsonObject archivalContentObject = new JsonObject();
				archivalContentObject.addProperty("id", archivalContent.getId());
				
				archivalContentObject.add("languages", createLanguagesObjectArray(archivalContent.getLanguages()));
				
				archivalContentObject.add("contentContributors", createContentContributorsObjectArray(archivalContent.getContentContributors()));
				
				archivalContentObject.addProperty("type", (archivalContent.getType() != null ? archivalContent.getType().getName() : null));
				archivalContentObject.addProperty("folder", archivalContent.getFolder());
				archivalContentObject.addProperty("item", archivalContent.getItem());
				archivalContentObject.addProperty("extent", archivalContent.getExtent());
				archivalContentObject.addProperty("description", archivalContent.getDescription());
				archivalContentObject.addProperty("datePreciseYear", archivalContent.getDatePreciseYear());
				archivalContentObject.addProperty("datePreciseMonth", archivalContent.getDatePreciseMonth());
				archivalContentObject.addProperty("datePreciseDay", archivalContent.getDatePreciseDay());
				archivalContentObject.addProperty("nativeDate", archivalContent.getNativeDate());
				archivalContentObject.addProperty("beginDate", archivalContent.getBeginDate());
				archivalContentObject.addProperty("endDate", archivalContent.getEndDate());
				archivalContentObject.addProperty("support", archivalContent.getSupport());
				archivalContentObject.addProperty("supportDimensionsWidth", archivalContent.getSupportDimensionsWidth());
				archivalContentObject.addProperty("supportDimensionsHeight", archivalContent.getSupportDimensionsHeight());
				archivalContentObject.addProperty("medium", archivalContent.getMedium());
				archivalContentObject.addProperty("pageLayout", archivalContent.getPageLayout());
				
				archivalContentObject.add("centuries", gson.toJsonTree(archivalContent.getCenturies()).getAsJsonArray());
				
				archivalContentObject.addProperty("centuryUncertain", archivalContent.isCenturyUncertain());
				archivalContentObject.addProperty("spanOfFolios", archivalContent.getSpanOfFolios());
				archivalContentObject.addProperty("notes", archivalContent.getNotes());
				archivalContentObject.addProperty("bibliography", archivalContent.getBibliography());
				archivalContentObject.addProperty("script", archivalContent.getScript());
				archivalContentObject.addProperty("writingSystem", archivalContent.getWritingSystem());
				
				archivalContentsObjectArray.add(archivalContentObject);
			}
		}
		
		return archivalContentsObjectArray;
	}
	
	/**
	 * Method will create JsonArray for the associated names property for the archival object part of the full data schema.
	 * @param associatedNames
	 * @return
	 */
	private JsonArray createAssociatedNamesObject(List<ArchivalContributor> associatedNames) {
		JsonArray associatedNamesObjectArray = new JsonArray();
		
		if (CollectionUtils.isNotEmpty(associatedNames)) {
			for (ArchivalContributor associatedName : associatedNames) {
				JsonObject associatedNameObject = new JsonObject();
				associatedNameObject.addProperty("id", associatedName.getId());
				associatedNameObject.addProperty("type", (associatedName.getType() != null ? associatedName.getType().getDisplayName() : null));
				associatedNameObject.addProperty("nameNs", associatedName.getNameNs());
				
				JsonObject contributorObject = new JsonObject();
				Contributor contributor = associatedName.getContributor();
				
				if (contributorObject != null) {
					contributorObject.addProperty("id", contributor.getId());
					contributorObject.addProperty("name", contributor.getName());
					contributorObject.addProperty("authorityUriLC", contributor.getAuthorityUriLC());
					contributorObject.addProperty("authorityUriVIAF", contributor.getAuthorityUriVIAF());
					contributorObject.addProperty("displayName", contributor.getPopulatedName());
				}
				
				associatedNameObject.add("contributor", contributorObject);
				
				associatedNamesObjectArray.add(associatedNameObject);
			}
		}
		
		return associatedNamesObjectArray;
	}
	
	/**
	 * Method will create the JsonArray needed for the parts property.
	 * @param readingRoomObject
	 * @return
	 */
	private JsonArray createPartsObject(List<ReadingRoomObjectPart> parts) {
		JsonArray partsObjectArray = new JsonArray();
		Gson gson = new Gson();
		
		if (CollectionUtils.isNotEmpty(parts)) {
		
			for (ReadingRoomObjectPart part : parts) {
				JsonObject partObject = new JsonObject();
				partObject.addProperty("id", part.getId());
				partObject.addProperty("type", (part.getType() != null ? part.getType().getName() : null));
				partObject.addProperty("partNumber", part.getPartNumber());
				partObject.addProperty("partLocation", part.getPartLocation());
				partObject.addProperty("supportDimensionsImported", part.getSupportDimensionsImported());
				partObject.addProperty("supportImported", part.getSupportImported());
				partObject.addProperty("supportDimensionsWidth", part.getSupportDimensionsWidth());
				partObject.addProperty("supportDimensionsHeight", part.getSupportDimensionsHeight());
				
				partObject.add("partContributors", createPartContributorsObjectArray(part.getContributors()));
				
				partObject.add("centuries", gson.toJsonTree(part.getCenturies()).getAsJsonArray());
				
				partObject.addProperty("centuryUncertain", part.isCenturyUncertain());
				partObject.addProperty("cardinalOfOrigin", part.getCardinalOfOrigin());
				partObject.addProperty("regionOfOrigin", part.getRegionOfOrigin());
				partObject.addProperty("cityOfOrigin", part.getCityOfOrigin());
				partObject.addProperty("cityOfOriginUncertain", part.isCityOfOriginUncertain());
				partObject.addProperty("centuryImported", part.getCenturyImported());
				partObject.addProperty("ymdDateImported", part.getYmdDateImported());
				partObject.addProperty("datePreciseYear", part.getDatePreciseYear());
				partObject.addProperty("datePreciseMonth", part.getDatePreciseMonth());
				partObject.addProperty("datePreciseDay", part.getDatePreciseDay());
				partObject.addProperty("layout", part.getLayout());
				partObject.addProperty("script", part.getScript());
				partObject.addProperty("scriptImported", part.getScriptImported());
				partObject.addProperty("scribe", part.getScribe());
				partObject.addProperty("support", part.getSupport());
				partObject.addProperty("artist", part.getArtist());
				partObject.addProperty("partNotes", part.getPartNotes());
				partObject.addProperty("beginDate", part.getBeginDate());
				partObject.addProperty("endDate", part.getEndDate());
				partObject.addProperty("writingSystemImported", part.getWritingSpaceImported());
				partObject.addProperty("writingSystem", part.getWritingSystem());
				partObject.addProperty("nativeDatePrecise", part.getNativeDatePrecise());
				partObject.addProperty("catchwords", part.isCatchwords());
				partObject.addProperty("decoration", part.getDecoration());
				partObject.addProperty("colophonPart", part.getColophonPart());
				partObject.addProperty("countryOfOrigin", part.getCountryOfOrigin());
				partObject.addProperty("countryOfOriginUncertain", part.isCountryOfOriginUncertain());
				partObject.addProperty("writingSpaceImported", part.getWritingSpaceImported());
				partObject.addProperty("writingSpaceWidth", part.getWritingSpaceWidth());
				partObject.addProperty("writingSpaceHeight", part.getWritingSpaceHeight());
				partObject.addProperty("signatures", part.isSignatures());
				partObject.addProperty("font", part.getFont());
				partObject.addProperty("editionStatement", part.getEditionStatement());
				partObject.addProperty("printingStatement", part.getPrintingStatement());
				partObject.addProperty("formatStatement", part.getFormatStatement());
				partObject.addProperty("foliationImported", part.getFoliationImported());
				partObject.addProperty("medium", part.getMedium());
				
				partObject.add("contents", createContentsObjectArray(part.getContents()));
				
				
				partsObjectArray.add(partObject);
			}
		}
		
		return partsObjectArray;
	}
	
	/**
	 * Method will create the JsonArray needed for the part contributors property
	 * @param contributors
	 * @return
	 */
	private JsonArray createPartContributorsObjectArray(List<ReadingRoomPartContributor> contributors) {
		JsonArray partContributors = new JsonArray();
		
		if (CollectionUtils.isNotEmpty(contributors)) {
			for (ReadingRoomPartContributor partContributor : contributors) {
				JsonObject partContributorObject = new JsonObject();
				partContributorObject.addProperty("id", partContributor.getId());
				partContributorObject.addProperty("type", (partContributor.getType() != null ? partContributor.getType().getDisplayName() : null));
				partContributorObject.addProperty("nameNs", partContributor.getNameNs());
				
				JsonObject contributorObject = new JsonObject();
				Contributor contributor = partContributor.getContributor();
				
				if (contributor != null) {
					contributorObject.addProperty("id", contributor.getId());
					contributorObject.addProperty("name", contributor.getName());
					contributorObject.addProperty("authorityUriLC", contributor.getAuthorityUriLC());
					contributorObject.addProperty("authorityUriVIAF", contributor.getAuthorityUriVIAF());
					contributorObject.addProperty("displayName", contributor.getPopulatedName());
				}
				
				partContributorObject.add("contributor", contributorObject);
				
				partContributors.add(partContributorObject);
			}
		}
		
		return partContributors;
	}
	
	/**
	 * Method will create the JsonArray needed for the contents property
	 * @param contents
	 * @return
	 */
	private JsonArray createContentsObjectArray(List<Content> contents) {
		JsonArray contentsObjectArray = new JsonArray();
		Gson gson = new Gson();
		
		if (CollectionUtils.isNotEmpty(contents)) {
			
			for (Content content : contents) {
				JsonObject contentObject = new JsonObject();
				contentObject.addProperty("id", content.getId());
				contentObject.addProperty("itemNumber", content.getItemNumber());
				contentObject.addProperty("itemLocation", content.getItemLocation());
				contentObject.addProperty("provisionalTitle", content.getProvisionalTitle());
				contentObject.addProperty("titleNs", content.getTitleNs());
				contentObject.addProperty("rubric", content.getRubric());
				contentObject.addProperty("incipit", content.getIncipit());
				contentObject.addProperty("explicit", content.getExplicit());
				contentObject.addProperty("itemNotes", content.getItemNotes());
				contentObject.addProperty("paginationStatement", content.getPaginationStatement());
				contentObject.addProperty("contentsDetail", content.getContentsDetail());
				
				contentObject.add("alternateTitles", gson.toJsonTree(content.getAlternateTitles()).getAsJsonArray());
				
				// Process uniform title property
				JsonObject uniformTitleObject = new JsonObject();
				UniformTitle uniformTitle = content.getUniformTitle();
				
				if (uniformTitle != null) {
					uniformTitleObject.addProperty("id", uniformTitle.getId());
					uniformTitleObject.addProperty("name", uniformTitle.getName());
					uniformTitleObject.addProperty("authorityUriLC", uniformTitle.getAuthorityUriLC());
					uniformTitleObject.addProperty("authorityUriVIAF", uniformTitle.getAuthorityUriVIAF());
				}
				
				contentObject.add("uniformTitle", uniformTitleObject);
				
				contentObject.add("languages", createLanguagesObjectArray(content.getLanguages()));
				
				contentObject.add("contentContributors", createContentContributorsObjectArray(content.getContentContributors()));
				
				contentsObjectArray.add(contentObject);
			}
		}
		
		return contentsObjectArray;
	}
	
	/**
	 * Method will create the JsonArray needed for the content contributors property.
	 * @param readingRoomObject
	 * @return
	 */
	private JsonArray createContentContributorsObjectArray(List<ContentContributor> contentContributors) {
		JsonArray contentContributorsObjectArray = new JsonArray();
		
		if (CollectionUtils.isNotEmpty(contentContributors)) {
			for (ContentContributor objectContributor : contentContributors) {
				JsonObject objectContributorObject = new JsonObject();
				objectContributorObject.addProperty("id", objectContributor.getId());
				objectContributorObject.addProperty("type", (objectContributor.getType() != null ? objectContributor.getType().getDisplayName() : null));
				objectContributorObject.addProperty("nameNs", objectContributor.getNameNs());
				
				JsonObject contributorObject = new JsonObject();
				Contributor contributor = objectContributor.getContributor();
				
				if (contributorObject != null) {
					contributorObject.addProperty("id", contributor.getId());
					contributorObject.addProperty("name", contributor.getName());
					contributorObject.addProperty("authorityUriLC", contributor.getAuthorityUriLC());
					contributorObject.addProperty("authorityUriVIAF", contributor.getAuthorityUriVIAF());
					contributorObject.addProperty("displayName", contributor.getPopulatedName());
				}
				
				objectContributorObject.add("contributor", contributorObject);
				
				contentContributorsObjectArray.add(objectContributorObject);
			}
		}
		
		return contentContributorsObjectArray;
	}
	
	/**
	 * Method will create the JsonArray needed for the languages property.
	 * @param list
	 * @return
	 */
	private JsonArray createLanguagesObjectArray(List<Language> languages) {
		JsonArray langaugesObjectArray = new JsonArray();
		
		if (CollectionUtils.isNotEmpty(languages)) {
			for (Language language : languages) {
				JsonObject format = new JsonObject();
				format.addProperty("id", language.getId());
				format.addProperty("name", language.getName());
				langaugesObjectArray.add(format);
			}
		}
		
		return langaugesObjectArray;
	}
	
	/**
	 * Method will create the JsonArray needed for the object contributors property.
	 * @param readingRoomObject
	 * @return
	 */
	private JsonArray createObjectContributorsObjectArray(List<ReadingRoomObjectContributor> objectContributors) {
		JsonArray objectContributorsObjectArray = new JsonArray();
		
		if (CollectionUtils.isNotEmpty(objectContributors)) {
			for (ReadingRoomObjectContributor objectContributor : objectContributors) {
				JsonObject objectContributorObject = new JsonObject();
				objectContributorObject.addProperty("id", objectContributor.getId());
				objectContributorObject.addProperty("type", (objectContributor.getType() != null ? objectContributor.getType().getDisplayName() : null));
				objectContributorObject.addProperty("nameNs", objectContributor.getNameNs());
				
				JsonObject contributorObject = new JsonObject();
				Contributor contributor = objectContributor.getContributor();
				
				if (contributor != null) {
					contributorObject.addProperty("id", contributor.getId());
					contributorObject.addProperty("name", contributor.getName());
					contributorObject.addProperty("authorityUriLC", contributor.getAuthorityUriLC());
					contributorObject.addProperty("authorityUriVIAF", contributor.getAuthorityUriVIAF());
					contributorObject.addProperty("displayName", contributor.getPopulatedName());
				}
				
				objectContributorObject.add("contributor", contributorObject);
				
				objectContributorsObjectArray.add(objectContributorObject);
			}
		}
		
		return objectContributorsObjectArray;
	}
	
	/**
	 * Method will create the JsonArray needed for the features property.
	 * @param featureList
	 * @return
	 */
	private JsonArray createFeaturesObjectArray(List<Feature> featureList) {
		JsonArray featuresObjectArray = new JsonArray();
		
		if (CollectionUtils.isNotEmpty(featureList)) {
			for (Feature feature : featureList) {
				JsonObject featureObject = new JsonObject();
				featureObject.addProperty("id", feature.getId());
				featureObject.addProperty("name", feature.getName());
				
				featuresObjectArray.add(featureObject);
			}
		}
		
		return featuresObjectArray;
	}
	
	/**
	 * Method will create the JsonArray needed for the subjects property.
	 * @param subjectList
	 * @return
	 */
	private JsonArray createSubjectsObjectArray(List<Subject> subjectList) {
		JsonArray subjectsObjectArray = new JsonArray();
		
		if (CollectionUtils.isNotEmpty(subjectList)) {
			for (Subject subject : subjectList) {
				JsonObject subjectObject = new JsonObject();
				subjectObject.addProperty("id", subject.getId());
				subjectObject.addProperty("name", subject.getName());
				subjectObject.addProperty("authorityUriLC", subject.getAuthorityUriLC());
				subjectObject.addProperty("authorityUriVIAF", subject.getAuthorityUriVIAF());
				
				subjectsObjectArray.add(subjectObject);
			}
		}
		
		return subjectsObjectArray;
	}
	
	/**
	 * Method will create the JsonArray needed for the genres property.
	 * @param genreList
	 * @return
	 */
	private JsonArray createGenresObjectArray(List<Genre> genreList) {
		JsonArray genresObjectArray = new JsonArray();
		
		if (CollectionUtils.isNotEmpty(genreList)) {
			for (Genre genre : genreList) {
				JsonObject genreObject = new JsonObject();
				genreObject.addProperty("id", genre.getId());
				genreObject.addProperty("name", genre.getName());
				genreObject.addProperty("uri", genre.getUri());
				
				genresObjectArray.add(genreObject);
			}
		}
		
		return genresObjectArray;
	}
	
	/**
	 * Method will create the JsonArray needed for the extents property.
	 * @param extentList
	 * @return
	 */
	private JsonArray createExtentsObjectArray(List<Extent> extentList) {
		JsonArray extentsObjectArray = new JsonArray();
		
		if (CollectionUtils.isNotEmpty(extentList)) {
			for (Extent extent : extentList) {
				JsonObject extentObject = new JsonObject();
				extentObject.addProperty("id", extent.getId());
				extentObject.addProperty("count", extent.getCount());
				extentObject.addProperty("displayName", extent.getDisplayName());
				extentObject.addProperty("folioImported", extent.getFolioImported());
				
				extentsObjectArray.add(extentObject);
			}
		}
		
		return extentsObjectArray;
	}
	
	/**
	 * Method will create the JsonArray needed for the external bibliography urls property.
	 * @param biblioGraphyUrllist
	 * @return
	 */
	private JsonArray createExternalBibliographyUrlsObjectArray(List<BibliographyUrl> biblioGraphyUrlList) {
		JsonArray externalBibliographyUrlsObjectArray = new JsonArray();
		
		if (CollectionUtils.isNotEmpty(biblioGraphyUrlList)) {
			for (BibliographyUrl bibliographyUrl : biblioGraphyUrlList) {
				JsonObject urlObject = new JsonObject();
				urlObject.addProperty("id", bibliographyUrl.getId());
				urlObject.addProperty("url", bibliographyUrl.getUrl());
				urlObject.addProperty("linkText", bibliographyUrl.getLinkText());
				externalBibliographyUrlsObjectArray.add(urlObject);
			}
		}
		
		return externalBibliographyUrlsObjectArray;
	}
	
	/**
	 * Method will create the JsonArray needed for the alternate surrogates property.
	 * @param list
	 * @return
	 */
	private JsonArray createAlternateSurrogatesObjectArray(List<AlternateSurrogate> alternateSurrogateList) {
		JsonArray alternateSurrogatesObjectArray = new JsonArray();
		
		if (CollectionUtils.isNotEmpty(alternateSurrogateList)) {
			for (AlternateSurrogate alternateSurrogate : alternateSurrogateList) {
				JsonObject format = new JsonObject();
				format.addProperty("id", alternateSurrogate.getId());
				format.addProperty("name", alternateSurrogate.getName());
				alternateSurrogatesObjectArray.add(format);
			}
		}
		
		return alternateSurrogatesObjectArray;
	}
	
	/**
	 * Method will create the JsonObject needed for the surrogate format property.
	 * @param format
	 * @return
	 */
	private JsonObject createJsonObject(Format surrogateFormat) {
		JsonObject surrogateFormatObject = new JsonObject();
		
		if (surrogateFormat != null) {
			surrogateFormatObject.addProperty("id", surrogateFormat.getId());
			surrogateFormatObject.addProperty("name", surrogateFormat.getName());
		}
		
		return surrogateFormatObject;
	}
	
	/**
	 * Method will create the JsonObject needed for the repository property.
	 * @param repository2
	 * @return
	 */
	private JsonObject createJsonObject(Repository repository) {
		JsonObject repositoryObject = new JsonObject();
		
		if (repository != null) {
			repositoryObject.addProperty("id", repository.getId());
			repositoryObject.addProperty("name", repository.getName());
			repositoryObject.addProperty("authorityUriLC", repository.getAuthorityUriLC());
			repositoryObject.addProperty("authorityUriVIAF", repository.getAuthorityUriVIAF());
			repositoryObject.addProperty("cityId", repository.getCityId());
		}
		
		return repositoryObject;
	}
	
	/**
	 * Method will create the JsonObject needed for the holding institution property.
	 * @param institution2
	 * @return
	 */
	private JsonObject createJsonObject(Institution institution) {
		JsonObject institutionObject = new JsonObject();
		
		if (institution != null) {
			institutionObject.addProperty("id", institution.getId());
			institutionObject.addProperty("name", institution.getName());
		}
		
		return institutionObject;
	}
	
	/**
	 * Method will create the JsonObject needed for the city property.
	 * @param country2
	 * @return
	 */
	private JsonObject createJsonObject(City city) {
		JsonObject cityObject = new JsonObject();
		
		if (city != null) {
			cityObject.addProperty("id", city.getId());
			cityObject.addProperty("name", city.getName());
			cityObject.addProperty("authorityUriLC", city.getAuthorityUriLC());
			cityObject.addProperty("authorityUriVIAF", city.getAuthorityUriVIAF());
			cityObject.addProperty("countryId", city.getCountryId());
		}
		
		return cityObject;
	}
	
	/**
	 * Method will create the JsonObject needed for the country property.
	 * @param country2
	 * @return
	 */
	private JsonObject createJsonObject(Country country) {
		JsonObject countryObject = new JsonObject();
		
		if (country != null) {
			countryObject.addProperty("id", country.getId());
			countryObject.addProperty("name", country.getName());
			countryObject.addProperty("authorityUriLC", country.getAuthorityUriLC());
			countryObject.addProperty("authorityUriVIAF", country.getAuthorityUriVIAF());
		}
		
		return countryObject;
	}
	
	/**
	 * Method will create the JsonArray needed for the external facsimile urls property.
	 * @param list
	 * @return
	 */
	private JsonArray createExternalFacsimileUrlsObjectArray(List<FacsimileUrl> list) {
		JsonArray externalFacsimileUrlsObjectArray = new JsonArray();
		
		if (CollectionUtils.isNotEmpty(list)) {
			for (FacsimileUrl facsimileUrl : list) {
				JsonObject externalFacsimileUrlObject = new JsonObject();
				externalFacsimileUrlObject.addProperty("id", facsimileUrl.getId());
				externalFacsimileUrlObject.addProperty("url", facsimileUrl.getUrl());
				externalFacsimileUrlsObjectArray.add(externalFacsimileUrlObject);
			}
		}
		
		return externalFacsimileUrlsObjectArray;
	}
	
	/**
	 * Method will retrieve all the IDs from the Reading Room search hits.
	 * @param result
	 * @return
	 */
	private List<Long> getIdsFromResult(ReadingRoomSearchResult result) {
		List<Long> ids = new ArrayList<Long>();
		
		for (ReadingRoomSearchHit hit : result.getSearchHits()) {
			ReadingRoomObjectOverview objectOverview = hit.getObjectOverview();
			ids.add(objectOverview.getId());
		}
		
		return ids; 
	}
	
	/**
	 * This method will take the RR results and create a list of listing data objects.
	 */
	public List<DataPortalListingSchemaDTO> createListingData(ReadingRoomSearchResult result) {
		List<DataPortalListingSchemaDTO> listingData = new ArrayList<DataPortalListingSchemaDTO>();
		
		for(ReadingRoomSearchHit hit : result.getSearchHits()) {
			ReadingRoomObjectOverview readingRoomObjectOverview = hit.getObjectOverview();
			DataPortalListingSchemaDTO listingEntry = createSingleListingDataJsonUsingObject(readingRoomObjectOverview);
			listingData.add(listingEntry);
		}
		
		return listingData;
	}
	
	/**
	 * Method will create a listing data object using the Reading Room object overview.
	 * @param readingRoomObjectOverview
	 * @return
	 */
	public DataPortalListingSchemaDTO createSingleListingDataJsonUsingObject(ReadingRoomObjectOverview readingRoomObjectOverview) {

		DataPortalListingSchemaDTO listingEntry = new DataPortalListingSchemaDTO();
		
		listingEntry.setId(readingRoomObjectOverview.getId());
		listingEntry.setCountry(readingRoomObjectOverview.getCountry());
		listingEntry.setCity(readingRoomObjectOverview.getCity());
		listingEntry.setRepository(readingRoomObjectOverview.getRepository());
		listingEntry.setShelfmark(readingRoomObjectOverview.getShelfmark());
		listingEntry.setHmmlProjectNumber(readingRoomObjectOverview.getHmmlProjectNumber());
		listingEntry.setPermalink(PermalinkUtil.getPermalinkForTypeAndId(appConfigService.getValue(Property.PERMALINK_URL), PermalinkUtil.Type.READINGROOM, readingRoomObjectOverview.getId()));
		
		return listingEntry;
	}
	
	/**
	 * Method will create a listing data object using the Reading Room object.
	 * @param readingRoomObject
	 * @return
	 */
	@Override
	public DataPortalListingSchemaDTO createSingleListingDataJsonUsingObject(ReadingRoomObject readingRoomObject) {
		
		DataPortalListingSchemaDTO listingEntry = new DataPortalListingSchemaDTO();
		
		listingEntry.setId(readingRoomObject.getId());
		listingEntry.setCountry((readingRoomObject.getCountry() != null ? readingRoomObject.getCountry().getName() : null));
		listingEntry.setCity((readingRoomObject.getCity() != null ? readingRoomObject.getCity().getName() : null));
		listingEntry.setRepository((readingRoomObject.getRepository() != null ? readingRoomObject.getRepository().getName() : null));
		listingEntry.setShelfmark(readingRoomObject.getShelfMark());
		listingEntry.setHmmlProjectNumber(readingRoomObject.getHmmlProjectNumber());
		listingEntry.setPermalink(PermalinkUtil.getPermalinkForTypeAndId(appConfigService.getValue(Property.PERMALINK_URL), PermalinkUtil.Type.READINGROOM, readingRoomObject.getId()));
		
		return listingEntry;
	}
	
	@Transactional
	private void updateDataPortalHistory(DataPortalHistory history, Status status) {
		dataPortalRepository.updateDataPortalHistoryStatus(status.getStatus(), history.getId());
	}
	
	@Transactional
	private void updateDataPortalHistory(DataPortalHistory history, Status status, Date endDateTime, long totalTimeInMs) {
		dataPortalRepository.updateDataPortalHistoryWithEndDatetime(status.getStatus(), endDateTime, totalTimeInMs, history.getId());
	}
	
	@Transactional
	private DataPortalHistory startDataPortalJobTracking() {
		// Insert a record into the data portal history table to start tracking the status of the sitemap generation.
		// Then return the saved entity to our class variable to be used.
		return dataPortalRepository.save(new DataPortalHistory(new Date(), Status.STARTED));
	}
	@Override
	public String getLastCompletedDataPortalHistory() {
		DataPortalHistory dataPortalHistory = dataPortalRepository.findLatestCompletedDatasetGeneration();
		String lastCompleteJobDatetimeValue;
		
		if (dataPortalHistory != null) {
			Date lastCompleteJobDatetime = dataPortalHistory.getStartDatetime();
			SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm");
			lastCompleteJobDatetimeValue = dateFormat.format(lastCompleteJobDatetime);
		} else {
			lastCompleteJobDatetimeValue = "No completed job recorded.";
		}
		
		return lastCompleteJobDatetimeValue;
	}
}
