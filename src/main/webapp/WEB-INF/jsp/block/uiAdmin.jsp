<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<%@ taglib prefix="vhmml" tagdir="/WEB-INF/tags" %>

<link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/ui-admin.css?version=${applicationVersion}"/>

<div class="ui-admin-container">
	<a href="${pageContext.request.contextPath}/admin/block" class="btn admin back-button">Back</a>
	<div>
		<h1>${ block.section } Block: ${ block.displayName }</h1>
	</div>
	<form class="form-horizontal" id="block-edit-form" data-url="${pageContext.request.contextPath}/admin/block/${ block.section }/${ block.name}/save">
		<input type="hidden" name="block-id" id="block-id" value="${ block.id }" />
	
		<div class="panel panel-default">
			<div class="ui-admin-panel-heading panel-heading">
				<button class="btn btn-success pull-right" id="block-save" type="button">Save</button>
				<a href="${pageContext.request.contextPath}/admin/block"><button class="btn btn-warning pull-right" id="block-cancel" type="button">Cancel</button></a>
				<div class="clearfix"></div>
			</div>
		
			<div class="panel-body">
				
				<%-- Heading --%>
				<c:if test="${ not empty block.uiBlockComponents['HEADING'] }">
					<div class="form-group">
						<label for="block-heading" class="col-sm-3 control-label">Heading</label>
						<div class="col-sm-9 block-input" data-block-type="${ block.uiBlockComponents['HEADING'].type }">
							<input type="text" name="block-heading" id="block-heading" class="form-control" value="<c:out value="${ block.uiBlockComponents['HEADING'].value }"/>" />
						</div>
					</div>
				</c:if>
				
				<%-- Heading color --%>
				<c:if test="${ not empty block.uiBlockComponents['HEADINGCOLOR'] }">
					<div class="form-group">
						<label for="block-heading-color" class="col-sm-3 control-label">Heading Color</label>
						<div class="col-sm-9 block-input" data-block-type="${ block.uiBlockComponents['HEADINGCOLOR'].type }">
							<input type="text" name="block-heading-color" id="block-heading-color" class="form-control" value="${ block.uiBlockComponents['HEADINGCOLOR'].value }" />
							<span id="block-heading-color-help" class="help-block">
								Value must be in the proper hex code format: #FFFFFF.
							</span>
						</div>
					</div>
				</c:if>
				
				<%-- Content --%>
				<c:if test="${ not empty block.uiBlockComponents['CONTENT'] }">
					<div class="form-group">
						<label for="block-content" class="col-sm-3 control-label">Content</label>
						<div class="col-sm-9 block-input" data-block-type="${ block.uiBlockComponents['CONTENT'].type }">
							<input type="text" name="block-content" id="block-content" class="form-control" value="<c:out value='${ block.uiBlockComponents["CONTENT"].value }'/>" />
						</div>
					</div>
				</c:if>
				
				<%-- Content color --%>
				<c:if test="${ not empty block.uiBlockComponents['CONTENTCOLOR'] }">
					<div class="form-group">
						<label for="block-content-color" class="col-sm-3 control-label">Content Color</label>
						<div class="col-sm-9 block-input" data-block-type="${ block.uiBlockComponents['CONTENTCOLOR'].type }">
							<input type="text" name="block-content-color" id="block-content-color" class="form-control" value="${ block.uiBlockComponents['CONTENTCOLOR'].value }" />
							<span id="block-content-color-help" class="help-block">
								Value must be in the proper hex code format: #FFFFFF.
							</span>
						</div>
					</div>
				</c:if>
				
				<%-- 
				*****
				*	In order to get the the active switch and image upload field to show up, there must be a UI block component type for the
				*	block called IMAGE.
				*****
				--%>
				<%-- Active switch --%>
				<c:if test="${ not empty block.uiBlockComponents['IMAGE'] }">
					<c:set var="useImage" value="" />
					<c:set var="useColor" value="checked" />
					
					<c:if test="${ block.uiBlockComponents['IMAGE'].enabled && not empty block.uiBlockComponents['IMAGE'].value }">
						<c:set var="useImage" value="checked" />
						<c:set var="useColor" value="" />
					</c:if>
					
					<div class="form-group">
						<label class="col-sm-3 control-label">Active Visual</label>
						<div class="col-sm-9 block-input">
							<div class="switch">
							  	<input type="radio" id="block-hero-switch-image" name="block-hero-switch" value="true" ${ useImage } /><label for="block-hero-switch-image">Image</label>
							  	<input type="radio" id="block-hero-switch-color" name="block-hero-switch" value="false" ${ useColor } /><label for="block-hero-switch-color">Background Color</label>
							</div>
						</div>
					</div>
				
				<%-- Image upload --%>
					<div class="form-group">
						<label class="col-sm-3 control-label">Hero Image</label>
						<div class="col-sm-9 block-input" data-block-type="${ block.uiBlockComponents['IMAGE'].type }">
							<c:if test="${ not empty block.uiBlockComponents['IMAGE'].value }">
								<div>
									Current image:
									<p>
										<img src="${pageContext.request.contextPath}/images/block/${ block.uiBlockComponents['IMAGE'].value }" width="auto" height="100px" />
									</p>
									<p>
										${ block.uiBlockComponents['IMAGE'].value }
									</p>
								</div>
							</c:if>
							<div>
								<input type="file" name="block-hero-image" id="block-hero-image" />
								<input type="hidden" name="block-hero-current-image" id="block-hero-image-current" value="${ block.uiBlockComponents['IMAGE'].value }" />
								<span id="block-hero-image-help" class="help-block">
									<p>Recommended image file size is 1 MB.</p>
									<p>
									Recommended image sizes:
										<ul>
											<li>homepage header (1266px x 200px)</li>
											<li>square block (255px x 250px)</li>
											<li>XL square block (540px x 520px)</li>
											<li>rectangle block (583px x 250px)</li>
											<li>news header (1266px x 200px)</li>
										</ul>
									</p>
								</span>
							</div>
								
						</div>
					</div>
				</c:if>
				
				<%-- Hover color --%>
				<c:if test="${ not empty block.uiBlockComponents['HOVERCOLOR'] }">
					<div class="form-group">
						<label for="block-hover-color" class="col-sm-3 control-label">Hero Hover Effect Color</label>
						<div class="col-sm-9 block-input" data-block-type="${ block.uiBlockComponents['HOVERCOLOR'].type }">
							<input type="text" name="block-hover-color" id="block-hover-color" class="form-control" value="${ block.uiBlockComponents['HOVERCOLOR'].value }" />
							<div id="block-hover-color-help" class="help-block">
								<ul>
									<li>This value is for the solid color background that appears when a user hovers over a block.</li>
									<li>Value must be in the proper hex code format: #FFFFFF.</li>
									<li>Default value is #000000 (black).</li>
								</ul>
							</div>
						</div>
					</div>
				</c:if>
				
				<%-- Overlay color --%>
				<c:if test="${ not empty block.uiBlockComponents['OVERLAYCOLOR'] }">
					<div class="form-group">
						<label for="block-overlay-color" class="col-sm-3 control-label">Hero Overlay Color</label>
						<div class="col-sm-9 block-input" data-block-type="${ block.uiBlockComponents['OVERLAYCOLOR'].type }">
							<input type="text" name="block-overlay-color" id="block-overlay-color" class="form-control" value="${ block.uiBlockComponents['OVERLAYCOLOR'].value }" />
							<div id="block-overlay-color-help" class="help-block">
								<ul>
									<li>This value is for the color layer that is above the block image and below the block text.</li>
									<li>Value must be in the proper hex code format: #FFFFFF.</li>
									<li>Default value is #000000 (black).</li>
									<li>TIP! Changing this value and the overlay opacity value can give you a translucent overlay effect on the block image.</li>
								</ul>
								
							</div>
						</div>
					</div>
				</c:if>
				
				<%-- Overlay opacity --%>
				<c:if test="${ not empty block.uiBlockComponents['OVERLAYOPACITY'] }">
					<%-- Overlay opacity --%>
					<div class="form-group">
						<label for="block-overlay-opacity" class="col-sm-3 control-label">Hero Overlay Opacity</label>
						<div class="col-sm-9 block-input" data-block-type="${ block.uiBlockComponents['OVERLAYOPACITY'].type }">
							<input type="text" name="block-overlay-opacity" id="block-overlay-opacity" class="form-control" value="${ block.uiBlockComponents['OVERLAYOPACITY'].value }" />
							<div id="block-overlay-opacity-help" class="help-block">
								<ul>
									<li>Value must be a decimal value between 0 and 1.</li>
									<li>0 being transparent.</li>
									<li>Default value is 0.</li>
								</ul>
								   
							</div>
						</div>
					</div>
				</c:if>
				
				<%-- Background color --%>
				<c:if test="${ not empty block.uiBlockComponents['BACKGROUNDCOLOR'] }">
					<div class="form-group">
						<label for="block-background-color" class="col-sm-3 control-label">Background Color</label>
						<div class="col-sm-9 block-input" data-block-type="${ block.uiBlockComponents['BACKGROUNDCOLOR'].type }">
							<input type="text" name="block-background-color" id="block-background-color" class="form-control" value="${ block.uiBlockComponents['BACKGROUNDCOLOR'].value }" />
							<div id="block-background-color-help" class="help-block">
								<ul>
									<li>Value must be in the proper hex code format: #FFFFFF.</li>
									<li>Default value is #000000 (black).</li>
								</ul>
							</div>
						</div>
					</div>
				</c:if>
				
				<%-- List amount --%>
				<c:if test="${ not empty block.uiBlockComponents['LISTAMOUNT'] }">
					<div class="form-group">
						<label for="block-list-amount" class="col-sm-3 control-label">List Amount</label>
						<div class="col-sm-9 block-input" data-block-type="${ block.uiBlockComponents['LISTAMOUNT'].type }">
							<input type="text" name="block-list-amount" id="block-list-amount" class="form-control" value="${ block.uiBlockComponents['LISTAMOUNT'].value }" />
							<span id="block-list-amount-help" class="help-block">
								How many items do you want to show? Value must be a whole number.  Default value is 10.
							</span>
						</div>
					</div>
				</c:if>
				
				<%-- URL --%>
				<c:if test="${ not empty block.uiBlockComponents['URL'] }">
					<div class="form-group">
						<label for="block-url" class="col-sm-3 control-label">URL</label>
						<div class="col-sm-9 block-input" data-block-type="${ block.uiBlockComponents['URL'].type }">
							<input type="text" name="block-url" id="block-url" class="form-control" value="<c:out value='${ block.uiBlockComponents["URL"].value }'/>" />
							<div id="block-input-help" class="help-block">
								<ul>
									<li>Internal links should be absolute paths, e.g. /dataPortal.</li>
									<li>External links must begin with http:// or https://, e.g. https://www.google.com</li>
									<li>If no value is set, block will not be linked.</li>
								</ul>
							</div>
						</div>
					</div>
				</c:if>
				
				<%-- Field Link Search --%>
				<c:if test="${ not empty block.uiBlockComponents['FIELDLINKSEARCH'] }">
					
					<div class="form-group">
						<label for="block-field-link-search" class="col-sm-3 control-label">Field Link Search</label>
						<div class="col-sm-9 block-input" data-block-type="${ block.uiBlockComponents['FIELDLINKSEARCH'].type }">
							<input type="text" name="block-field-link-search" id="block-field-link-search" class="form-control" value="<c:out value='${ block.uiBlockComponents["FIELDLINKSEARCH"].value }'/>" />
							<div id="block-input-help" class="help-block">
								<ul>
									<li>Should be in the proper JSON format: { "field":"value", "field2":"value2" }</li>
									<li>Use double quotes.</li>
									<li>All search fields can be used.</li>
								</ul>
							</div>
						</div>
					</div>
					
					<c:set var="useFieldLinkSearch" value="" />
					<c:set var="useURL" value="checked" />
					
					<c:if test="${ block.uiBlockComponents['FIELDLINKSEARCH'].enabled && not empty block.uiBlockComponents['FIELDLINKSEARCH'].value }">
						<c:set var="useFieldLinkSearch" value="checked" />
						<c:set var="useURL" value="" />
					</c:if>
					
					<div class="form-group">
						<label class="col-sm-3 control-label">Active Link</label>
						<div class="col-sm-9 block-input">
							<div class="switch">
							  	<input type="radio" id="block-switch-field-link-search" name="block-link-switch" value="true" ${ useFieldLinkSearch } /><label for="block-switch-field-link-search">Field Link Search</label>
							  	<input type="radio" id="block-switch-url" name="block-link-switch" value="false" ${ useURL } /><label for="block-switch-url">URL</label>
							</div>
							
						</div>
					</div>
					
				</c:if>
			</div>
		</div>
	</form>
</div>

<script type="text/javascript" src="${pageContext.request.contextPath}/static/js/admin/ui-admin.js?version=${applicationVersion}"></script>