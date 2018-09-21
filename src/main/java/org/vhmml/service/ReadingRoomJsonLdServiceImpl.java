package org.vhmml.service;

import java.util.ArrayList;
import java.util.List;

import org.apache.commons.collections.CollectionUtils;
import org.apache.commons.lang3.StringUtils;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.vhmml.entity.JsonLd;
import org.vhmml.entity.JsonLd.JsonLdProperty;
import org.vhmml.entity.ReadingRoomJsonLd;
import org.vhmml.entity.readingroom.ArchivalData;
import org.vhmml.entity.readingroom.ArchivalObject;
import org.vhmml.entity.readingroom.BibliographyUrl;
import org.vhmml.entity.readingroom.Content;
import org.vhmml.entity.readingroom.Contributor;
import org.vhmml.entity.readingroom.Feature;
import org.vhmml.entity.readingroom.Genre;
import org.vhmml.entity.readingroom.Language;
import org.vhmml.entity.readingroom.ReadingRoomObject;
import org.vhmml.entity.readingroom.ReadingRoomObjectContributor;
import org.vhmml.entity.readingroom.ReadingRoomObjectPart;
import org.vhmml.entity.readingroom.Subject;
import org.vhmml.service.ApplicationConfigService.Property;
import org.vhmml.util.JsoupUtil;

import com.google.gson.Gson;
import com.google.gson.JsonArray;
import com.google.gson.JsonObject;

@Service
public class ReadingRoomJsonLdServiceImpl implements ReadingRoomJsonLdService {
	
	private static final Logger LOG = Logger.getLogger(ReadingRoomJsonLdServiceImpl.class);
	
	@Autowired
	private ApplicationConfigService appConfigService;
	
	@Override
	public JsonLd createReadingRoomJsonLdObject(ReadingRoomObject object) {
		ReadingRoomJsonLd jsonLd = new ReadingRoomJsonLd();
		
		jsonLd.setId(object.getId());
		
		if (object.isPublicManifest()) {
			jsonLd.setUrlProperty(generateUrlProperty(object));
		}
		
		
		// Values for JSON LD properties for all object types
		jsonLd.setObjectType(object.getObjectType());
		
		jsonLd.setProviderProperty(generateProviderProperty(object));
		
		jsonLd.setIdentifierProperty(generateIdentifierProperty(object));
		
		jsonLd.setDescriptionProperty(generateDescriptionProperty(object));
		
		if (StringUtils.isNotBlank(object.getBibliography()) || CollectionUtils.isNotEmpty(object.getExternalBibliographyUrls())) {
			jsonLd.setCitationProperty(generateCitationProperty(object));
		}
		
		if (StringUtils.isNotBlank(object.getSupport())) {
			jsonLd.setSupport(object.getSupport());
		}
		
		if (CollectionUtils.isNotEmpty(object.getGenres())) {
			jsonLd.setGenreProperty(generateGenreProperty(object));
		}
		
		if (CollectionUtils.isNotEmpty(object.getSubjects())) {
			jsonLd.setAboutProperty(generateAboutProperty(object));
		}
		
		if (StringUtils.isNotBlank(object.getLanguageDisplay())) {
			jsonLd.setInLanguageProperty(generateInLanguageProperty(object));
		}
		
		if (CollectionUtils.isNotEmpty(object.getContributors())) {
			jsonLd.setContributorProperty(generateContributorProperty(object));
		}
		
		if (CollectionUtils.isNotEmpty(object.getAuthors())) {
			jsonLd.setCreatorProperty(generateCreatorProperty(object));
		}
		
		// Check if the parts that are a part of the object has any of the following titles:
		// titleNs, provisional title, and uniform title
		// If it does, then pull them for the name property.
		if (doValuesExistInPartsOrContents(object, JsonLdProperty.NAME)) {
			jsonLd.setNameProperty(generateNameProperty(object));
		}
		
		if (doValuesExistInPartsOrContents(object, JsonLdProperty.ALTERNATE_NAME)) {
			jsonLd.setAlternateNameProperty(generateAlternateNameProperty(object));
		}
		
		if (doValuesExistInPartsOrContents(object, JsonLdProperty.DATE_CREATED)) {
			jsonLd.setDateCreatedProperty(generateDateCreatedProperty(object));
		}
		
		// JSON LD properties only for PRINT and MANUSCRIPT_PRINT
		if (doValuesExistInPartsOrContents(object, JsonLdProperty.LOCATION_CREATED)) {
			jsonLd.setLocationCreatedProperty(generateLocationCreatedProperty(object));
		}
		
		return jsonLd;
	}
	
