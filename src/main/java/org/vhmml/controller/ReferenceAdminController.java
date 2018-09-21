package org.vhmml.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;
import javax.validation.Valid;

import org.apache.commons.lang3.StringUtils;
import org.apache.log4j.Logger;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.vhmml.entity.Creator;
import org.vhmml.entity.Creator.Type;
import org.vhmml.entity.ReferenceCreator;
import org.vhmml.entity.ReferenceEntry;
import org.vhmml.entity.ReferenceTag;
import org.vhmml.entity.Tag;
import org.vhmml.form.ReferenceEntryForm;
import org.vhmml.service.ReferenceService;
import org.vhmml.util.FormBeanUtil;

import com.fasterxml.jackson.databind.DeserializationFeature;
import com.fasterxml.jackson.databind.ObjectMapper;

@Controller
@RequestMapping("/reference/admin")
public class ReferenceAdminController extends BaseValidationController {
	
	private static final Logger LOG = Logger.getLogger(ReferenceAdminController.class);
	
	public static final String VIEW_REFERENCE_IMPORT = "reference/import";
	public static final String VIEW_REFERENCE_EDIT = "reference/edit";
	
	public static final String ATT_REFERENCE_GROUPS = "referenceGroups";
	
	static final ObjectMapper objectMapper = new ObjectMapper();		
	
	@Autowired
	private ReferenceService referenceService;			
	
	static {
		objectMapper.configure(DeserializationFeature.FAIL_ON_UNKNOWN_PROPERTIES, false);
	}
	
	@RequestMapping(value = "/add", method = RequestMethod.GET)
	public ModelAndView viewAdd() {
		ModelAndView modelAndView = new ModelAndView(VIEW_REFERENCE_EDIT);
		modelAndView.addObject("referenceEntryForm", new ReferenceEntryForm());
		modelAndView.addObject("entryTypes", ReferenceEntry.Type.values());
		
		return modelAndView;
	}
	
	@RequestMapping(value = "/edit/{id}", method = RequestMethod.GET)
	public ModelAndView edit(@PathVariable Long id) {
		ModelAndView modelAndView = new ModelAndView(VIEW_REFERENCE_EDIT);
		ReferenceEntry entry = referenceService.getEntry(id);
		modelAndView.addObject("referenceEntryForm", new ReferenceEntryForm(entry));
		modelAndView.addObject("entryTypes", ReferenceEntry.Type.values());
		
		return modelAndView;
	}
	
	@ResponseBody
	@RequestMapping(value = {"/searchTags", "/searchTags/"}, method = RequestMethod.GET)
	public List<String> searchTags(@RequestParam String term) {
		List<String> tagNames = new ArrayList<String>();
		
		List<Tag> tags = referenceService.searchTags(term);
		
		for(Tag tag : tags) {
			tagNames.add(tag.getTag());
		}		
		
		return tagNames;
	}
	
	@RequestMapping(value = "/save", method = RequestMethod.POST)
	public ResponseEntity<Object> saveEntry(@ModelAttribute @Valid ReferenceEntryForm form, BindingResult result, String successView, HttpServletResponse response) {		
		ResponseEntity<Object> saveResponse = null;		
		boolean formValidationErrors = result.hasErrors();

		try {
			if (!formValidationErrors) {
				ReferenceEntry referenceEntry = new ReferenceEntry();
				BeanUtils.copyProperties(form, referenceEntry);				
				List<ReferenceTag> referenceTags = new ArrayList<>();
				
				if(StringUtils.isNotEmpty(form.getTags())) {
					String[] tagsArray = form.getTags().split("\\|");
					for(String tag : tagsArray) {
						referenceTags.add(new ReferenceTag(referenceEntry, new Tag(tag)));
					}
				}
								
				referenceEntry.addReferenceTags(referenceTags);
				
				List<ReferenceCreator> referenceCreators = getReferenceCreators(referenceEntry, Type.AUTHOR, form.getAuthors());
				referenceCreators.addAll(getReferenceCreators(referenceEntry, Type.EDITOR, form.getEditors()));
				referenceCreators.addAll(getReferenceCreators(referenceEntry, Type.CONTRIBUTOR, form.getContributors()));
				referenceCreators.addAll(getReferenceCreators(referenceEntry, Type.DIRECTOR, form.getDirectors()));
				referenceEntry.addReferenceCreators(referenceCreators);
				referenceEntry = referenceService.saveEntry(referenceEntry);
				Map<String, Object> responseParams = new HashMap<>();
				responseParams.put("message", "Changes saved successfully.");
				responseParams.put("referenceEntryId", referenceEntry.getId());
				saveResponse = new ResponseEntity<Object>(responseParams, HttpStatus.OK);
			} else {			
				saveResponse = new ResponseEntity<Object>(result.getAllErrors(), HttpStatus.BAD_REQUEST);						
			}
		} catch(Exception e) {
			LOG.error("Unexpected error saving reference entry", e);
			saveResponse = new ResponseEntity<Object>("There was an unexpected error while trying to save. Please contact the system administrator if the problem persists.", HttpStatus.INTERNAL_SERVER_ERROR);
		}		

		return saveResponse;
	}
	
	@SuppressWarnings("unchecked")
	private List<ReferenceCreator> getReferenceCreators(ReferenceEntry entry, Creator.Type creatorType, List<Creator> creators) {
		creators = (List<Creator>)FormBeanUtil.getPopulatedList(creators);		
		List<ReferenceCreator> referenceCreators = new ArrayList<>();
				
		for(Creator creator : creators) {	
			if(StringUtils.isNotEmpty(creator.getName()) || (StringUtils.isNotEmpty(creator.getFirstName()) && StringUtils.isNotEmpty(creator.getLastName()))) {
				referenceCreators.add(new ReferenceCreator(creator, creatorType, entry));
			}			
		}
		
		return referenceCreators;
	}
	
	@ResponseBody
	@RequestMapping(value = "/delete/{id}", method = RequestMethod.DELETE)
	public ResponseEntity<String> deleteEntry(@PathVariable("id") Long id) throws IOException {
		ResponseEntity<String> response = new ResponseEntity<String>("Citation removed successfully.", HttpStatus.OK);
		
		try {
			referenceService.deleteEntry(id);
		} catch(Exception e) {
			LOG.error("Exception attempting to delete reference entry for id " + id, e);
			response = new ResponseEntity<String>("An unexpected error occured while attempting to remove the reference citation. Please check the server logs for more details", HttpStatus.INTERNAL_SERVER_ERROR);
		}		
				
		return response;
	}
	
	@ResponseBody
	@RequestMapping(value = "/validationRules", method = RequestMethod.GET)
	public Map<String, Map<String, Map<String, Object>>> getReferenceEntryValidationRules() {
		return super.getValidationRules(ReferenceEntryForm.class);
	}	
}
