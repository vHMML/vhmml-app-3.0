package org.vhmml.service;

import java.util.ArrayList;
import java.util.List;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.vhmml.entity.FolioObject;
import org.vhmml.entity.JsonLd;
import org.vhmml.service.ApplicationConfigService.Property;
import org.vhmml.util.JsoupUtil;

import com.google.gson.Gson;
import com.google.gson.JsonArray;
import com.google.gson.JsonObject;

@Service
public class FolioJsonLdServiceImpl implements FolioJsonLdService {

	@Autowired
	private ApplicationConfigService appConfigService;
	
	@Override
	public JsonLd createFolioJsonLdObject(FolioObject object) {
		JsonLd jsonLd = new JsonLd();
		
		jsonLd.setId(object.getId());
		
		if (object.getPublicManifest()
				|| StringUtils.isNotBlank(object.getExternalUrl())) {
			jsonLd.setUrlProperty(generateUrlProperty(object));
		}
		
		if (StringUtils.isNotBlank(object.getRepository())) {
			jsonLd.setProviderProperty(generateProviderProperty(object));
		}
		
		if (StringUtils.isNotBlank(object.getShelfMark()) 
				|| StringUtils.isNotBlank(object.getFolioObjectNumber())) {
			jsonLd.setIdentifierProperty(generateIdentifierProperty(object));
		}
		
		if (StringUtils.isNotBlank(object.getScript())
				|| StringUtils.isNotBlank(object.getWritingSystem())) {
			jsonLd.setDescriptionProperty(generateDescriptionProperty(object));
		}
		
		if (StringUtils.isNotBlank(object.getBibliography())) {
			jsonLd.setCitationProperty(generateCitationProperty(object));
		}
		
		if (StringUtils.isNotBlank(object.getLanguage())) {
			jsonLd.setInLanguageProperty(generateInLanguageProperty(object));
		}
		
		if (StringUtils.isNotEmpty(object.getAcknowledgements())) {
			jsonLd.setContributorProperty(generateContributorProperty(object));
		}
		
		if (StringUtils.isNotBlank(object.getTitle())) {
			jsonLd.setNameProperty(generateNameProperty(object));
		}
		
		if (StringUtils.isNotBlank(object.getDateCentury())
				|| object.getBeginDate() != null
				|| object.getEndDate() != null) {
			jsonLd.setDateCreatedProperty(generateDateCreatedProperty(object));
		}
		
		if (StringUtils.isNotBlank(object.getPlaceOfOrigin())) {
			jsonLd.setLocationCreatedProperty(generateLocationCreatedProperty(object));
		}
		
		return jsonLd;
	}
	
	/**
	 * Method will generate a JSON Array string for url property.
	 * @param object
	 * @return
	 */
	private String generateUrlProperty(FolioObject object) {
		String permalink = appConfigService.getValue(Property.PERMALINK_URL);
		Gson gson = new Gson();
		List<String> urlList = new ArrayList<String>();
		
		if (object.getPublicManifest()) {
			String manifestUrl = new StringBuilder("https://")
					.append(permalink)
					.append("/image/manifest/folio/")
					.append(object.getId())
					.toString();
			
			urlList.add(manifestUrl);
		}
		

		if (StringUtils.isNotBlank(object.getExternalUrl())) {
			urlList.add(object.getExternalUrl());
		}
		
		return gson.toJson(urlList);
	}
	
	/**
	 * Method will generate a JSON Array string for provider property.
	 * @param object
	 * @return
	 */
	private String generateProviderProperty(FolioObject object) {
		Gson gson = new Gson();
		JsonObject innerObject;
		JsonArray jsonArray = new JsonArray();
		
		if (StringUtils.isNotBlank(object.getRepository())) {
			JsonObject addressObject = new JsonObject();
			innerObject = new JsonObject();
			
			innerObject.addProperty("@type", "Organization");
			innerObject.addProperty("name", JsoupUtil.parseHtmlToString(object.getRepository()));
			
			addressObject.addProperty("@type", "PostalAddress");
			addressObject.addProperty("addressLocality", JsoupUtil.parseHtmlToString(object.getCity()));
			addressObject.addProperty("addressCountry", JsoupUtil.parseHtmlToString(object.getCountry()));
			
			innerObject.add("address", addressObject);
			jsonArray.add(innerObject);
		}
		
		return gson.toJson(jsonArray);
	}
	