	/**
	 * Method will generate a JSON Array string for the url property.
	 * @param object
	 * @return
	 */
	private String generateUrlProperty(ReadingRoomObject object) {
		String permalink = appConfigService.getValue(Property.PERMALINK_URL);
		Gson gson = new Gson();
		List<String> urlList = new ArrayList<String>();
		
		if (object.isPublicManifest()) {
			String manifestUrl = new StringBuilder("https://")
					.append(permalink)
					.append("/image/manifest/")
					.append(object.getId())
					.toString();
			
			urlList.add(manifestUrl);
		}
		
		return gson.toJson(urlList);
	}
	
	/**
	 * Method will check if values exist for the fields needed for the JSON LD property in parts and in contents of parts of an object.
	 * @param object
	 * @param jsonLdProperty
	 * @return
	 */
	private boolean doValuesExistInPartsOrContents(ReadingRoomObject object, JsonLdProperty jsonLdProperty) {
		if(CollectionUtils.isNotEmpty(object.getParts())) {
			for(ReadingRoomObjectPart part : object.getParts()) {
				
				// Check for fields used in dateCreated if the JsonLdProperty is for that property.
				if (jsonLdProperty.equals(JsonLdProperty.DATE_CREATED) && (StringUtils.isNotBlank(part.getYearRange()) 
						|| StringUtils.isNotBlank(part.getCenturyDisplay())
						|| StringUtils.isNotBlank(part.getNativeDatePrecise()))) {
					return true;
				}
				
				// Check for fields used in locationCreated if the JsonLdProperty is for that property.
				if (jsonLdProperty.equals(JsonLdProperty.LOCATION_CREATED) && (StringUtils.isNotBlank(part.getPlaceOfOrigin()))) {
					return true;
				}
				
				if (doValuesExistInContents(part, jsonLdProperty)) {
					return true;
				}
			}
		}
		return false;
	}
	
	/**
	 * Method will check if values exist for the fields needed for the JSON LD property in contents of parts of an object.
	 * @param part
	 * @param jsonLdProperty
	 * @return
	 */
	private boolean doValuesExistInContents(ReadingRoomObjectPart part, JsonLdProperty jsonLdProperty) {
		if(CollectionUtils.isNotEmpty(part.getContents())) {
			for(Content content : part.getContents()) {
				
				// Check for fields used in name if the JsonLdProperty is for that property.
				if (jsonLdProperty.equals(JsonLdProperty.NAME) 
						&& (StringUtils.isNotBlank(content.getProvisionalTitle())
							|| StringUtils.isNotBlank(content.getTitleNs())
							|| (content.getUniformTitle() != null 
								&& StringUtils.isNotBlank(content.getUniformTitle().getName())))) {
						return true;
				}
				
				// Check for fields used in alternateName if the JsonLdProperty is for that property.
				if (jsonLdProperty.equals(JsonLdProperty.ALTERNATE_NAME) 
						&& CollectionUtils.isNotEmpty(content.getAlternateTitles())) {
						return true;
				}
			}
		}
		
		return false;
	}
	
	/**
	 * Method will generate a JSON Array string for the locationCreated property.
	 * @param object
	 * @return
	 */
	private String generateLocationCreatedProperty(ReadingRoomObject object) {
		Gson gson = new Gson();
		JsonObject innerObject;
		JsonArray jsonArray = new JsonArray();
		
		// Check if the object has parts...
		if(CollectionUtils.isNotEmpty(object.getParts())) {
			for(ReadingRoomObjectPart part : object.getParts()) {
				if (StringUtils.isNotBlank(part.getPlaceOfOrigin())) {
					innerObject = new JsonObject();
					innerObject.addProperty("@type", "Place");
					innerObject.addProperty("name", JsoupUtil.parseHtmlToString(part.getPlaceOfOrigin()));
					jsonArray.add(innerObject);
				}
			}
		}
		
		return gson.toJson(jsonArray);
	}
	
