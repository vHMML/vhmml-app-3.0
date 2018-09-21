package org.vhmml.controller;

import java.util.Map;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.util.CollectionUtils;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;
import org.vhmml.entity.block.Block;
import org.vhmml.entity.block.Block.Section;
import org.vhmml.service.BlockService;

@Controller
@RequestMapping("/admin/block")
public class BlockController {

	private static final Logger LOG = Logger.getLogger(BlockController.class);

	public static final String VIEW_UI_ADMIN_HOME = "block/home";
	public static final String VIEW_UI_ADMIN = "block/uiAdmin";

	@Autowired
	BlockService blockService;
	
	@RequestMapping({"","/"})
	public ModelAndView home() {
		ModelAndView modelAndView = new ModelAndView(VIEW_UI_ADMIN_HOME);
		return modelAndView;
	}
	
	@RequestMapping(value = "/{section}/{block}")
	public ModelAndView blockAdmin(@PathVariable("section") String section, @PathVariable("block") String block) {
		ModelAndView modelAndView = new ModelAndView(VIEW_UI_ADMIN);
		Block selectedBlock = blockService.retrieveBlock(Section.forName(section), block);
		
		modelAndView.addObject("block", selectedBlock);
		
		return modelAndView;
	}
	
	@RequestMapping(value = "/{section}/{block}/save", method = RequestMethod.POST)
	public ResponseEntity<Object> save(@PathVariable("section") String section, @PathVariable("block") String block, MultipartHttpServletRequest request) {
		ResponseEntity<Object> response = new ResponseEntity<Object>("Your changes have been successfully saved.", HttpStatus.OK);

		try {
			Map<String, String> errorMessages = blockService.saveBlock(section, block, request);
			
			// If there are validation errors, then return the response with a 400 error, bad request, and a map collection
			// of the error messages.
			if (!CollectionUtils.isEmpty(errorMessages)) {
				response = new ResponseEntity<Object>(errorMessages, HttpStatus.BAD_REQUEST);
			}
		} catch (Exception exception) {
			LOG.error("Error saving block information. ", exception);
			response = new ResponseEntity<Object>("Error saving block information. Please check logs.", HttpStatus.INTERNAL_SERVER_ERROR);
		}
		
		return response;
	}
}
