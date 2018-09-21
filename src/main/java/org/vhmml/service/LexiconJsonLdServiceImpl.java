package org.vhmml.service;

import java.util.ArrayList;
import java.util.List;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.vhmml.entity.JsonLd;
import org.vhmml.entity.LexiconTerm;
import org.vhmml.service.ApplicationConfigService.Property;
import org.vhmml.util.JsoupUtil;

import com.google.gson.Gson;

@Service
public class LexiconJsonLdServiceImpl implements LexiconJsonLdService {
	
	@Autowired
	private ApplicationConfigService appConfigService;
	
	/**
	 * Method will create a JsonLd object for a Lexicon term.
	 */
	@Override
	public JsonLd createLexiconJsonLdObject(LexiconTerm term) {
		String[] termsList = {
				term.getFrenchTerms(),
				term.getLatinTerms(),
				term.getGermanTerms(),
				term.getItalianTerms(),
				term.getSpanishTerms(),
				term.getArabicTerms(),
				term.getArmenianTerms(),
				term.getSyriacTerms(),
				term.getAmharicTerms(),
				term.getPortugueseTerms()
		};
		JsonLd jsonLd = new JsonLd();
		
		jsonLd.setId(term.getId());
		
		jsonLd.setNameProperty(generateNameProperty(term));
		jsonLd.setDescriptionProperty(generateDescriptionProperty(term));
		
		if (doAlternateNamesExist(termsList)) {
			jsonLd.setAlternateNameProperty(generateAlternateNameProperty(termsList));
		}
		
		jsonLd.setUrlProperty(generateUrlProperty(term));
		
		return jsonLd;
	}
	
	/**
	 * Method will generate a JSON Array string for the url property.
	 * @param term
	 * @return
	 */
	private String generateUrlProperty(LexiconTerm term) {
		String permalink = appConfigService.getValue(Property.PERMALINK_URL);
		Gson gson = new Gson();
		List<String> urlList = new ArrayList<String>();
		
		String permaLinkUrl = new StringBuilder("https://")
				.append(permalink)
				.append("/lexicon/definition/")
				.append(term.getId())
				.toString();
			
		urlList.add(permaLinkUrl);
		
		return gson.toJson(urlList);
	}
	
	/**
	 * Method will determine if there are any alternate names available for the term.
	 * @param termsList
	 * @return
	 */
	private boolean doAlternateNamesExist(String[] termsList) {
		for (int i = 0; i < termsList.length; i++) {
			if (StringUtils.isNotBlank(termsList[i])) {
				return true;
			}
		}
		
		return false;
	}
	
	/**
	 * Method will generate a JSON Array string for the alternate name property.
	 * @param termsList
	 * @return
	 */
	private String generateAlternateNameProperty(String[] termsList) {
		Gson gson = new Gson();
		List<String> alternateNameList = new ArrayList<String>();
		
		for (int i = 0; i < termsList.length; i++) {
			if (StringUtils.isNotBlank(termsList[i])) {
				alternateNameList.add(JsoupUtil.parseHtmlToString(termsList[i]));
			}
		}
		
		return gson.toJson(alternateNameList);
	}
	
	/**
	 * Method will generate a JSON Array string for the name property.
	 * @param term
	 * @return
	 */
	private String generateNameProperty(LexiconTerm term) {
		Gson gson = new Gson();
		List<String> nameList = new ArrayList<String>();
		
		if (StringUtils.isNotBlank(term.getTerm())) {
			nameList.add(JsoupUtil.parseHtmlToString(term.getTerm()));
		}
		
		return gson.toJson(nameList);
	}
	
	/**
	 * Method will generate a JSON Array string for description property.
	 * @param object
	 * @return
	 */
	private String generateDescriptionProperty(LexiconTerm term) {
		Gson gson = new Gson();
		List<String> descriptionList = new ArrayList<String>();
		
		if (StringUtils.isNotBlank(term.getShortDefinition())) {
			descriptionList.add(JsoupUtil.parseHtmlToString(term.getShortDefinition()));
		}
		
		return gson.toJson(descriptionList);
	}

}