	/**
	 * Method will generate a JSON Array string for the identifier property.
	 * @param object
	 * @return
	 */
	private String generateIdentifierProperty(ReadingRoomObject object) {
		Gson gson = new Gson();
		JsonObject innerObject;
		JsonArray jsonArray = new JsonArray();
		
		// Add HMML projec number (required)
		innerObject = new JsonObject();
		innerObject.addProperty("@type", "PropertyValue");
		innerObject.addProperty("propertyID", "HMML Project Number");
		innerObject.addProperty("value", JsoupUtil.parseHtmlToString(object.getHmmlProjectNumber()));
		jsonArray.add(innerObject);
		
		// Check and then add shelf mark (optional)
		if (StringUtils.isNotBlank(object.getShelfMark())) {
			innerObject = new JsonObject();
			innerObject.addProperty("@type", "PropertyValue");
			innerObject.addProperty("propertyID", "Shelf Mark");
			innerObject.addProperty("value", JsoupUtil.parseHtmlToString(object.getShelfMark()));
			jsonArray.add(innerObject);
		}
		
		// If the incoming object is an archival object, then add the following fields for it
		// if they have values.
		if (ReadingRoomObject.Type.ARCHIVAL_OBJECT.equals(object.getObjectType())) {
			ArchivalData archivalData = ((ArchivalObject)object).getArchivalData();
			
			// Check for the archival collection value.
			if (StringUtils.isNotBlank(archivalData.getCollectionFond())) {
				innerObject = new JsonObject();
				innerObject.addProperty("@type", "PropertyValue");
				innerObject.addProperty("propertyID", "Collection");
				innerObject.addProperty("value", JsoupUtil.parseHtmlToString(archivalData.getCollectionFond()));
				jsonArray.add(innerObject);
			}
			
			// Check for the archival series value.
			if (StringUtils.isNotBlank(archivalData.getSeries())) {
				innerObject = new JsonObject();
				innerObject.addProperty("@type", "PropertyValue");
				innerObject.addProperty("propertyID", "Series");
				innerObject.addProperty("value", JsoupUtil.parseHtmlToString(archivalData.getSeries()));
				jsonArray.add(innerObject);
			}
			
			// Check for the archival sub-series value.
			if (StringUtils.isNotBlank(archivalData.getSubSeries())) {
				innerObject = new JsonObject();
				innerObject.addProperty("@type", "PropertyValue");
				innerObject.addProperty("propertyID", "Sub-Series");
				innerObject.addProperty("value", JsoupUtil.parseHtmlToString(archivalData.getSubSeries()));
				jsonArray.add(innerObject);
			}
			
			// Check for the archival sub-sub-series value.
			if (StringUtils.isNotBlank(archivalData.getSubSubSeries())) {
				innerObject = new JsonObject();
				innerObject.addProperty("@type", "PropertyValue");
				innerObject.addProperty("propertyID", "Sub-Sub-Series");
				innerObject.addProperty("value", JsoupUtil.parseHtmlToString(archivalData.getSubSubSeries()));
				jsonArray.add(innerObject);
			}
		}
		
		return gson.toJson(jsonArray);
	}
	
	/**
	 * Method will generate JSON Array string for alternateName property.
	 * @param object
	 * @return
	 */
	private String generateAlternateNameProperty(ReadingRoomObject object) {
		Gson gson = new Gson();
		List<String> alternateNameList = new ArrayList<String>();
		
		// Check if the object has parts...
		if(CollectionUtils.isNotEmpty(object.getParts())) {
			for(ReadingRoomObjectPart part : object.getParts()) {
				
				// Check if the part has contents...
				if(CollectionUtils.isNotEmpty(part.getContents())) {
					for(Content content : part.getContents()) {
						
						// Check if the content has alternate titles...
						if (CollectionUtils.isNotEmpty(content.getAlternateTitles())) {
							for (String alternateTitle : content.getAlternateTitles()) {
								
								// If the alternate title isn't already in the list, then
								// add it.
								if (!alternateNameList.contains(alternateTitle)) {
									alternateNameList.add(JsoupUtil.parseHtmlToString(alternateTitle));
								}
							}
						}
					}
				}
			}
		}
		
		return gson.toJson(alternateNameList);
	}

	/**
	 * Method will generate JSON Array string for the dateCreated property.
	 * 
	 * @param object
	 * @return
	 */
	private String generateDateCreatedProperty(ReadingRoomObject object) {
		Gson gson = new Gson();
		List<String> dateCreatedList = new ArrayList<String>();
		
		if(CollectionUtils.isNotEmpty(object.getParts())) {
			for(ReadingRoomObjectPart part : object.getParts()) {
				if (StringUtils.isNotBlank(part.getYearRange())
						&& !dateCreatedList.contains(part.getYearRange())) {
					dateCreatedList.add(part.getYearRange());
				}
				
				if (StringUtils.isNotBlank(part.getCenturyDisplay())
						&& !dateCreatedList.contains(part.getCenturyDisplay())) {
					dateCreatedList.add(part.getCenturyDisplay());
				}
				
				if (StringUtils.isNotBlank(part.getNativeDatePrecise())
						&& !dateCreatedList.contains(part.getNativeDatePrecise())) {
					dateCreatedList.add(part.getNativeDatePrecise());
				}
			}
		}
		
		return gson.toJson(dateCreatedList);
	}
	
