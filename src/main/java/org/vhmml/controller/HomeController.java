package org.vhmml.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import org.vhmml.entity.block.Block;
import org.vhmml.entity.block.Block.Section;
import org.vhmml.service.BlockService;

@Controller
public class HomeController {
	
	private static final Logger LOG = Logger.getLogger(HomeController.class);
	
	public static final String VIEW_HOME = "home";
	
	@Autowired
	BlockService blockService;
	
	@RequestMapping(value = { "", "/", "/home" })
	public ModelAndView index(HttpServletRequest request) throws IOException {
		ModelAndView modelAndView = new ModelAndView(VIEW_HOME);
		List<Block> homepageBlocks = blockService.retrieveBlocksForSection(Section.HOMEPAGE);
		
		for (Block block : homepageBlocks) {
			modelAndView.addObject(block.getName(), block);
		}
		
		return modelAndView;
	}
}
