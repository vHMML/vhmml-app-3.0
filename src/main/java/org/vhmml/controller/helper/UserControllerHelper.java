package org.vhmml.controller.helper;

import java.io.IOException;
import java.util.Date;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Component;
import org.springframework.validation.BindingResult;
import org.springframework.web.servlet.ModelAndView;
import org.vhmml.controller.BaseValidationController;
import org.vhmml.controller.ControllerConstants;
import org.vhmml.controller.UserController;
import org.vhmml.entity.User;
import org.vhmml.exception.UserExistsException;
import org.vhmml.form.RegistrationForm;
import org.vhmml.service.UserService;
import org.vhmml.util.AddressUtil;
import org.vhmml.web.VhmmlMessage;
import org.vhmml.web.VhmmlMessage.Severity;

import com.fasterxml.jackson.databind.ObjectMapper;

/**
 * This helper class exists to encapsulate the logic for saving user account information that is 
 * used by both the UserController when users save their own account information and also by the
 * AdminController when an administrator saves account information for other users.
 *
 */
@Component
public class UserControllerHelper extends BaseValidationController {

	public static final String REQUEST_ATT_USER = "user";			
	public static final String REQUEST_ATT_SAVE_ACCOUNT_SETTINGS_ACTION = "saveAccountSettingsAction";
	public static final String REQUEST_ATT_REGISTRATION_FORM = "registrationForm";
	public static final String REQUEST_COUNTRIES = "countries";
	public static final String REQUEST_US_STATES = "usStates";
	public static final String REQUEST_OLD_ADDRESS_BOOLEAN = "showOldAddress";
	
	public enum SaveAction {
		REGISTER("register"),
		SAVE_ACCOUNT_SETTINGS("accountSettings"),
		ADMIN_SAVE_ACCOUNT_SETTINGS("adminAccountSettings");
		
		private String name;
		
		SaveAction(String name) {
			this.name = name;
		}
		
		public String getName() {
			return name;
		}
	}
	
	@Autowired
	private UserService userService;
	
	private static final ObjectMapper objectMapper = new ObjectMapper();
	
	public UserControllerHelper() {
		super();
	}
	
	public ModelAndView getAccountSettingsView(SaveAction saveAction, User user) {
		ModelAndView modelAndView = new ModelAndView(UserController.VIEW_ACCOUNT_SETTINGS);
		RegistrationForm registrationForm = new RegistrationForm();
		
		if(user != null) {
			BeanUtils.copyProperties(user, registrationForm);
		}
		
		modelAndView.addObject(REQUEST_COUNTRIES, AddressUtil.getCountries());
		modelAndView.addObject(REQUEST_US_STATES, AddressUtil.getUsStates());
		modelAndView.addObject(REQUEST_OLD_ADDRESS_BOOLEAN, this.determineOldAddressVisibility(registrationForm));
		modelAndView.addObject(REQUEST_ATT_REGISTRATION_FORM, registrationForm);
		modelAndView.addObject(REQUEST_ATT_SAVE_ACCOUNT_SETTINGS_ACTION, saveAction.getName());

		return modelAndView;
	}
	
	private boolean determineOldAddressVisibility(RegistrationForm registrationForm) {
		// Return boolean depending on if the user has an old address and if the new addressOne field is blank or not.
		// Return true if the user has an old address value and has not updated to the new address fields.
		// Return false (don't show old address) if the user has updated to the new address fields.
		return StringUtils.isNotBlank(registrationForm.getAddress()) && StringUtils.isBlank(registrationForm.getAddressOne());
	}
	
	public ModelAndView saveAccountSettings(RegistrationForm registrationForm, BindingResult result, ModelAndView successModelAndView, boolean updateUsageAgreementDate) throws IOException {
		ModelAndView modelAndView = new ModelAndView(UserController.VIEW_ACCOUNT_SETTINGS);		
		boolean errors = result.hasErrors();
		Long userId = registrationForm.getId();
		Boolean enable = registrationForm.getEnabled();
		
		if (!errors) {
			User user = userService.findByUsername(registrationForm.getUsername());
			BeanUtils.copyProperties(registrationForm, user);			
			
			if(updateUsageAgreementDate) {
				user.setUsageAgreementAcceptedDate(new Date());
			}
			
			try {
				// Save the user first
				user = userService.saveUser(user);
				
				// Check if the user is being enabled.
				if(enable) {
					userService.enableUser(userId);
				} else {
					userService.disableUser(userId);
				}				
					
				User authenticatedUser = (User)SecurityContextHolder.getContext().getAuthentication().getPrincipal();
				
				// if the logged in user is updating their own settings, copy the changes to the auth object so they're reflected immediately
				if(user.getId().equals(authenticatedUser.getId())) {
					BeanUtils.copyProperties(user, authenticatedUser);
				}
								
				modelAndView = successModelAndView;
				modelAndView.addObject(REQUEST_ATT_USER, user);
				VhmmlMessage message = new VhmmlMessage("Account settings saved successfully.");
				modelAndView.addObject(ControllerConstants.REQUEST_ATT_PAGE_MESSAGES, objectMapper.writeValueAsString(message));
			} catch(UserExistsException e) {
				result.rejectValue("username", null, e.getMessage());
				errors = true;				
			} catch(Exception e) {
				VhmmlMessage message = new VhmmlMessage("Save account settings failed, an unexpected error occurred. Please contact the system administrator if this error continues to occur.", Severity.ERROR);
				modelAndView.addObject(ControllerConstants.REQUEST_ATT_PAGE_MESSAGES, objectMapper.writeValueAsString(message));
				errors = true;				
			}			
		} 
		
		if(errors) {			
			modelAndView.addObject(REQUEST_ATT_SAVE_ACCOUNT_SETTINGS_ACTION, "accountSettings");
			modelAndView.addObject(REQUEST_ATT_REGISTRATION_FORM, registrationForm);
			addFieldErrorsToModel(modelAndView, result);
		}
		
		return modelAndView;
	}
}
