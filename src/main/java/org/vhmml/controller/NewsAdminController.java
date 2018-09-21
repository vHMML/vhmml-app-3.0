package org.vhmml.controller;

import java.util.Map;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.util.CollectionUtils;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestHeader;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;
import org.vhmml.repository.NewsRepository;
import org.vhmml.service.NewsService;

/**
 * Controller that will handle news admin functionality.
 * 
 * @author lorbs28
 *
 */
@Controller
@RequestMapping("/news/admin")
public class NewsAdminController {

	private static final Logger LOG = Logger.getLogger(NewsAdminController.class);
	
	public static final String VIEW_NEWS_EDIT = "news/edit";

	@Autowired
	NewsService newsService;
	
	@Autowired
	NewsRepository newsRepository;

	/**
	 * Method will display the news item form view for the user.
	 * 
	 * @return
	 */
	@RequestMapping({"/add"})
	public ModelAndView add() {
		ModelAndView modelAndView = new ModelAndView(VIEW_NEWS_EDIT);
		return modelAndView;
	}
	
	/**
	 * Method will display the news item form view for the user with
	 * the respective news item's values.
	 * 
	 * @param id
	 * @return
	 */
	@RequestMapping({"/edit/{id}"})
	public ModelAndView edit(@PathVariable("id") long id) {
		ModelAndView modelAndView = new ModelAndView(VIEW_NEWS_EDIT);
		modelAndView.addObject("newsItem", newsRepository.findOne(id));
		return modelAndView;
	}
	
	/**
	 * Method will process and save the news item.
	 * 
	 * @param request
	 * @return
	 */
	@RequestMapping(value = "/save", method = RequestMethod.POST) 
	public ResponseEntity<Object> save(MultipartHttpServletRequest request, @RequestHeader String referer) {
		ResponseEntity<Object> response = new ResponseEntity<Object>("Error saving news item. Please check logs.", HttpStatus.INTERNAL_SERVER_ERROR);
		
		if (referer != null) {
			try {
				Map<String, String> errorMessages = newsService.processNewsItem(request);
				
				// If the error message collection is NOT empty, then we may have validation errors.
				// Return the response with the collection of error messages.
				if (!CollectionUtils.isEmpty(errorMessages)) {
					response = new ResponseEntity<Object>(errorMessages, HttpStatus.BAD_REQUEST);
				} else {
					response = new ResponseEntity<Object>("News item saved successfully!", HttpStatus.OK);
				}
				
			} catch (Exception exception) {
				LOG.error("Error saving news item. ", exception);
			}
		}
		
		return response;
	}
	
	/**
	 * Method will delete the given news item id.
	 * 
	 * @param id
	 * @return
	 */
	@RequestMapping(value = "/delete/{id}", method = RequestMethod.POST)
	public ResponseEntity<Object> delete(@PathVariable("id") long id, @RequestHeader String referer) {
		ResponseEntity<Object> response = new ResponseEntity<Object>("Error deleting news item. Please check logs.", HttpStatus.INTERNAL_SERVER_ERROR);
		
		if (referer != null) {
			try {
				newsRepository.delete(id);
				response = new ResponseEntity<Object>("News item deleted successfully!", HttpStatus.OK);
			} catch (Exception exception) {
				LOG.error("Error deleting news item. ", exception);
			}
		}
		
		return response;
	}
}
