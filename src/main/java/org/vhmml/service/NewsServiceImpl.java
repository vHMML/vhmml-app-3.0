package org.vhmml.service;

import java.io.File;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import org.apache.commons.io.FileUtils;
import org.apache.commons.lang3.StringUtils;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;
import org.springframework.util.CollectionUtils;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.vhmml.entity.NewsItem;
import org.vhmml.entity.NewsItem.Part;
import org.vhmml.repository.NewsRepository;

@Service
public class NewsServiceImpl implements NewsService {

	private static final Logger LOG = Logger.getLogger(NewsServiceImpl.class);
	
	@Value("${news.item.error.image.required}")
	private String NEWS_ITEM_ERROR_IMAGE_REQUIRED;
	
	@Value("${news.item.error.required}")
	private String NEWS_ITEM_ERROR_REQUIRED;
	
	@Value("${news.item.error.date.format}")
	private String NEWS_ITEM_ERROR_DATE_FORMAT;
	
	@Value("${news.item.image.directory}")
	private String NEWS_ITEM_IMAGE_DIRECTORY;
	
	@Autowired
	NewsRepository newsRepository;

	@Override
	public Map<String, String> processNewsItem(MultipartHttpServletRequest request) {
		Map<String, String> messages = validateNewsItem(request);
		
		if (CollectionUtils.isEmpty(messages)) {
			saveNewsItem(request);
		}
		
		return messages;
	}
	
	private boolean saveNewsItem(MultipartHttpServletRequest request) {
		String currentImage = request.getParameter("currentImage");
		String newsItemIdString = request.getParameter("newsItemId");
		NewsItem newsItem = new NewsItem();
		
		if (StringUtils.isNotBlank(newsItemIdString)) {
			newsItem.setId(Long.parseLong(newsItemIdString));
		}
		
		newsItem.setTitle(request.getParameter(Part.TITLE.getName()));
		newsItem.setContent(request.getParameter(Part.CONTENT.getName()));
		newsItem.setTooltip(request.getParameter(Part.TOOLTIP.getName()));
		newsItem.setDate(getDateFromValue(request.getParameter(Part.DATE.getName())));
		newsItem.setImageLink(request.getParameter(Part.IMAGELINK.getName()));
		
		if (request.getFile(Part.IMAGE.getName()) != null) {
			newsItem.setImage(request.getFile(Part.IMAGE.getName()).getOriginalFilename());
			
			// Handle the uploaded image.
			processNewsItemImageUpload(request.getFile(Part.IMAGE.getName()));
		} else {
			newsItem.setImage(currentImage);
		}
		
		newsRepository.save(newsItem);
		
		return true;
	}
	
	/**
	 * Method will process the image upload by writing it to the appropriate directory.
	 * @param incomingImage
	 */
	private void processNewsItemImageUpload(MultipartFile newsItemImage) {
		
		try {
			String imageFilename = NEWS_ITEM_IMAGE_DIRECTORY + newsItemImage.getOriginalFilename();
			File newImage = new File(imageFilename);
			FileUtils.writeByteArrayToFile(newImage, newsItemImage.getBytes());
		} catch (Exception e) {
			LOG.error("Error uploading news item image file.", e);
		}
	}
	
	private Date getDateFromValue(String dateValue) {
		SimpleDateFormat formatter = new SimpleDateFormat("MM/dd/yyyy");
		Date date = new Date();
		
		try {
			date = formatter.parse(dateValue);
		} catch (ParseException exception) {
			LOG.error("Error parsing date value. ", exception);
		}
		
		return date;
	}
	
	private Map<String, String> validateNewsItem(MultipartHttpServletRequest request) {
		Map<String, String> errorMessages = new HashMap<String, String>();
		
		// Add validation calls and the appropriate error messages from the properties for the block fields.
		
		// Title
		if (!validateRequiredValueForPart(request, Part.TITLE)) {
			errorMessages.put(Part.TITLE.getName(), NEWS_ITEM_ERROR_REQUIRED);
		}
		
		// Content
		if (!validateRequiredValueForPart(request, Part.CONTENT)) {
			errorMessages.put(Part.CONTENT.getName(), NEWS_ITEM_ERROR_REQUIRED);
		}
		
		// Tooltip
		if (!validateRequiredValueForPart(request, Part.TOOLTIP)) {
			errorMessages.put(Part.TOOLTIP.getName(), NEWS_ITEM_ERROR_REQUIRED);
		}
		
		// Date
		if (!validateRequiredValueForPart(request, Part.DATE)) {
			errorMessages.put(Part.DATE.getName(), NEWS_ITEM_ERROR_REQUIRED);
		} else if (!validateDate(request)) {
			errorMessages.put(Part.DATE.getName(), NEWS_ITEM_ERROR_DATE_FORMAT);
		}
			
		// Image
		if (!validateFileImage(request)) {
			errorMessages.put(Part.IMAGE.getName(), NEWS_ITEM_ERROR_IMAGE_REQUIRED);
		}
		
		return errorMessages;
	}
	
	/**
	 * Method will validate the value to see if it is empty for the specific part in the request.
	 * @param request
	 * @param part
	 * @return
	 */
	private boolean validateRequiredValueForPart(MultipartHttpServletRequest request, Part part) {
		if (!request.getParameterMap().containsKey(part.getName())
				|| (request.getParameterMap().containsKey(part.getName()) 
						&& StringUtils.isBlank(request.getParameter(part.getName())))) {
			return false;
		}
		
		return true;
	}
	
	/**
	 * Method will validate the file image from the incoming request.
	 * @param request
	 * @return
	 */
	private boolean validateFileImage(MultipartHttpServletRequest request) {
		String part = Part.IMAGE.getName();
		String currentImage = request.getParameter("currentImage");
		
		if ((!request.getMultiFileMap().containsKey(part) 
					&& StringUtils.isBlank(currentImage))
				|| (request.getMultiFileMap().containsKey(part) 
						&& request.getFile(part) == null)) {
			return false;
		}
		
		return true;
	}
	
	/**
	 * Method will validate the date from the incoming request.
	 * @param dateValue
	 * @return
	 */
	private boolean validateDate(MultipartHttpServletRequest request) {
		String part = Part.DATE.getName();
		
		if (request.getParameterMap().containsKey(part)
				&& StringUtils.isNotBlank(request.getParameter(part))) {
			
			try {
				Date date = new SimpleDateFormat("MM/dd/yyyy").parse(request.getParameter(part));
				return true;
			} catch (ParseException e) {				
				return false;
			}
		}
		
		return true;
	}
}
