<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>

<link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/bootstrap-switch.min.css"/>	

<c:set var="pageTitle" value="Researcher Registration"/>
<c:set var="saveUrl" value="/registration/register"/>
<c:set var="saveButtonLabel" value="Register"/>
<c:set var="showOldAddressField" value="${showOldAddress}"/>
<c:set var="adminRole" value="false" />

<c:if test="${saveAccountSettingsAction != 'register'}">
	<c:set var="saveUrl" value="/user/accountSettings"/>
	<c:set var="saveButtonLabel" value="Save"/>
	<c:set var="pageTitle" value="Account Settings"/>
</c:if>

<c:if test="${saveAccountSettingsAction == 'adminAccountSettings'}">
	<c:set var="saveUrl" value="/admin/user/accountSettings"/>	
</c:if>

<security:authorize ifAnyGranted="ROLE_ADMIN">
	<c:set var="adminRole" value="true" />
</security:authorize>
			
<div class="row">
	<div class="col-md-2 col-sm-3 hidden-sm hidden-xs">
		<div class="block-image-wrapper">
			<div>
				<img class="block-image-tall registration" src="${pageContext.request.contextPath}/static/img/ArabicBookKacmarcik27_004r_rev2_372x636.jpg" alt="Arabic with red and blue decorations forming apex" />
			</div>
			<div class="info-icon-wrapper">
				<span class="info-icon">
					<i class="glyphicon glyphicon-info-sign pointer" aria-hidden="true" data-toggle="tooltip" data-placement="right" data-trigger="hover" title="Image from HMML, Arca Artium, Kacmarcik, MS 27, f. 4r. Used under a CC BY-NC 4.0 license."></i>
				</span>
			</div>	
		</div>				
	</div>
	<div class="col-md-10 col-sm-9 col-xs-12">
		
		<div id="registrationWrapper">
			<div class="text-center">
				<h2>${pageTitle}</h2>
				
				<c:if test="${saveAccountSettingsAction == 'register'}">
					<div class="topLink">
						<a href="${pageContext.request.contextPath}/login"><em>Already registered? </em>&nbsp;Sign In</a>
					</div>
				</c:if>										
			</div>
			
			<form:form commandName="registrationForm" action="${pageContext.request.contextPath}${saveUrl}" onsubmit="javascript:return false;" class="form-horizontal vhmmlForm" data-validation-rule-url="/registration/validationRules">
				<form:hidden path="id"/>
				
				<div class="registrationFormHeader">
					<h3>Personal</h3>
				</div>
				
				<div class="registrationFormGroup">
					<div class="form-group">
						<label for="email" class="col-sm-5 control-label text-right">Email</label>
						<div class="col-sm-7">
							<c:set var="disabled" value="false"/>
							<security:authorize access="isAuthenticated()">
								<c:set var="disabled" value="true"/>
								<form:hidden path="username" />
							</security:authorize>
																			
							<form:input path="username" cssClass="form-control" data-error-placement="bottom" disabled="${disabled}"/>						
							<c:if test="${disabled}">
								<div class="info-icon-wrapper right" style="left: 8px; top: -5px;">
									<span class="info-icon">
										<i class="glyphicon glyphicon-info-sign pointer" aria-hidden="true" data-toggle="tooltip" data-placement="right" data-trigger="hover" title="Email address cannot be changed"></i>
									</span>
								</div>
							</c:if>
						</div>
					</div>
					
					<div class="form-group">
						<label for="firstname" class="col-sm-5 control-label text-right">First Name</label>
						<div class="col-sm-7">
							<form:input path="firstName" cssClass="form-control" data-error-placement="bottom"/>
						</div>
					</div>
					<div class="form-group">
						<label for="lastname" class="col-sm-5 control-label text-right">Last Name</label>
						<div class="col-sm-7">
							<form:input path="lastName" cssClass="form-control" data-error-placement="bottom"/>
						</div>
					</div>
		
					<div class="form-group">
						<label for="affiliation" class="col-sm-5 control-label text-right">Institutional Affiliation (optional) </label>
						<div class="col-sm-7">
							<form:input path="institution" cssClass="form-control"/>
						</div>
					</div>
				</div>
				
				<div class="registrationFormHeader">
					<h3>Contact</h3>
				</div>
				
				<div class="registrationFormGroup">
					<c:if test="${adminRole || showOldAddressField}">
						<div class="panel panel-default">
							<div class="panel-heading">
								<h3 class="panel-title">vHMML has updated its account form, this mailing address is no longer used. Please move content to the appropriate fields</h3>
							</div>
							<div class="panel-body">
								<div class="form-group">
									<label for="address" class="col-sm-5 control-label text-right mailingAddress" >Mailing Address <br /><small>(Street/PO Box, City, State/Province, Country, and Postal Code)</small></label>
									
									<div class="col-sm-7">
										<form:textarea path="address" cssClass="form-control"  rows="3" data-error-placement="bottom" disabled="true"/>						
									</div>
									
								</div>
							</div>
						</div>
					</c:if>	
					
						<div class="form-group">
							<label for="addressOne" class="col-sm-5 control-label text-right">Address 1</label>
							<div class="col-sm-7">
								<form:input path="addressOne" cssClass="form-control" data-error-placement="bottom"/>
								<small class="form-text">
									Street address, P.O. Box, company name, &#8453;
								</small>
							</div>
						</div>
						
						<div class="form-group">
							<label for="addressTwo" class="col-sm-5 control-label text-right">Address 2 (optional)</label>
							<div class="col-sm-7">
								<form:input path="addressTwo" cssClass="form-control" />
								<small class="form-text">
									Apartment, suite, unit, building, floor, etc.
								</small>
							</div>
						</div>
						
						<div class="form-group">
							<label for="country" class="col-sm-5 control-label text-right">Country</label>
							<div class="col-sm-7">
								<form:select path="country" cssClass="form-control" data-error-placement="bottom">
									<form:option value="">Select country</form:option>
									<form:options items="${countries}" />
								</form:select>
							</div>
						</div>
						
						<div class="usState-form-group form-group hidden">
							<label for="state" class="col-sm-5 control-label text-right">State/Province/Region/Territory</label>
							<div class="col-sm-7">
								<form:select path="state" cssClass="form-control" data-error-placement="bottom" disabled="true">
									<form:option value="">Select US state</form:option>
									<form:options items="${usStates}" />
								</form:select>
							</div>
						</div>
						
						<div class="state-form-group form-group hidden">
							<label for="state" class="col-sm-5 control-label text-right">State/Province/Region/Territory</label>
							<div class="col-sm-7">
								<form:input path="state" cssClass="form-control" data-error-placement="bottom" disabled="true" />
							</div>
						</div>
						
						<div class="form-group">
							<label for="city" class="col-sm-5 control-label text-right">City</label>
							<div class="col-sm-7">
								<form:input path="city" cssClass="form-control" data-error-placement="bottom"/>
							</div>
						</div>
						
						<div class="form-group">
							<label for="zipCode" class="col-sm-5 control-label text-right">Zip/Postal Code</label>
							<div class="col-sm-7">
								<form:input path="zipCode" cssClass="form-control" data-error-placement="bottom"/>
							</div>
						</div>
						
						<div class="form-group">
							<label for="phone" class="col-sm-5 control-label text-right">Phone</label>
							<div class="col-sm-7">
								<form:input path="phone" cssClass="form-control" data-error-placement="bottom"/>
							</div>
						</div>
					</div>
				
				
				<div class="registrationFormHeader">
					<h3>Interests</h3>
				</div>
				
				<div class="registrationFormGroup">
					<div class="form-group">
						<label for="researchInterests" class="col-sm-5 control-label text-right">Research Interests</label>
						<div class="col-sm-7">
							<form:textarea path="researchInterests" cssClass="form-control" rows="5" data-error-placement="bottom"/>
						</div>
					</div>
					<div class="form-group">
						<label for="regionAndLangInterests" class="col-sm-5 control-label text-right">Regions and Languages of Interest</label>
						<div class="col-sm-7">
							<form:textarea path="regionAndLangInterests" cssClass="form-control" rows="5" data-error-placement="bottom"/>
						</div>
					</div>
					
					<security:authorize ifAnyGranted="ROLE_ADMIN">
						<div class="form-group">
							<label for="internalNotes" class="col-sm-5 control-label text-right">Internal Notes</label>
							<div class="col-sm-7">
								<form:textarea path="internalNotes" cssClass="form-control" rows="5"/>
							</div>
						</div>
						
						<div class="form-group">
							<label for="enabled" class="col-sm-5 control-label text-right">Enabled</label>
							<div class="col-sm-7">
								<form:checkbox path="enabled" cssClass="activate" />
							</div>
						</div>
					</security:authorize>
					
					<div class="acceptUserAgreementWrapper">
						<h4>vHMML User Agreement:</h4>
						<p>
							The institutions allowing images of their manuscripts and printed books to be accessible on vHMML 
							retain certain rights associated with the images. By using vHMML, you agree not to copy or redistribute 
							images from HMML's partner libraries without prior authorization from HMML. Misuse of images may lead to 
							suspension of your account.
						</p>
						<div class="acceptUserAgreementCheckbox">
							<label for="acceptUserAgreement"><span>I agree to the vHMML User Agreement</span><form:checkbox path="usageAgreementAccepted" cssClass="captchaCheckbox" data-error-placement="top" /></label>
						</div>							
						
					</div>
									
					<security:authorize access="!isAuthenticated()">				
						<div class="form-group captchaFormGroup">
							<span class="col-sm-5"></span>
							<div class="col-sm-7 captchaCheckboxes">
								<div class="captchaCheckboxWrapper">
									<div>
										<label for="computer"><span>I am a computer </span><form:checkbox path="computer" cssClass="captchaCheckbox" data-error-placement="top" /></label>
									</div>
									<div>
										<label for="human"><span>I am human </span><form:checkbox path="human" cssClass="captchaCheckbox" data-error-placement="bottom" /></label>
									</div>														        
									
								</div>							    					
							</div>
						</div>										
						
						<div class="form-group text-center">
							<span class="white-link">
								<a href="${pageContext.request.contextPath}/registration/why-we-need-this-info" class="white">Why do we want this information?</a>
							</span>						
						</div>
						
						<p class="small text-center">
							Although all registrations will be immediately approved, please be aware that, because of HMML's agreements with the owning libraries, 
							all applications for access to Reading Room must be reviewed by a HMML librarian. If for some reason your application is 
							<span class="white-link"><a href="${pageContext.request.contextPath}/registration/why-we-need-this-info" class="white">incomplete</a></span>, 
							we will disable your account and email you requesting the missing information. You can read more about how we use this information on our 
							<span class="white-link"><a href="${pageContext.request.contextPath}/privacy" class="white">Privacy Policy</a></span>. 
						</p>
						
					</security:authorize>			
								
					<div class="form-group submitCancelGroup">
						<div class="col-sm-offset-5 col-sm-7 text-right">
							<button name="cancel" type="button" class="btn btn-default" onclick="javascript:window.history.back();">Cancel</button>
							<button id="submitButton" name="submitButton" type="submit" class="btn home btn-preferred">${saveButtonLabel}</button>					
						</div>
					</div>
				</div>				
			</form:form>
						
		</div>				
	</div>
</div>

<script type="text/javascript" src="${pageContext.request.contextPath}/static/js/bootstrap-switch.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/static/js/user/account-settings.js"></script>