	/**
	 * Method will generate a JSON Array string for the name property.
	 * 
	 * @param object
	 * @return
	 */
	private String generateNameProperty(ReadingRoomObject object) {
		Gson gson = new Gson();
		List<String> titleList = new ArrayList<String>();
		
		if(CollectionUtils.isNotEmpty(object.getParts())) {
			for(ReadingRoomObjectPart part : object.getParts()) {
				if(CollectionUtils.isNotEmpty(part.getContents())) {
					for(Content content : part.getContents()) {
						if (StringUtils.isNotBlank(content.getProvisionalTitle())
								&& !titleList.contains(content.getProvisionalTitle())) {
							titleList.add(JsoupUtil.parseHtmlToString(content.getProvisionalTitle()));
						}
						
						if (StringUtils.isNotBlank(content.getTitleNs())
								&& !titleList.contains(content.getTitleNs())) {
							titleList.add(JsoupUtil.parseHtmlToString(content.getTitleNs()));
						}
						
						if (content.getUniformTitle() != null 
								&& StringUtils.isNotBlank(content.getUniformTitle().getName())
								&& !titleList.contains(content.getUniformTitle().getName())) {
							titleList.add(JsoupUtil.parseHtmlToString(content.getUniformTitle().getName()));
						}
					}
				}
			}
		}
		
		return gson.toJson(titleList);
	}
	
	/**
	 * Method will generate the JSON Array string for the creator property.
	 * @param object
	 * @return
	 */
	private String generateCreatorProperty(ReadingRoomObject object) {
		Gson gson = new Gson();
		JsonObject innerObject;
		JsonArray jsonArray = new JsonArray();
		
		if (CollectionUtils.isNotEmpty(object.getAuthors())) {
			for (Contributor creator : object.getAuthors()) {
				innerObject = new JsonObject();
				innerObject.addProperty("@type", "Person");
				innerObject.addProperty("name", JsoupUtil.parseHtmlToString(creator.getPopulatedName()));
				jsonArray.add(innerObject);
			}
		}
		
		return gson.toJson(jsonArray);
	}
	
	/**
	 * Method will generate the JSON Array string for the contributor property.
	 * @param object
	 * @return
	 */
	private String generateContributorProperty(ReadingRoomObject object) {
		Gson gson = new Gson();
		JsonObject innerObject;
		JsonArray jsonArray = new JsonArray();
		
		if (CollectionUtils.isNotEmpty(object.getContributors())) {
			for (ReadingRoomObjectContributor contributor : object.getContributors()) {
				if (!(contributor.getType()).equals(Contributor.Type.AUTHOR)) {
					innerObject = new JsonObject();
					innerObject.addProperty("@type", "Person");
					innerObject.addProperty("name", JsoupUtil.parseHtmlToString(contributor.getContributor().getPopulatedName()));
					jsonArray.add(innerObject);
				}
			}
		}
		
		return gson.toJson(jsonArray);
	}
	
	/**
	 * Method will generate the JSON Array for the language property using the languages found in the contents of parts.
	 * @param object
	 * @return
	 */
	private String generateInLanguageProperty(ReadingRoomObject object) {
		List<String> languageList = new ArrayList<String>();
		Gson gson = new Gson();
		
		if(CollectionUtils.isNotEmpty(object.getParts())) {
			for(ReadingRoomObjectPart part : object.getParts()) {
				if(CollectionUtils.isNotEmpty(part.getContents())) {
					for(Content content : part.getContents()) {
						if(CollectionUtils.isNotEmpty(content.getLanguages())) {
							for(Language language : content.getLanguages()) {
								if(!languageList.contains(language.getName())) {
									languageList.add(JsoupUtil.parseHtmlToString(language.getName()));
								}
							}
						}
					}
				}
			}
		}
		
		return gson.toJson(languageList);
	}
	
