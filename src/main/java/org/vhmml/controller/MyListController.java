package org.vhmml.controller;

import java.io.IOException;
import java.io.InputStream;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.io.IOUtils;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.vhmml.dto.ReadingRoomSearchResult;
import org.vhmml.entity.MyListItem;
import org.vhmml.service.MyListService;
import org.vhmml.web.VhmmlSession;

import com.fasterxml.jackson.databind.DeserializationFeature;
import com.fasterxml.jackson.databind.ObjectMapper;

@Controller
@RequestMapping("/myList")
public class MyListController {
	
	private static final Logger LOG = Logger.getLogger(MyListController.class);
	
	@Autowired
	private MyListService myListService;
	
	public static final String VIEW_MY_LIST_HOME = "myList/home";
	public static final String VIEW_MY_LIST_HELP = "myList/help";
	
	public static final String MY_LIST_RESPONSE_MESSAGE = "message";
	public static final String MY_LIST_COUNTER = "myListSavesCounter";
	
	private static final ObjectMapper objectMapper = new ObjectMapper();
	
	static {
		objectMapper.configure(DeserializationFeature.FAIL_ON_UNKNOWN_PROPERTIES, false);		
	}

	/**
	 * Method for the My List homepage.
	 * @param request
	 * @return
	 * @throws IOException
	 */
	@RequestMapping(value = {"", "/" })
	public ModelAndView home() {
		return new ModelAndView(VIEW_MY_LIST_HOME);
	}
	
	/**
	 * Controller method that will return the help page specific to My List.
	 * @return
	 */
	@RequestMapping(value = "/help", method = RequestMethod.GET)
	public ModelAndView viewHelp() {
		return new ModelAndView(VIEW_MY_LIST_HELP);
	}
	
	/**
	 * Controller method that will return the search results for display in the paging control area.  This method is
	 * called on page load also.
	 * 
	 * @param pagingData
	 * @param request
	 * @return
	 * @throws IOException 
	 */
	@ResponseBody
	@RequestMapping(value = {"/all", "/all/"},  method = RequestMethod.GET)
	public ReadingRoomSearchResult search(Pageable pagingData, HttpServletRequest request) throws IOException {
		return myListService.search(pagingData, request);
	}
	
	/**
	 * This method will add a list item to the user's My List.
	 * @param objectId
	 * @param request
	 * @return
	 */
	@ResponseBody
	@RequestMapping(value = "/add/{objectId}")
	public Map<String, Object> addListItemToMyList(@PathVariable Long objectId, HttpServletRequest request) {
		Map<String, Object> response = new HashMap<>();
		
		response.put(MY_LIST_COUNTER, myListService.addItemToMyList(objectId, request));
		response.put(MY_LIST_RESPONSE_MESSAGE, "Item saved to My List");
		
		return response;
	}
	
	/**
	 * This controller method will handle removing all items from a user's My List.
	 * 
	 * @param request
	 * @return
	 */
	@ResponseBody
	@RequestMapping(value = "/all/remove")
	public Map<String, Object> removeAllItemsFromMyList(HttpServletRequest request) {
		VhmmlSession session = VhmmlSession.getSession(request);
		Set<MyListItem> myListSaves = session.getMyListSaves();
		
		myListService.removeAllItemsFromMyList(request);
		
		Map<String, Object> response = new HashMap<>();
		
		// Return the amount of saves from the session.
		// Reason: users might have more than one tab open.  they might add some objects on one, and then execute
		// a "delete all" in My List.  
		response.put(MY_LIST_COUNTER, myListSaves.size());
		response.put(MY_LIST_RESPONSE_MESSAGE, "All items removed from My List.");
		
		return response;
	}
	
	/**
	 * This controller method will handle removing selected items from a user's My List.
	 * 
	 * @param selectedSaves
	 * @param request
	 * @return
	 */
	@ResponseBody
	@RequestMapping(value = "/select/remove")
	public Map<String, Object> removeSelectedItemsFromMyList(@RequestParam("selectedSaves") String selectedSaves, HttpServletRequest request) {
		Map<String, Object> response = new HashMap<>();
		response.put(MY_LIST_RESPONSE_MESSAGE, "Selected items removed from My List.");
		
		try {
			myListService.removeSelectedItemsFromMyList(selectedSaves, null, request);
		} catch (Exception e) {
			LOG.error("Unexpected exception removing selected My List items. ", e);
			
			response.put(MY_LIST_RESPONSE_MESSAGE, "Unexpected error removing selected My List items.");
		}
		
		return response;
	}

	/**
	 * Controller method to handle exporting of all items for a user's My List.
	 * 
	 * @param pageable
	 * @param request
	 * @param response
	 * @throws IOException
	 */
	@RequestMapping(value = "/all/export")
	public void exportAllItemsFromMyList(Pageable pageable, HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		String export = myListService.exportAllMyListItems(request, pageable);
		InputStream inputStream = IOUtils.toInputStream(export, "UTF-8");		
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
		String downloadFilename = "vHMML My List " + format.format(new Date()) + ".txt";
		response.setContentType("text/plain");
		response.addHeader("Content-Disposition", "attachment;filename=\"" + downloadFilename + "\"");
		IOUtils.copy(inputStream, response.getOutputStream());
		response.flushBuffer();	
	}
	
	/**
	 * Controller method to handle exporting of selected items from a user's My List.
	 * 
	 * @param selectedSaves
	 * @param pageable
	 * @param request
	 * @param response
	 * @throws IOException
	 */
	@RequestMapping(value = "/select/export")
	public void exportSelectedItemsFromMyList(@RequestParam("myListSelectedSaves") String selectedSaves, Pageable pageable,  HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		String export = myListService.exportSelectedMyListItems(request, pageable, selectedSaves);
		InputStream inputStream = IOUtils.toInputStream(export, "UTF-8");		
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
		String downloadFilename = "vHMML My List " + format.format(new Date()) + ".txt";
		response.setContentType("text/plain");
		response.addHeader("Content-Disposition", "attachment;filename=\"" + downloadFilename + "\"");
		IOUtils.copy(inputStream, response.getOutputStream());
		response.flushBuffer();	
	}
	
	/**
	 * This method will remove a list item from the user's My List.
	 * @param objectId
	 * @param request
	 * @return
	 */
	@ResponseBody
	@RequestMapping(value = "/remove/{objectId}")
	public Map<String, Object> removeListItemFromMyList(@PathVariable Long objectId, HttpServletRequest request) {
		Map<String, Object> response = new HashMap<>();
		
		response.put(MY_LIST_COUNTER, myListService.removeItemFromMyList(objectId, request));
		response.put(MY_LIST_RESPONSE_MESSAGE, "Item removed from My List");
		
		return response;
	}
}
