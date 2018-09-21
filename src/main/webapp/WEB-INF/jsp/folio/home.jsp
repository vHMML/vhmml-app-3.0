<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<%@ taglib prefix="vhmml" tagdir="/WEB-INF/tags" %>

<tiles:importAttribute name="pageCategory" />

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-slider/10.0.0/css/bootstrap-slider.min.css" />
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.12.4/css/bootstrap-select.min.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/js/vhmml-mirador/plugins/ExternalRotateButtons/externalRotateButtons.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/css/vhmml-search-page.css?version=${applicationVersion}"/>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/css/folio.css?version=${applicationVersion}"/>

<c:if test="${not empty selectedObjectJson}">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/css/reading-room-view-object.css?version=${applicationVersion}"/>
</c:if>

<%-- Stylesheets for landing page --%>
<link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/blocks-overrides.css?version=${applicationVersion}"/>
<link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/blocks-header.css?version=${applicationVersion}"/>
<link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/blocks-general.css?version=${applicationVersion}"/>

<%@include file="/WEB-INF/jsp/folio/home-inline-styles.jsp" %>

<%-- FOLIO HEADER SECTION --%>
<div class="clearfix">
	<c:if test="${ empty selectedObjectJson }">
		<c:if test="${ not empty folioHeaderBlock.uiBlockComponents['URL'].value }">
		<a href="${ folioHeaderBlock.uiBlockComponents['URL'].value }">
		</c:if>
			<div id="folio-header-container" class="${folioHeaderBlock.styleName} block-header-container">
				<div id="folio-text-container" class="block-header-text-container">
					<div id="folio-header-heading" class="block-header-heading"><h1>${ folioHeaderBlock.uiBlockComponents['HEADING'].value }</h1></div>
					<div id="folio-header-content" class="block-header-content">${ folioHeaderBlock.uiBlockComponents['CONTENT'].value }</div>
				</div>
				<div id="folio-header-overlay" class="block-header-overlay">
				</div>
			</div>
		<c:if test="${ not empty folioHeaderBlock.uiBlockComponents['URL'].value }">
		</a>
		</c:if>
	</c:if>
	
	<div id="search-container">
			<form name="searchForm" onsubmit="javascript:newSearch();return false;" class="advanced form-horizontal" data-search-url="/folio/search" data-object-type="FOLIO" autocomplete="off">
				<div id="keyword-search-container">
					<div class="search-options-close-button">
						<i class="fa fa-times fa-3x"></i>
					</div>
					<div class="keyword-search-bar input-group">
						<input type="text" placeholder="Search Folio with keyword (excluding project numbers)..." class="keyword form-control" value="${vhmmlSession.savedReadingRoomSearch.searchTerms.keyword}" />
						<span class="input-group-btn">
					    	<button class="btn btn-default clearSearchOptionsButton" type="button">Clear</button>
					    	<button class="btn btn-default searchButton" type="button">Search <i class="fa fa-chevron-circle-right"></i></button>
					    </span>
					</div>
					
				</div>
				
				<div id="search-options-panel">
					<%@include file="/WEB-INF/jsp/folio/folioSearch.jsp"%>
				</div>
			</form>
	</div>
</div>

