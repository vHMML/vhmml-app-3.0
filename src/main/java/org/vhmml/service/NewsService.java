package org.vhmml.service;

import java.util.Map;

import org.springframework.web.multipart.MultipartHttpServletRequest;

public interface NewsService {
	public Map<String, String> processNewsItem(MultipartHttpServletRequest request);
}
