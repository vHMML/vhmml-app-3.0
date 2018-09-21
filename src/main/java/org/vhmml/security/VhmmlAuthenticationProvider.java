package org.vhmml.security;

import java.util.Date;
import java.util.List;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.BadCredentialsException;
import org.springframework.security.authentication.LockedException;
import org.springframework.security.authentication.dao.DaoAuthenticationProvider;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.AuthenticationException;
import org.vhmml.entity.User;
import org.vhmml.exception.UserExistsException;
import org.vhmml.service.ApplicationConfigService;
import org.vhmml.service.ApplicationConfigService.Property;
import org.vhmml.service.EmailService;
import org.vhmml.service.UserService;

public class VhmmlAuthenticationProvider extends DaoAuthenticationProvider {

	private static final Logger LOG = Logger.getLogger(VhmmlAuthenticationProvider.class);
	
	@Autowired
	private UserService userService;
	
	@Autowired
	private EmailService emailService;
	
	@Autowired
	private ApplicationConfigService configService;	
	
	public VhmmlAuthenticationProvider() {
		super();
	}

	public Authentication authenticate(Authentication authentication) throws AuthenticationException {
		Authentication auth = null;
		
		try {
			auth = super.authenticate(authentication);
		} catch(LockedException e) {
			LOG.error("LockedException in VhmmlAuthenticationProvider.authenticate", e);			
			throw new LockedException("Your account is locked. Please contact help@vhmml.org to reset your account.");
		} catch(BadCredentialsException e) {
			logFailedAuthentication(authentication);
			throw new BadCredentialsException("Sorry, we don\\'t recognize this email and/or password. Reset your password with the Forgot your password link. For security, we lock accounts after 3 failed attempts.", e);			
		} catch(AuthenticationException e) {
			LOG.error("Unexpected AuthenticationException in VhmmlAuthenticationProvider.authenticate", e);
			throw e;					
		}
		
		return auth;
	}
	
	private void logFailedAuthentication(Authentication authentication) {

		User user = getUserFromAuthentication(authentication);
		boolean lockAccount = false;
		
		if(user != null) {
			Date now = new Date();
			int failedLogins = user.getFailedLogins() == null ? 0 : user.getFailedLogins();
			user.setFailedLogins(failedLogins + 1);
			user.setLastFailedLogin(now);
			
			if(user.getFailedLogins() >= configService.getIntValue(Property.MAX_FAILED_LOGINS)) {				
				lockAccount = true;
			}
			
			user.setAccountLocked(lockAccount);			
			saveUser(user);
			
			if(lockAccount) {
				List<String> systemsLibrarianEmailList = configService.getValues(Property.SYSTEMS_LIB_EMAIL_LIST);
				
				for(String emailAddress : systemsLibrarianEmailList) {
					emailService.sendMessage(emailAddress, "vHMML User Account Locked", "The user account for the email address " + user.getUsername() + " has been locked due to multiple failed authentication attempts.");
				}
				
				throw new LockedException("Your account has been locked due to multiple failed login attempts. Please contact help@vhmml.org to reset your account.");
			}
		}
	}
	
	// This method is no longer called, we used to unlock a users account after 15 minutes if they were
	// locked out due to too many failed logins but this feature was removed. Leaving this method here
	// in case we want this feature to return in the future.
	private boolean isAccountLockExpired(User user) {
		boolean lockExpired = false;		
		
		if(user != null) {
			long fifteenMinMillis = 1000 * 60 * 15;
			Date now = new Date();
			Date fifteenMinAgo = new Date();
			fifteenMinAgo.setTime(now.getTime() - fifteenMinMillis);
			LOG.info("last failed login: " + user.getLastFailedLogin());
			LOG.info("15 min ago: " + fifteenMinAgo);
			
			if(user.getLastFailedLogin() != null && user.getLastFailedLogin().before(fifteenMinAgo)) {
				// they've waited 15 minutes, unlock the account and give them 7 more tries
				user.setFailedLogins(0);
				user.setAccountLocked(false);								
				saveUser(user);
				lockExpired = true;
			}
		}
		
		return lockExpired;
	}
		
	private User getUserFromAuthentication(Authentication authentication) {
		User user = null;
		Object username = authentication.getPrincipal();
		
		if(username.getClass().isAssignableFrom(String.class)) {
			user = userService.findByUsername((String)username);
			
		}
		
		return user;
	}
	
	private void saveUser(User user) {
		try {
			userService.saveUser(user);
		} catch (UserExistsException e) {
			// this should never happen since we look up the user by the username that was typed in 
			// and only try to save the failed login if the user actually exists - the UserExistsException is thrown
			// by saveUser when someone tries to change their username to an email address that is already in use
			LOG.error("Unexpected UserExistsException while saving failed login information", e);
		}
	}
}