	/**
	 * Method will generate a JSON Array for the provider value.
	 * @param object
	 * @return
	 */
	private String generateProviderProperty(ReadingRoomObject object) {
		Gson gson = new Gson();
		JsonArray jsonArray = new JsonArray();
		JsonObject innerObject;
		JsonObject addressObject;
		
		// If holding institution value isn't null, we want to add it too for the provider property.
		if (object.getHoldingInstitution() != null) {
			innerObject = new JsonObject();
			innerObject.addProperty("@type", "Organization");
			innerObject.addProperty("name", JsoupUtil.parseHtmlToString(object.getHoldingInstitution().getName()));
		}
		
		innerObject = new JsonObject();
		addressObject = new JsonObject();
		
		innerObject.addProperty("@type", "Organization");
		innerObject.addProperty("name", JsoupUtil.parseHtmlToString(object.getRepository().getName()));
		
		// Add address property to the repository object
		addressObject.addProperty("@type", "PostalAddress");
		addressObject.addProperty("addressLocality", JsoupUtil.parseHtmlToString(object.getCity().getName()));
		addressObject.addProperty("addressCountry", JsoupUtil.parseHtmlToString(object.getCountry().getName()));
		
		innerObject.add("address", addressObject);
		
		jsonArray.add(innerObject);
		
		return gson.toJson(jsonArray);
	}
	
	/**
	 * Method will generate a JSON Array string for the about property.
	 * @param object
	 * @return
	 */
	private String generateAboutProperty(ReadingRoomObject object) {
		Gson gson = new Gson();
		JsonArray jsonArray = new JsonArray();
		
		for (Subject subject : object.getSubjects()) {
			JsonObject innerObject = new JsonObject();
			innerObject.addProperty("@type", "Thing");
			innerObject.addProperty("name", JsoupUtil.parseHtmlToString(subject.getName()));
			jsonArray.add(innerObject);
		}
		
		return gson.toJson(jsonArray);
	}
	
	/**
	 * Method will generate the JSON Array string for the genre property.
	 * @param object
	 * @return
	 */
	private String generateGenreProperty(ReadingRoomObject object) {
		Gson gson = new Gson();
		List<String> genreList = new ArrayList<String>();
		
		for (Genre genre : object.getGenres()) {
			genreList.add(genre.getName());
		}
		
		return gson.toJson(genreList);
	}
	
	/**
	 * Method will generate the JSON Array string for the citation property.
	 * @param object
	 * @return
	 */
	private String generateCitationProperty(ReadingRoomObject object) {
		Gson gson = new Gson();
		List<String> citationList = new ArrayList<String>();
		
		if (StringUtils.isNotBlank(object.getBibliography())) {
			citationList.add(JsoupUtil.parseHtmlToString(object.getBibliography()));
		}
		
		if (CollectionUtils.isNotEmpty(object.getExternalBibliographyUrls())) {
			for (BibliographyUrl url : object.getExternalBibliographyUrls()) {
				citationList.add(JsoupUtil.parseHtmlToString(url.getLinkText()));
			}
		}
		
		return gson.toJson(citationList); 
	}
	
	/**
	 * Method will generate the JSON Array string for the description property.
	 * @param object
	 * @return
	 */
	private String generateDescriptionProperty(ReadingRoomObject object) {
		List<String> descriptionList = new ArrayList<String>();
		Gson gson = new Gson();
		
		descriptionList.add(JsoupUtil.parseHtmlToString(object.getObjectType().getDisplayName()));
		descriptionList.add(JsoupUtil.parseHtmlToString(object.getSurrogateFormat().getName()));
		
		// Check features, if it exists, use it.  Or else check features imported, if it exists, use that instead. Else skip.
		if (CollectionUtils.isNotEmpty(object.getFeatures())) {
			for (Feature feature : object.getFeatures()) {
				descriptionList.add(JsoupUtil.parseHtmlToString(feature.getName()));
			}
		} else if (StringUtils.isNotBlank(object.getFeaturesImported())) {
			descriptionList.add(JsoupUtil.parseHtmlToString(object.getFeaturesImported()));
		}
		
		// Check scripts, if they exist, grab them.  If not, skip.
		if (CollectionUtils.isNotEmpty(object.getParts())) {
			for (ReadingRoomObjectPart part : object.getParts()) {
				// Check to make sure that the script property isn't blank and that the 
				// description list doesn't already contain the script, then add it.
				if (StringUtils.isNotBlank(part.getScript()) && !descriptionList.contains(part.getScript())) {
					descriptionList.add(JsoupUtil.parseHtmlToString(part.getScript()));
				}
			
				// Check decorations, if they exist, grab them.  If not, skip.
				if (StringUtils.isNotBlank(part.getDecoration()) && !descriptionList.contains(part.getDecoration())) {
					descriptionList.add(JsoupUtil.parseHtmlToString(part.getDecoration()));
				}
			}
		}
		
		return gson.toJson(descriptionList);
	}
}