	/**
	 * Method will generate a JSON Array string for identifier property.
	 * @param object
	 * @return
	 */
	private String generateIdentifierProperty(FolioObject object) {
		Gson gson = new Gson();
		JsonObject innerObject;
		JsonArray jsonArray = new JsonArray();
		
		innerObject = new JsonObject();
		innerObject.addProperty("@type", "PropertyValue");
		innerObject.addProperty("propertyId", "Folio Object Number");
		innerObject.addProperty("value", object.getFolioObjectNumber());
		jsonArray.add(innerObject);
		
		if (StringUtils.isNotBlank(object.getShelfMark())) {
			innerObject = new JsonObject();
			innerObject.addProperty("@type", "PropertyValue");
			innerObject.addProperty("propertyId", "Shelf Mark");
			innerObject.addProperty("value", JsoupUtil.parseHtmlToString(object.getShelfMark()));
			jsonArray.add(innerObject);
		}

		return gson.toJson(jsonArray);
	}
	
	/**
	 * Method will generate a JSON Array string for description property.
	 * @param object
	 * @return
	 */
	private String generateDescriptionProperty(FolioObject object) {
		Gson gson = new Gson();
		List<String> descriptionList = new ArrayList<String>();
		
		if (StringUtils.isNotBlank(object.getScript())) {
			descriptionList.add(JsoupUtil.parseHtmlToString(object.getScript()));
		}

		if (StringUtils.isNotBlank(object.getWritingSystem())) {
			descriptionList.add(JsoupUtil.parseHtmlToString(object.getWritingSystem()));
		}
		
		return gson.toJson(descriptionList);
	}
	
	/**
	 * Method will generate a JSON Array string for citation property.
	 * @param object
	 * @return
	 */
	private String generateCitationProperty(FolioObject object) {
		Gson gson = new Gson();
		List<String> citationList = new ArrayList<String>();
		
		if (StringUtils.isNotBlank(object.getBibliography())) {
			citationList.add(JsoupUtil.parseHtmlToString(object.getBibliography()));
		}
		
		return gson.toJson(citationList);
	}
	
	/**
	 * Method will generate a JSON Array string for inLanguage property.
	 * @param object
	 * @return
	 */
	private String generateInLanguageProperty(FolioObject object) {
		Gson gson = new Gson();
		List<String> languageList = new ArrayList<String>();
		
		if (StringUtils.isNotBlank(object.getLanguage())) {
			languageList.add(object.getLanguage());
		}
		
		return gson.toJson(languageList);
	}
	
	/**
	 * Method will generate a JSON string for contributor property.
	 * @param object
	 * @return
	 */
	private String generateContributorProperty(FolioObject object) {
		Gson gson = new Gson();
		JsonObject innerObject = new JsonObject();
		
		if (StringUtils.isNotEmpty(object.getAcknowledgements())) {
			innerObject.addProperty("@type", "Place");
			innerObject.addProperty("name", JsoupUtil.parseHtmlToString(object.getAcknowledgements()));
		}
		
		return gson.toJson(innerObject);
	}
	
	/**
	 * Method will generate a JSON Array string for name property.
	 * @param object
	 * @return
	 */
	private String generateNameProperty(FolioObject object) {
		Gson gson = new Gson();
		List<String> nameList = new ArrayList<String>();
		
		if (StringUtils.isNotBlank(object.getTitle())) { 
			nameList.add(JsoupUtil.parseHtmlToString(object.getTitle()));
		}
		
		return gson.toJson(nameList);
	}
	
	/**
	 * Method will generate a JSON Array string for dateCreated property.
	 * @param object
	 * @return
	 */
	private String generateDateCreatedProperty(FolioObject object) {
		Gson gson = new Gson();
		List<String> dateCreatedList = new ArrayList<String>();
		
		if (StringUtils.isNotBlank(object.getDateCentury())) {
			dateCreatedList.add(object.getDateCentury());
		}
		
		if (object.getBeginDate() != null) {
			dateCreatedList.add(object.getBeginDate().toString());
		}
		
		if (object.getEndDate() != null) {
			dateCreatedList.add(object.getEndDate().toString());
		}
		
		return gson.toJson(dateCreatedList);
	}
	
	/**
	 * Method will generate a JSON string for locationCreated property.
	 * @param object
	 * @return
	 */
	private String generateLocationCreatedProperty(FolioObject object) {
		Gson gson = new Gson();
		JsonObject innerObject = new JsonObject();
		
		if (StringUtils.isNotBlank(object.getPlaceOfOrigin())) {
			innerObject.addProperty("@type", "Place");
			innerObject.addProperty("name", JsoupUtil.parseHtmlToString(object.getPlaceOfOrigin()));
		}
		
		return gson.toJson(innerObject);
	}

}