<div class="bodyContent">	
	
	<div id="searchResultsWrapper" class="flex">			
		<vhmml:paging-controls tableId="searchResults" searchFunction="pagingSearch" sortBy="${sortBy}" pageSize="${pageSize}" currentPage="${currentPage}" pageCategory="${pageCategory}" showResultsData="true"  showJumpToPage="true" showPageSize="true" sortByOptions="getFolioSortByOptions"/>

		<div id="searchResults">
			<%-- don't show the description if they already have an object selected --%>
			<c:if test="${empty selectedObjectJson}">
				<jsp:include page="/WEB-INF/jsp/folio/folioDescription.jsp"></jsp:include>
			</c:if>					
		</div>
			
		<vhmml:paging-controls tableId="searchResults" searchFunction="pagingSearch" sortBy="${sortBy}" pageSize="${pageSize}" currentPage="${currentPage}" pageCategory="${pageCategory}" showJumpToPage="true" showPageSize="true" sortByOptions="getFolioSortByOptions"/>
	</div>
		
	<div id="viewer" class="flex"></div>
	<div id="thumbnail-viewer" class="flex text-center" onmousedown="return false"></div>
	
	<div class="searchToggleBar metaDataPanel" data-menu="metaDataPanel">
		<span class="menuToggleIcon" data-menu="metaDataPanel">&laquo;</span><div class="rotateTextClockwise">&nbsp;&nbsp;Description</div>
	</div>
	<div id="metaDataPanel" class="slideOutMenu slideOutMenuRight folioMetaData" data-width="575px">
		<span class="menuToggleIcon reading-room-link" style="top: 38px; left: 12px;" data-menu="metaDataPanel"><span class="menuCloseIcon" data-menu="metaDataPanel">&raquo;</span></span>		
		
		<ul class="nav nav-tabs" role="tablist">
			<li role="presentation" class="active overview">
				<a href="#overview" aria-controls="overview" role="tab" data-toggle="tab">Overview</a>
			</li>			
			<li role="presentation" class="description">
				<a href="#description" aria-controls="description" role="tab" data-toggle="tab">Paleographic Description</a>
			</li>
			<li role="presentation" class="transcription">
				<a href="#transcription" aria-controls="transcription" role="tab" data-toggle="tab">Transcription</a>
			</li>
		</ul>
		
		<div class="tab-content">
			<div id="overview" role="tabpanel" class="tab-pane active"></div>
			<div id="description" role="tabpanel" class="tab-pane"></div>
			<div id="transcription" role="tabpanel" class="tab-pane"></div>			
		</div>	
	</div>
</div>

<%@include file="/WEB-INF/jsp/search-common-templates.jsp"%>

<vhmml:corrections-form correctionType="FOLIO" categories="Image(s),Bibliography,Description,Transcription,Other"/>

<script id="no-search-results-template" type="text/x-handlebars-template">
	<div class="noResults"> 
		<h2>Your search returned 0 results</h2>
		<p>Tips:</p>
		<ul>
			<li>Check your spelling</li>
			<li>If searching for an author or title, try an alternative or shorter form</li>
			<li>If searching with native script, try it again without it</li>
			<li>Facet your searches by using the drop down menus to increase accuracy</li>
			<li>Move the Date Range sliders out to the extremes to include all dates</li>
		</ul>
		<p>You can find more information on our <a href="${pageContext.request.contextPath}/folio/help#SEARCHING">Help Page</a>.</p>
		Still having issues with search? <a href="${pageContext.request.contextPath}/contact"> Contact us</a>.
	</div>
</script>

