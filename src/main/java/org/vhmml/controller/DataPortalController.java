package org.vhmml.controller;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.io.IOUtils;
import org.apache.commons.lang3.StringUtils;
import org.apache.log4j.Logger;
import org.elasticsearch.action.search.SearchPhaseExecutionException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.data.domain.Pageable;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestHeader;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.vhmml.batch.writer.DataPortalBaseFileWriter.FileType;
import org.vhmml.dto.ReadingRoomSearchResult;
import org.vhmml.dto.VhmmlSearchParameters;
import org.vhmml.entity.block.Block;
import org.vhmml.entity.block.Block.Section;
import org.vhmml.repository.DataPortalRepository;
import org.vhmml.service.ApplicationConfigService;
import org.vhmml.service.BlockService;
import org.vhmml.service.DataPortalService;
import org.vhmml.service.ReadingRoomService;
import org.vhmml.util.PagingUtil;

@Controller
@RequestMapping("/dataPortal")
public class DataPortalController {
	
	private static final Logger LOG = Logger.getLogger(DataPortalController.class);
	
	public static final String VIEW_DATA_PORTAL_HOME = "dataPortal/home";
	public static final String VIEW_DATA_PORTAL_HELP = "dataPortal/help";
	public static final String VIEW_DATA_PORTAL_SCHEMA = "dataPortal/schema";
	public static final String VIEW_DATA_PORTAL_DATASET = "dataPortal/dataset";
	public static final String VIEW_DATA_PORTAL_ADMIN = "dataPortal/admin";
	
	@Autowired
	private ReadingRoomService readingRoomService;
	
	@Autowired
	private DataPortalService dataPortalService;

	@Autowired
	private ApplicationConfigService appConfigService;
	
	@Autowired
	private PagingUtil pagingUtil;
	
	@Autowired
	DataPortalRepository dataPortalRepository;
	
	@Autowired
	BlockService blockService;
	
	@Value("${data.portal.listing.data.filename.prefix}")
	private String LISTING_DATA_FILENAME_PREFIX;
	
	@Value("${data.portal.full.data.filename.prefix}")
	private String FULL_DATA_FILENAME_PREFIX;
	
	@RequestMapping(value = { "", "/" })
	public ModelAndView home(HttpServletRequest request) throws IOException {
		Pageable defaultPageable = pagingUtil.getDefaultPageable(new String[] {"country","city","repository"});
		ModelAndView modelAndView = new ModelAndView(VIEW_DATA_PORTAL_HOME);
		
		modelAndView.addObject(ControllerConstants.ATT_SORT_BY, pagingUtil.getSortString(defaultPageable));
		modelAndView.addObject("maxRecordsForFullDataDownload", appConfigService.getValue(ApplicationConfigService.Property.DATA_PORTAL_MAX_DATA_FULL));
		modelAndView.addObject("maxRecordsForListingDataDownload", appConfigService.getValue(ApplicationConfigService.Property.DATA_PORTAL_MAX_DATA_LISTING));
		
		// Get the blocks and their block components that belong on the Reading Room homepage.
		List<Block> blocks = blockService.retrieveBlocksForSection(Section.DATAPORTAL);
		for (Block block : blocks) {
			modelAndView.addObject(block.getName(), block);
		}
		
		
		return modelAndView;
	}
	
	@RequestMapping(value = "/dataset", method = RequestMethod.GET)
	public ModelAndView dataset(HttpServletRequest request) {
		ModelAndView modelAndView = new ModelAndView(VIEW_DATA_PORTAL_DATASET);
		
		modelAndView.addObject("fullDataJsonFile", dataPortalService.getDatasetFileInformation(FileType.FULL_DATA_JSON));
		modelAndView.addObject("listingDataJsonFile", dataPortalService.getDatasetFileInformation(FileType.LISTING_DATA_JSON));
		modelAndView.addObject("listingDataCsvFile", dataPortalService.getDatasetFileInformation(FileType.LISTING_DATA_CSV));
		
		return modelAndView;
	}
	
	@RequestMapping(value = "/admin", method = RequestMethod.GET)
	public ModelAndView admin(HttpServletRequest request) {
		ModelAndView modelAndView = new ModelAndView(VIEW_DATA_PORTAL_ADMIN);
		modelAndView.addObject("lastCompletedJobDatetime", dataPortalService.getLastCompletedDataPortalHistory());
		return modelAndView;
	}
	
	@RequestMapping(value = "/help", method = RequestMethod.GET)
	public ModelAndView help(HttpServletRequest request) throws IOException {
		ModelAndView modelAndView = new ModelAndView(VIEW_DATA_PORTAL_HELP);
		
		return modelAndView;
	}
	
	@ResponseBody
	@RequestMapping(value = {"/search", "/search/"}, method = RequestMethod.GET)
	public ResponseEntity<Object> search(@ModelAttribute VhmmlSearchParameters searchParameters, Pageable pagingData, HttpServletRequest request) {
		ResponseEntity<Object> response = new ResponseEntity<Object>("Unable to search the Data Portal. Please contact the system administrator if the problem persists.", HttpStatus.INTERNAL_SERVER_ERROR);
		
		// Default the sorting to be country, city, and repository in ascending order if a sort is not specified and if the page number value is 0 ("page 1" default).
		if (pagingData.getSort() == null && pagingData.getPageNumber() == 0) {
			pagingData = pagingUtil.getDefaultPageableWithSize(new String[] {"country","city","repository"}, pagingData.getPageSize());
		}
		
		try {
			// Set the parameter for active only records to true, parameter for highlighting hits to false.
			ReadingRoomSearchResult result = readingRoomService.search(searchParameters.getSearchTerms(), pagingData, true, false);
			response = new ResponseEntity<Object>(result, HttpStatus.OK);
		} catch (SearchPhaseExecutionException e) {
			
			// Check what the cause message is and if it is because the result window was too large, then
			// we want to pass the appropriate response back to the user.  Elasticsearch doesn't have a graceful
			// way of doing this.
			if (e.getCause().getMessage().contains("Result window is too large")) {
				Map<Object, Object> responseObject = new HashMap<Object, Object>();
				responseObject.put("exceedsMaxResultsWindow", true);
				response = new ResponseEntity<Object>(responseObject, HttpStatus.INTERNAL_SERVER_ERROR);
			} else {
				LOG.error("Unexpected exception running search", e);
			}
			
		} catch(Exception e) {
			LOG.error("Unexpected exception running search", e);
		}
		
		return response;
	}
	
