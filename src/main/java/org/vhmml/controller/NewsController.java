package org.vhmml.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import org.vhmml.entity.NewsItem;
import org.vhmml.entity.block.Block;
import org.vhmml.entity.block.Block.Section;
import org.vhmml.repository.NewsRepository;
import org.vhmml.service.BlockService;
import org.vhmml.service.NewsService;

/**
 * Controller will handle the news homepage.
 * 
 * @author lorbs28
 *
 */
@Controller
@RequestMapping("/news")
public class NewsController {
	
	public static final String VIEW_NEWS_HOME = "news/home";
	
	@Value("${block.default.list.amount}")
	private String BLOCK_DEFAULT_LIST_AMOUNT;

	@Autowired
	BlockService blockService;
	
	@Autowired
	NewsService newsService;
	
	@Autowired
	NewsRepository newsRepository;
	
	/**
	 * Method will handle the news homepage.  Retrieves and displays a defined amount of news items.
	 * @return
	 */
	@RequestMapping({"","/"})
	public ModelAndView home() {
		ModelAndView modelAndView = new ModelAndView(VIEW_NEWS_HOME);
		Integer amountOfItems = newsRepository.retrieveMaxVisibleNewsItemAmount();
		amountOfItems = amountOfItems != null ? amountOfItems : Integer.parseInt(BLOCK_DEFAULT_LIST_AMOUNT);
		
		// Get the news items for the homepage.
		List<NewsItem> newsItems = newsRepository.retrieveNewsItems(amountOfItems);
		modelAndView.addObject("newsItems", newsItems);
		
		// Get the blocks and their block components that belong on the news homepage.
		List<Block> newsBlocks = blockService.retrieveBlocksForSection(Section.NEWS);
		for (Block block : newsBlocks) {
			modelAndView.addObject(block.getName(), block);
		}
		
		return modelAndView;
	}
	
}
