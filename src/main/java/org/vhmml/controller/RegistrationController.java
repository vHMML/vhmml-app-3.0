package org.vhmml.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.apache.commons.lang3.StringEscapeUtils;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.vhmml.controller.helper.UserControllerHelper;
import org.vhmml.controller.helper.UserControllerHelper.SaveAction;
import org.vhmml.entity.Role;
import org.vhmml.entity.User;
import org.vhmml.exception.UserExistsException;
import org.vhmml.form.RegistrationForm;
import org.vhmml.service.UserService;
import org.vhmml.util.AddressUtil;

import com.fasterxml.jackson.databind.ObjectMapper;

@Controller
@RequestMapping("/registration")
public class RegistrationController extends BaseValidationController {
	
	private static ObjectMapper objectMapper = new ObjectMapper();
	
	@Autowired
	private UserService userService;	
	
	@Autowired
	private UserControllerHelper userControllerHelper;
	
	@Autowired
	private HomeController homeController;
	
	@RequestMapping(value = {"/{pageName}", "/{pageName}/"}, method = RequestMethod.GET)
	public ModelAndView getPage(@PathVariable("pageName") String pageName) {
		return new ModelAndView("registration/" + pageName);		
	}
	
	@RequestMapping(value = {"", "/", "/register"}, method = RequestMethod.GET)
	public ModelAndView viewRegistration() {		
		return userControllerHelper.getAccountSettingsView(SaveAction.REGISTER, null);
	}
	
	@RequestMapping(value = {"", "/", "/register"}, method = RequestMethod.POST)
	public ModelAndView register(@ModelAttribute @Valid RegistrationForm registrationForm, BindingResult result, HttpServletRequest request) throws IOException {
		ModelAndView modelAndView = new ModelAndView(UserController.VIEW_ACCOUNT_SETTINGS);		
		boolean errors = result.hasErrors();
		
		if (!errors) {
			User user = new User();
			BeanUtils.copyProperties(registrationForm, user);
			// user doesn't get any role until they are approved by an admin
			List<Role.Name> roles = new ArrayList<Role.Name>();
			
			try {				
				user = userService.createUser(user, roles);				
				Map<String, String> popupMessage = new HashMap<String, String>();
				StringBuilder message = new StringBuilder();
				
				// Message to be displayed to the user after registration.
				message.append("Thank you for registering!<br/><br/>")
					.append("Your account is now enabled. Please check your email inbox for a temporary password to login. ")
					.append("The first time you login, you will be prompted to set a new password. ")
					.append("If you don’t see an email from vHMML, make sure you check your spam folder or <a href=\"")
					.append(request.getContextPath()).append("/contact")
					.append("\">contact us</a>.<br/><br/>")
					.append("Please be aware that, because of HMML&apos;s agreements with the owning libraries, all applications for access to Reading Room must be reviewed by a HMML librarian. ")
					.append("If an HMML librarian finds problems with your application, we will disable your account and email you requesting the missing information. ")
					.append("You can read more about how we use this information on our <a href=\"")
					.append(request.getContextPath()).append("/privacy")
					.append("\">Privacy Policy</a> and our <a href=\"")
					.append(request.getContextPath()).append("/terms")
					.append("\">Terms of Use</a>.");
				
				popupMessage.put("title", "Registration Submitted");
				popupMessage.put("message", StringEscapeUtils.escapeJson(message.toString()));
				popupMessage.put("closeButtonLabel", "OK");
				modelAndView = homeController.index(request);
				modelAndView.addObject(UserControllerHelper.REQUEST_ATT_USER, user);	
				modelAndView.addObject(ControllerConstants.REQUEST_ATT_POPUP_MESSAGE, objectMapper.writeValueAsString(popupMessage));
			} catch(UserExistsException e) {
				result.rejectValue("username", null, "This email is already used. Are you re-registering? If so, please use a different email address");
				errors = true;				
			}			
		} 
		
		if(errors) {
			modelAndView.addObject(UserControllerHelper.REQUEST_COUNTRIES, AddressUtil.getCountries());
			modelAndView.addObject(UserControllerHelper.REQUEST_US_STATES, AddressUtil.getUsStates());
			modelAndView.addObject(UserControllerHelper.REQUEST_ATT_SAVE_ACCOUNT_SETTINGS_ACTION, "register");
			modelAndView.addObject(UserControllerHelper.REQUEST_ATT_REGISTRATION_FORM, registrationForm);
			addFieldErrorsToModel(modelAndView, result);
		}
		
		return modelAndView;
	}
	
	@ResponseBody
	@RequestMapping(value = "/validationRules", method = RequestMethod.GET)
	public Map<String, Map<String, Map<String, Object>>> getRegistrationValidationRules() {		
		return super.getValidationRules(RegistrationForm.class);
	}
}