	@RequestMapping(value = "/schema", method = RequestMethod.GET) 
	public ModelAndView schema(HttpServletRequest request) {
		return new ModelAndView(VIEW_DATA_PORTAL_SCHEMA);
	}
	
	@RequestMapping(value = "/export/full/{objectId}/{exportType}")
	public void exportDataForObject(@PathVariable Long objectId, @PathVariable String exportType, HttpServletRequest request, HttpServletResponse response, @RequestHeader String referer) {
		if (referer != null) {
			
			try {
				InputStream inputStream = null;
				OutputStream outputStream = null;
				String dataExport = "";
				
				try {
					dataExport = dataPortalService.createDataExportForExportType(objectId, exportType);
					
					String filename = new StringBuilder(LISTING_DATA_FILENAME_PREFIX)
							.append(objectId)
							.append(".")
							.append(StringUtils.lowerCase(exportType)).toString();
					
					response.setContentType("application/json");
					response.addHeader("Content-Disposition",  "attachment; filename=\"" + filename + "\"");
					outputStream = response.getOutputStream();
					inputStream = IOUtils.toInputStream(dataExport, "UTF-8");
					
					IOUtils.copy(inputStream, outputStream);
					response.flushBuffer();
				} finally {
					IOUtils.closeQuietly(inputStream);
					IOUtils.closeQuietly(outputStream);
				}
				
			} catch (Exception e) {
				LOG.error("Error exporting the listing data, ", e);
			}
			
		}
	}
	
	@RequestMapping(value = "/export/full", method = RequestMethod.GET)
	public void exportFullData(@RequestParam Map<String, String> searchParameters, Pageable pagingData, HttpServletRequest request, HttpServletResponse response, @RequestHeader String referer) {
		if (referer != null) {
			try {
				InputStream inputStream = null;
				OutputStream outputStream = null;
				String fullDataJson = "";
				
				try {
					fullDataJson = dataPortalService.createFullDataJsonUsingSearchParameters(searchParameters);
					
					SimpleDateFormat format = new SimpleDateFormat("yyyyMMdd_mmss");
					String filename = new StringBuilder(FULL_DATA_FILENAME_PREFIX)
							.append(format.format(new Date()))
							.append(".json").toString();
					
					response.setContentType("application/json");
					response.addHeader("Content-Disposition",  "attachment; filename=\"" + filename + "\"");
					outputStream = response.getOutputStream();
					inputStream = IOUtils.toInputStream(fullDataJson, "UTF-8");
					
					IOUtils.copy(inputStream, outputStream);
					response.flushBuffer();
				} finally {
					IOUtils.closeQuietly(inputStream);
					IOUtils.closeQuietly(outputStream);
				}
				
			} catch (Exception e) {
				LOG.error("Error exporting the full data, ", e);
			}
		}
	}
	
	@RequestMapping(value = "/export/listing", method = RequestMethod.GET)
	public void exportListingData(@RequestParam Map<String, String> searchParameters, Pageable pagingData, HttpServletRequest request, HttpServletResponse response, @RequestHeader String referer) {
		if (referer != null) {
			
			try {
				InputStream inputStream = null;
				OutputStream outputStream = null;
				String listingDataJson = "";
				
				try {
					listingDataJson = dataPortalService.createListingDataJson(searchParameters);
					
					SimpleDateFormat format = new SimpleDateFormat("yyyyMMdd_mmss");
					String filename = new StringBuilder(LISTING_DATA_FILENAME_PREFIX)
							.append(format.format(new Date()))
							.append(".json").toString();
					
					response.setContentType("application/json");
					response.addHeader("Content-Disposition",  "attachment; filename=\"" + filename + "\"");
					outputStream = response.getOutputStream();
					inputStream = IOUtils.toInputStream(listingDataJson, "UTF-8");
					
					IOUtils.copy(inputStream, outputStream);
					response.flushBuffer();
				} finally {
					IOUtils.closeQuietly(inputStream);
					IOUtils.closeQuietly(outputStream);
				}
				
			} catch (Exception e) {
				LOG.error("Error exporting the listing data, ", e);
			}
			
		}
	}
	
	@ResponseBody
	@RequestMapping(value = "/admin/dataset")
	public ResponseEntity<Object> exportDataset() {
		ResponseEntity<Object> response = new ResponseEntity<Object>("Unable to successfully generate the dataset files. Please contact the system administrator if the problem persists.", HttpStatus.INTERNAL_SERVER_ERROR);
		
		try {
			if (dataPortalService.executeDatasetJob()) {
				response = new ResponseEntity<Object>("The dataset job has successfully run!", HttpStatus.OK);
			}
		} catch (Exception e) {
			LOG.error("Error generating the dataset files: ", e);
		}
		
		return response;
	}
}