<script id="search-hit-template" type="text/x-handlebars-template">
	<div class="row row-eq-height">
		{{#if folioObject.iconName}}
			<div class="rr-thumbnail" onmousedown="return false">
				<img src="${pageContext.request.contextPath}/image/thumbnail/FOLIO/{{folioObject.folioObjectNumber}}/{{folioObject.iconName}}" class="viewImagesLink" data-object-id="{{folioObject.id}}" data-access="UNREGISTERED">
			</div>
		{{/if}}

		<div class="flex">
			<div class="searchHitSection">
				<h4 class="section-title">
					{{~#if folioObject.city~}}
						{{{folioObject.city}}}
						{{~#if folioObject.country~}},&nbsp;{{~/if~}}
					{{~/if~}}
		
					{{{folioObject.country}}}
				</h4>
				<h4 class="section-title">
					{{~#if folioObject.repository~}}
						{{{folioObject.repository}}}
						{{~#if folioObject.shelfMark~}},&nbsp;{{~/if~}}
					{{~/if~}}
					{{{folioObject.shelfMark}}}
				</h4>
				<h4 class="section-title">{{{folioObject.dateCentury}}}</h4>
			</div>
				
			<div class="searchHitSection">
				{{#if folioObject.language}}
					<div>
						<b>Language:&nbsp;</b><i>{{{folioObject.language}}}</i>
					</div>
				{{/if}}

				{{#if folioObject.writingSystem}}
					<div>
						<b>Writing System:&nbsp;</b><i>{{{folioObject.writingSystem}}}</i>
					</div>
				{{/if}}

				{{#if folioObject.script}}
					<div>
						<b>Script:&nbsp;</b><i>{{{folioObject.script}}}</i>
					</div>
				{{/if}}

				<br/>
				<div>
					Folio Object Number:&nbsp;{{folioObject.folioObjectNumber}}
				</div>			
			</div>
		</div>

		<security:authorize ifAnyGranted="ROLE_ADMIN,ROLE_FOLIO_CREATOR">
			<div>
				{{#if folioObject.active}}
					<span class="activeLabel">Active <div class="activeIndicator btn-success"/></span>
				{{else}}
					<span class="activeLabel">Pending <div class="activeIndicator btn-danger"/></span>
				{{/if}}
			</div>
		
			{{#if folioObject.editable}}
				<div><a class="btn folio" href="${pageContext.request.contextPath}/folio/admin/edit/{{folioObject.id}}">Edit</a></div>
			{{/if}}
		</security:authorize>
	</div>
</script>

<script id="search-hit-highlight-template" type="text/x-handlebars-template">
	<div class="row searchHitText {{{cssClass}}}">
		<hr class="separateHighlightFields"/>
		<span class="glyphicon glyphicon-check"/>&nbsp;{{{value}}}<br/>
		<small>Found in <b><i>{{{fieldName}}}</i></b></small>
	</div>
</script>

<script id="search-hit-toggle-template" type="text/x-handlebars-template">
	<div class="row">
		<hr class="separateHighlightFields"/>
		<label><a class="toggleHiddenMatches">Show additional matches...</a></label>
	</div>
</script>

<script id="search-hit-buttons-template" type="text/x-handlebars-template">
	<div class="row pull-left searchHitButtons">
		<button class="btn folio viewImagesLink" data-object-id="{{id}}" data-access="UNREGISTERED">View</button>
	</div>
	<div class="clearfix"></div>
</script>

<script id="overview-tab-template" type="text/x-handlebars-template">
	{{> editObjectControlsTemplate}}
	{{> overviewTemplate}}
</script>

<script id="description-tab-template" type="text/x-handlebars-template">
	{{> editObjectControlsTemplate}}
	{{> descriptionTemplate}}
</script>

<script id="transcription-tab-template" type="text/x-handlebars-template">
	{{> editObjectControlsTemplate}}
	{{> transcriptionTemplate}}
</script>

<script id="edit-object-controls-template" type="text/x-handlebars-template">
	<a data-toggle="tooltip" data-placement="top" title="Corrections or additions?" class="pull-right correctionsLink" href="javascript:showCorrectionsDialog('{{folioObjectNumber}}');"><img src="${pageContext.request.contextPath}/static/img/glyphicons-conversation2.png" width="20" alt="Corrections or additions?" /></a>
	
	<security:authorize ifAnyGranted="ROLE_ADMIN,ROLE_FOLIO_CREATOR">								
		<div class="editControls">
			{{#if editable}}
				<a class="btn folio right" href="${pageContext.request.contextPath}/folio/admin/edit/{{id}}">Edit</a>
			{{/if}}

			{{#if active}}
				<span class="activeLabel right">Active <div class="activeIndicator btn-success"/></span>
			{{else}}
				<span class="activeLabel right">Pending <div class="activeIndicator btn-danger"/></span>
			{{/if}}
		</div>									
	</security:authorize>
</script>

<script id="overview-template" type="text/x-handlebars-template">
	<table>		
		{{#if language}}
			{{render 'meta-data-field-search-multiple-link-template' label="Language(s)" values=language fieldName="language"}}
		{{/if}}
		
		{{#if writingSystem}}
			{{render 'meta-data-field-search-multiple-link-template' label="Writing System(s)" values=writingSystem fieldName="writingSystem"}}
		{{/if}}
		
		{{#if script}}
			{{render 'meta-data-field-search-multiple-link-template' label="Script(s)" values=script fieldName="script"}}
		{{/if}}
				
		{{render 'meta-data-field-template' label="Country" value=country}}
		{{render 'meta-data-field-template' label="City" value=city}}
		{{render 'meta-data-field-template' label="Repository" value=repository}}		
		{{render 'meta-data-field-template' label="Shelfmark" value=shelfMark}}
		{{render 'meta-data-field-template' label="Common Name" value=commonName}}
		{{render 'meta-data-field-template' label="Date Century" value=dateCentury}}
		{{render 'meta-data-field-template' label="Year Range" value=yearRange}}
		{{render 'meta-data-field-template' label="Date Precise" value=datePrecise}}
		{{render 'meta-data-field-template' label="Place Of Origin" value=placeOfOrigin}}
		{{render 'meta-data-field-template' label="Provenance" value=provenance}}
		{{render 'meta-data-field-template' label="Title" value=title}}
		{{render 'meta-data-field-template' label="Text" value=text}}
		{{render 'meta-data-field-template' label="Description" value=description}}
		{{render 'meta-data-field-template' label="Bibliography" value=bibliography}}
		{{#if externalUrl}}
			{{render 'meta-data-link-template' label="External Facsimile" link=externalUrl linkText=externalUrl  newWindow="true"}}
		{{/if}}
		{{render 'meta-data-field-template' label="Folio Object" value=folioObjectNumber class="folio-object-property" valueClass="folio-object-property-value"}}
		{{render 'permalink-template' label="Permanent link" linkClass="permanent-link-property" link="https://${configValues['permalink.url'].value}/folio/view" id=id}}
		{{#if publicManifest}}
			{{render 'permalink-template' label="IIIF Manifest URL" link="https://${configValues['permalink.url'].value}/image/manifest/folio" id=id image="iiif-logo.png" imageClass="iiif-logo"}}
		{{/if}}
		{{render 'meta-data-link-template' label="Rights" link="https://www.vhmml.org/terms" linkText="http://www.vhmml.org/terms"}}
		{{render 'meta-data-field-template' label="Acknowledgements" value=acknowledgements}}		
	</table>
</script>

<script id="description-template" type="text/x-handlebars-template">
	<table>		
		{{#if language}}
			{{render 'meta-data-field-search-multiple-link-template' label="Language(s)" values=language fieldName="language"}}
		{{/if}}
		
		{{#if writingSystem}}
			{{render 'meta-data-field-search-multiple-link-template' label="Writing System(s)" values=writingSystem fieldName="writingSystem"}}
		{{/if}}
		
		{{#if script}}
			{{render 'meta-data-field-search-multiple-link-template' label="Script(s)" values=script fieldName="script"}}
		{{/if}}
				
		{{render 'meta-data-field-template' label="Paleographic Features" value=specialFeatures}}			
	</table>
</script>

<script id="transcription-template" type="text/x-handlebars-template">
	<table>		
		{{render 'meta-data-field-template' value=transcription class="transcription"}}				
	</table>
</script>

<!-- mirador has to come before bootstrap-slider because there is a conflict between the two due to the fact that mirador includes jquery-ui -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/handlebars.js/4.0.11/handlebars.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/static/js/corrections.js?version=${applicationVersion}"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/static/mirador/mirador.js?version=${applicationVersion}"></script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-slider/10.0.0/bootstrap-slider.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.12.4/js/bootstrap-select.min.js"></script>

<%-- All Mirador plugins should be declared after the mirador.js call but before vhmml-search-common.js that creates the Mirador object. --%>
<script type="text/javascript" src="${pageContext.request.contextPath}/static/js/vhmml-mirador/plugins/ExternalRotateButtons/externalRotateButtons.js?version=${applicationVersion}"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/static/js/vhmml-mirador/plugins/CustomVhmmlEvents/customVhmmlEvents.js?version=${applicationVersion}"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/static/js/vhmml-mirador/vhmml-mirador.js?version=${applicationVersion}"></script>


<script type="text/javascript" src="${pageContext.request.contextPath}/static/js/search-common.js?version=${applicationVersion}"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/static/js/folio-search.js?version=${applicationVersion}"></script>

<script type="text/javascript">
	
	var selectedObjectJson;	
	
	<c:if test="${not empty selectedObjectJson}">
		selectedObjectJson = ${selectedObjectJson};
	</c:if>
	
	$(function() {
		var $body = $('body');
		
		initSearch('${savedSearch.searchTerms.beginDate}', '${savedSearch.searchTerms.endDate}');
		
		/**
		 * Override the shared information for share buttons for FOLIO.
		 */
		$body.on('show.bs.modal','#canvas-link-modal', function() {
			var link = $('.permanent-link-property').attr('href');
			var attribution = encodeURIComponent($('.metadata-item.attribution .metadata-value').text());
			// We are grabbing the first occurrence of the Folio object number because the value may appear more than
			// once in the DOM with the same class.
			var label = encodeURIComponent($('.folio-object-property-value:first').text());
			
			ShareButtons.updateButtonLinks({
		          'attribution': attribution,
		          'label': label,
		          'link': link,
		          'thumbnailUrl': ''
			});
			
			$('#canvas-link').val(link);
		});
	});

</script>

<c:if test="${not empty selectedObjectJsonLd}">
	<%@ include file="/WEB-INF/jsp/folio/folioJsonLd.jsp" %>
</c:if>