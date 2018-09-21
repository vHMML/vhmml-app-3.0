package org.vhmml.service;

import java.util.ArrayList;
import java.util.List;

import org.apache.commons.collections.CollectionUtils;
import org.apache.commons.lang3.StringUtils;
import org.springframework.stereotype.Service;
import org.vhmml.entity.JsonLd;
import org.vhmml.entity.ReferenceEntry;
import org.vhmml.entity.ReferenceTag;
import org.vhmml.util.JsoupUtil;

import com.google.gson.Gson;
import com.google.gson.JsonArray;
import com.google.gson.JsonObject;

@Service
public class ReferenceJsonLdServiceImpl implements ReferenceJsonLdService {
	
	@Override
	public JsonLd createReferenceJsonLdObject(ReferenceEntry object) {
		
		JsonLd jsonLd = new JsonLd();
		
		jsonLd.setId(object.getId());
		
		// "description" property
		if (StringUtils.isNotBlank(object.getDisplayDate())
				|| object.getItemType() != null) {
			jsonLd.setDescriptionProperty(generateDescriptionProperty(object));
		}
		
		// "name" property
		if (StringUtils.isNotBlank(object.getShortTitle())) {
			jsonLd.setNameProperty(object.getShortTitle());
		}
		
		// "creator" property
		if (StringUtils.isNotBlank(object.getAuthor()) 
				|| StringUtils.isNotBlank(object.getBookAuthor())) {
			jsonLd.setCreatorProperty(generateCreatorProperty(object));
		}
		
		// "keywords" property
		if (CollectionUtils.isNotEmpty(object.getReferenceTags())) {
			jsonLd.setKeywordsProperty(generateKeywordsProperty(object));
		}
		
		// "url" property
		jsonLd.setUrlProperty(generateUrlProperty(object));
		
		return jsonLd;
	}
	
	/**
	 * Method will generate a JSON Array string for url property.
	 * @param object
	 * @return
	 */
	private String generateUrlProperty(ReferenceEntry object) {
		return new StringBuilder("https://www.vhmml.org/reference/entry/")
				.append(object.getId())
				.toString();
	}
	
	/**
	 * Method will generate a JSON string for keywords property.
	 * @param object
	 * @return
	 */
	private String generateKeywordsProperty(ReferenceEntry object) {
		Gson gson = new Gson();
		List<String> keywordsList = new ArrayList<String>();
		
		for (ReferenceTag tag : object.getReferenceTags()) {
			keywordsList.add(tag.getTag().getTag());
		}
		
		return gson.toJson(keywordsList);
	}
	
	/**
	 * Method will generate a JSON string for creator property.
	 * @param object
	 * @return
	 */
	private String generateCreatorProperty(ReferenceEntry object) {
		Gson gson = new Gson();
		JsonObject innerObject;
		JsonArray jsonArray = new JsonArray();
		
		if (StringUtils.isNotEmpty(object.getAuthor())) {
			innerObject = new JsonObject();
			innerObject.addProperty("@type", "Person");
			innerObject.addProperty("name", JsoupUtil.parseHtmlToString(object.getAuthor()));
			jsonArray.add(innerObject);
		}
		
		if (StringUtils.isNotEmpty(object.getBookAuthor())) {
			innerObject = new JsonObject();
			innerObject.addProperty("@type", "Person");
			innerObject.addProperty("name", JsoupUtil.parseHtmlToString(object.getBookAuthor()));
			jsonArray.add(object.getBookAuthor());
		}
		
		return gson.toJson(jsonArray);
	}
	
	/**
	 * Method will generate a JSON Array string for description property.
	 * @param object
	 * @return
	 */
	private String generateDescriptionProperty(ReferenceEntry object) {
		Gson gson = new Gson();
		List<String> descriptionList = new ArrayList<String>();
		
		if (StringUtils.isNotBlank(object.getDisplayDate())) {
			descriptionList.add(object.getDisplayDate());
		}

		if (object.getItemType() != null) {
			descriptionList.add(object.getItemType().getDisplayName());
		}
		
		return gson.toJson(descriptionList);
	}
}
