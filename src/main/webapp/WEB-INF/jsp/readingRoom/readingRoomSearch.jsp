<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<%@ taglib prefix="vhmml" tagdir="/WEB-INF/tags" %>

<tiles:importAttribute name="pageCategory" />

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-slider/10.0.0/css/bootstrap-slider.min.css" />
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.12.4/css/bootstrap-select.min.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/js/vhmml-mirador/plugins/ExternalRotateButtons/externalRotateButtons.css?version=${applicationVersion}">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/css/vhmml-search-page.css?version=${applicationVersion}"/>

<c:if test="${not empty selectedObjectJson}">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/css/reading-room-view-object.css?version=${applicationVersion}"/>
</c:if>

<link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/blocks-overrides.css?version=${applicationVersion}"/>
<link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/blocks-header.css?version=${applicationVersion}"/>
<link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/blocks-general.css?version=${applicationVersion}"/>

<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/css/print.css?version=${applicationVersion}"/>

<%@include file="/WEB-INF/jsp/readingRoom/home-inline-styles.jsp" %>

<%-- READING ROOM HEADER SECTION --%>
<div class="clearfix">	

	<c:if test="${ empty selectedObjectJson }">
		<c:if test="${ not empty readingRoomHeaderBlock.uiBlockComponents['URL'].value }">
		<a href="${ readingRoomHeaderBlock.uiBlockComponents['URL'].value }">
		</c:if>
			<div id="reading-room-header-container" class="${readingRoomHeaderBlock.styleName} block-header-container">
				<div id="reading-room-text-container" class="block-header-text-container">
					<div id="reading-room-header-heading" class="block-header-heading"><h1>${ readingRoomHeaderBlock.uiBlockComponents['HEADING'].value }</h1></div>
					<div id="reading-room-header-content" class="block-header-content">${ readingRoomHeaderBlock.uiBlockComponents['CONTENT'].value }</div>
				</div>
				<div id="reading-room-header-overlay" class="block-header-overlay">
				</div>
			</div>
		<c:if test="${ not empty readingRoomHeaderBlock.uiBlockComponents['URL'].value }">
		</a>
		</c:if>
	</c:if>
	
	<div id="search-container" class="container">
		<div class="formSection">
			<form name="searchForm" onsubmit="javascript:newSearch();return false;" class="advanced form-horizontal" data-search-url="/readingRoom/search" data-object-type="READING_ROOM" autocomplete="off">
				<div id="keyword-search-container">
					<div class="search-options-close-button">
						<i class="fa fa-times fa-3x"></i>
					</div>
					<div class="keyword-search-bar input-group">
						<input type="text" placeholder="Search Reading Room with keyword (excluding project numbers)..." class="keyword form-control" value="${vhmmlSession.savedReadingRoomSearch.searchTerms.keyword}" />
						<span class="input-group-btn">
					    	<button class="btn btn-default clearSearchOptionsButton" type="button">Clear</button>
					    	<button class="btn btn-default searchButton" type="button">Search <i class="fa fa-chevron-circle-right"></i></button>
					    </span>
					</div>
					
				</div>
				
				<div id="search-options-panel">
					<%@include file="/WEB-INF/jsp/readingRoom/advancedSearch.jsp"%>
				</div>
			</form>
		</div>
	</div>
</div>

<%-- READING ROOM CONTENT SECTION --%>
<div class="bodyContent">	
	
	<%-- SEARCH RESULTS --%>
	<div id="searchResultsWrapper" class="flex">			
		<vhmml:paging-controls tableId="searchResults" searchFunction="pagingSearch" sortBy="${sortBy}" pageSize="${pageSize}" currentPage="${currentPage}" pageCategory="${pageCategory}" showResultsData="true" showJumpToPage="true" showPageSize="true" sortByOptions="getReadingRoomSortByOptions"/>
		
		<div id="searchResults">
			<%-- don't show the landing page if they already have an object selected --%>
			<c:if test="${empty selectedObjectJson}">
				<jsp:include page="/WEB-INF/jsp/readingRoom/readingRoomDescription.jsp"></jsp:include>
			</c:if>					
		</div>
			
		<vhmml:paging-controls tableId="searchResults" searchFunction="pagingSearch" sortBy="${sortBy}" pageSize="${pageSize}" currentPage="${currentPage}" pageCategory="${pageCategory}" showJumpToPage="true" showPageSize="true" sortByOptions="getReadingRoomSortByOptions"/>
	</div>
	
	<%-- DETAILS PANEL --%>
	<div id="viewer" class="flex"></div>
	<div id="thumbnail-viewer" class="flex text-center" onmousedown="return false"></div>
	
	<div class="searchToggleBar metaDataPanel" data-menu="metaDataPanel">
		<span class="menuToggleIcon" data-menu="metaDataPanel">&laquo;</span><div class="rotateTextClockwise">&nbsp;&nbsp;Description</div>
	</div>
	<div id="metaDataPanel" class="slideOutMenu slideOutMenuRight" data-width="575px">
		<span class="menuToggleIcon reading-room-link" style="top: 38px; left: 12px;" data-menu="metaDataPanel"><span class="menuCloseIcon" data-menu="metaDataPanel">&raquo;</span></span>
		<!-- <span class="glyphicon glyphicon-chevron-right menuToggleIcon left" data-menu="metaDataPanel"></span> -->
		
		<ul class="nav nav-tabs" role="tablist">
			<li role="presentation" class="active overview">
				<a href="#overview" aria-controls="overview" role="tab" data-toggle="tab">Overview</a>
			</li>
			<li role="presentation" class="object">
				<a href="#object" aria-controls="object" role="tab" data-toggle="tab">Object</a>
			</li>
			<li role="presentation" class="contents">
				<a href="#contents" aria-controls="contents" role="tab" data-toggle="tab">Contents</a>
			</li>
			<li role="presentation" class="description">
				<a href="#description" aria-controls="description" role="tab" data-toggle="tab">Full Description</a>
			</li>			
		</ul>
		
		<div class="tab-content">
			<div id="overview" role="tabpanel" class="tab-pane active"></div>
			<div id="object" role="tabpanel" class="tab-pane"></div>
			<div id="contents" role="tabpanel" class="tab-pane"></div>
			<div id="description" role="tabpanel" class="tab-pane"></div>
		</div>	
	</div>
</div>

<%@include file="/WEB-INF/jsp/search-common-templates.jsp"%>

<vhmml:corrections-form correctionType="READING_ROOM" categories="Bibliography,Contents,Image(s),Physical Description,Other"/>
<%@ include file="/WEB-INF/jsp/readingRoom/usageAgreement.jsp" %>
<%@ include file="/WEB-INF/jsp/readingRoom/mustRegister.jsp" %>

<!-- mirador has to come before bootstrap-slider because there is a conflict between the two due to the fact that mirador includes jquery-ui -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/handlebars.js/4.0.11/handlebars.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/static/js/corrections.js?version=${applicationVersion}"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/static/mirador/mirador.js?version=${applicationVersion}"></script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-slider/10.0.0/bootstrap-slider.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.12.4/js/bootstrap-select.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/clipboard.js/2.0.0/clipboard.min.js"></script>

<%-- All Mirador plugins should be declared after the mirador.js call but before vhmml-search-common.js that creates the Mirador object. --%>
<script type="text/javascript" src="${pageContext.request.contextPath}/static/js/vhmml-mirador/plugins/ExternalRotateButtons/externalRotateButtons.js?version=${applicationVersion}"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/static/js/vhmml-mirador/plugins/CustomVhmmlEvents/customVhmmlEvents.js?version=${applicationVersion}"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/static/js/vhmml-mirador/vhmml-mirador.js?version=${applicationVersion}"></script>


<script type="text/javascript" src="${pageContext.request.contextPath}/static/js/search-common.js?version=${applicationVersion}"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/static/js/my-list-common.js?version=${applicationVersion}"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/static/js/reading-room.js?version=${applicationVersion}"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/static/js/vhmmlMail.js?version=${applicationVersion}"></script>

<script id="no-search-results-template" type="text/x-handlebars-template">
	<div class="noResults"> 
		<h2>Your search returned 0 results</h2>
		<p>Tips:</p>
		<ul>
			<li>Not all of <a href="${pageContext.request.contextPath}/readingRoom/collections">our collections</a> have been imported into Reading Room. Try searching the <a href="http://www.vhmml.us/research2014/catalog/text_search.asp" target="blank">Legacy Catalog</a>.</li>
			<li>Check your spelling</li>
			<li>Click the Clear search button and try your search again; prior search parameters may still be set inadvertently</li>
			<li>Try a broader search or a different search field</li>
			<li>If searching for a title, try an alternative or shorter form</li>
			<li>Move the Date Range sliders out to the extremes to include all dates </li>
		    <li>When using an exact search by putting double quotes around multiple words, try the same search without the quote marks or try spelling the words differently (e.g. plurals)</li>
			<li>If searching with native script, try again without it</li>
			<li>Try Advanced Search for more faceted search options</li>
		</ul>
		<p>You can find more information on our <a href="${pageContext.request.contextPath}/readingRoom/help#SEARCHING">Help Page</a>.</p>
		Still having issues with search? <a href="${pageContext.request.contextPath}/contact">Contact us</a>.
	</div>
</script>

<script id="overview-tab-template" type="text/x-handlebars">
	{{> editObjectControlsTemplate }}
	{{> overviewTemplate}}
</script>

<!--  overview-template is used by both the overview-tab-template and the full-description-template -->
<script id="overview-template" type="text/x-handlebars-template">
	<table>		
		{{render 'meta-data-field-search-link-template' vhmmlObject=this label="Country" linkText=country.name searchProp="name" fields="country" lcUri=country.authorityUriLC viafUri=country.authorityUriVIAF}}					
		{{render 'meta-data-field-search-link-template' vhmmlObject=this label="City" linkText=city.name searchProp="name" fields="country,city" lcUri=city.authorityUriLC viafUri=city.authorityUriVIAF}}							
		{{render 'meta-data-field-template' label="Holding Institution" value=holdingInstitution.name lcUri=holdingInstitution.authorityUriLC viafUri=holdingInstitution.authorityUriVIAF}}
		{{render 'meta-data-field-search-link-template' vhmmlObject=this label="Repository" linkText=repository.name searchProp="name" fields="country,city,repository" lcUri=repository.authorityUriLC viafUri=repository.authorityUriVIAF}}

		{{#if archivalData}}
			{{#if archivalData.collectionFond}}
				{{render 'meta-data-field-search-link-template' label="Collection" vhmmlObject=this archivalObject=archivalData searchProp="name" linkText=archivalData.collectionFond fields="country,city,repository,collectionFond" searchField="country,city,repository,archivalCollectionFond"}}
			{{/if}}

			{{#if archivalData.series}}
				{{render 'meta-data-field-search-link-template' label="Series" vhmmlObject=this archivalObject=archivalData linkText=archivalData.series fields="collectionFond,series" searchField="archivalCollectionFond,archivalSeries"}}
			{{/if}}

			{{#if archivalData.subSeries}}
				{{render 'meta-data-field-search-link-template' label="Sub-Series" vhmmlObject=this archivalObject=archivalData linkText=archivalData.subSeries fields="collectionFond,series,subSeries" searchField="archivalCollectionFond,archivalSeries,archivalSubSeries"}}
			{{/if}}

			{{render 'meta-data-field-template' label="Sub-Sub-Series" value=archivalData.subSubSeries}}
		{{/if}}

		{{render 'meta-data-field-template' label="Shelfmark" value=shelfMark}}
		{{render 'meta-data-field-template' label="Common Name" value=commonName}}
		{{render 'meta-data-field-template' label="Current Status" value=currentStatus.displayName}}		
		{{render 'meta-data-field-template' label="Type of Record" value=recordTypeName class="hideForFullDescription"}}

		{{#if archivalData}}
			{{render 'meta-data-field-template' label="Container" value=archivalData.container class="hideForFullDescription"}}
		{{/if}}

		{{render 'meta-data-field-template' label="Extent" value=extentList class="hideForFullDescription"}}
		
		{{! centuries shows for manuscript/print, but not for archival because archival shows it in the object description section }}		
		{{render 'meta-data-field-template' label="Century(ies)" value=centuryDisplay}}

		{{render 'meta-data-field-search-multiple-link-template' label="Language(s)" values=languageDisplay fieldName="language"}}
	
		{{#if archivalData}}
			{{render 'meta-data-field-template' label="Creator" value=archivalData.creator}}
			{{render 'meta-data-field-template' label="Title" value=archivalData.title}}
			{{render 'meta-data-field-template' label="Scope and Contents" value=archivalData.scopeContent}}
			{{render 'meta-data-field-template' label="Historical Note" value=archivalData.historicalNote}}
			{{render 'meta-data-field-template' label="Custodial History" value=archivalData.custodialHistory}}

			{{#each archivalData.associatedNames}}
				{{#if contributor.populatedName}}
					{{render 'meta-data-field-search-link-template' label="Associated Name" linkText=contributor.populatedName vhmmlObject=this fields="contributor" searchField="author" searchProp="name" lcUri=contributor.authorityUriLC viafUri=contributor.authorityUriVIAF note=type.displayName}}				
				{{/if}}
			{{/each}}

		{{/if}}

		{{#each subjects}}
			{{render 'meta-data-field-search-link-template' vhmmlObject=.. label="Subject" linkText=name searchProp="name" fields="subjects" searchField="subject" index=@index}}	
		{{/each}}
	
		{{#each genres}}
			{{render 'meta-data-field-search-link-template' vhmmlObject=.. label="Genre" linkText=name searchProp="name" fields="genres" index=@index}}			
		{{/each}}
	
		{{#each features}}
			{{render 'meta-data-field-search-link-template' vhmmlObject=.. label="Feature" linkText=name searchProp="name" fields="features" index=@index}}
		{{/each}}
	
		{{render 'meta-data-field-template' label="Notes" value=notes}}	
		{{render 'meta-data-field-template' label="Bibliography" value=bibliography}}
	
		{{#each externalBibliographyUrls}}
			{{render 'meta-data-link-template' label="Ext. Bibliography" link=url linkText=linkText newWindow="true"}}
		{{/each}}
	
		{{#each externalFacsimileUrls}}
			{{render 'meta-data-link-template' label="External Facsimile" link=url linkText=linkText newWindow="true"}}
		{{/each}}
	
		{{#each alternateSurrogates}}
			{{render 'meta-data-field-template' label="Alt. Surrogate" value=name class="wrap-overflow"}}
		{{/each}}
	
		{{render 'meta-data-field-template' label="HMML Proj. Num." value=hmmlProjectNumber class="hmml-project-number-property" valueClass="hmml-project-number-property-value"}}
		{{render 'permalink-template' label="Permanent Link" link="https://${configValues['permalink.url'].value}/readingRoom/view" id=id linkClass="removeAfterText permanent-link-property"}}
		
		{{render 'meta-data-field-template' label="Processed By" value=processedBy}}
		{{render 'meta-data-field-template' label="Acknowledgments" value=acknowledgments}}
		{{render 'meta-data-field-template' label="Surrogate Format" value=surrogateFormat.name}}
		{{render 'meta-data-field-template' label="Capture Date" value=captureDateDisplay}}
		{{render 'meta-data-field-template' label="Reproduction Notes" value=reproductionNotes}}
	
		{{#if accessRestrictionLinkText}}
			{{render 'meta-data-order-link-template' label="Access Restrictions" link="http://www.hmml.org/research/services/manuscript-image-order-form" preLinkText=accessRestrictionPreLinkText linkText=accessRestrictionLinkText}}
		{{else}}
			{{render 'meta-data-field-template' label="Access Restrictions" value=accessRestriction.displayName}}
		{{/if}}		
		
		{{render 'meta-data-link-template' label="Rights" link="https://www.vhmml.org/terms" linkText="http://www.vhmml.org/terms" linkClass="removeAfterText"}}
	</table>
</script>

<script id="description-template" type="text/x-handlebars-template">

	<label class="heading">Object<br />Description</label>
	<table>
		{{render 'meta-data-field-template' label="Type of Record" value=recordTypeName}}

		{{#if archivalData}}
			{{render 'meta-data-field-template' label="Container" value=archivalData.container}}
		{{/if}}

		{{render 'meta-data-field-template' label="Extent" value=extentList}}
		
		{{#if_not_eq recordTypeName "Archival Material"}}
			{{render 'meta-data-field-template' label="Collation" value=collation}}
			{{render 'meta-data-field-template' label="Foliation" value=foliation}}
		{{/if_not_eq}}	
		
		{{#if archivalData}}
			{{render 'meta-data-field-template' label="Support" value=archivalData.supportDisplay}}
		{{/if}}

		{{render 'meta-data-field-template' label="Binding" value=binding}}
		{{render 'meta-data-field-template' label="Binding Dimensions" value=bindingDimensions}}
		{{render 'meta-data-field-template' label="Provenance" value=provenance}}
				
		{{#each formerOwners}}
			{{render 'meta-data-field-template' label="Former Owner" value=name lcUri=authorityUriLC viafUri=authorityUriVIAF}}
		{{/each}}
	
		{{render 'meta-data-field-template' label="Condition Notes" value=conditionNotes}}

		{{#if archivalData}}
			{{render 'meta-data-field-template' label="Decoration" value=archivalData.decoration}}
			{{render 'meta-data-field-template' label="Century(ies)" value=archivalData.centuryDisplay}}
			{{render 'meta-data-field-template' label="Year Range" value=archivalData.yearRange}}
			{{render 'meta-data-field-template' label="Date Precise" value=archivalData.datePreciseDisplay}}
			{{render 'meta-data-field-template' label="Native Date" value=archivalData.nativeDate}}
			{{render 'meta-data-field-search-multiple-link-template' label="Language(s)" values=archivalData.languagesDisplay fieldName="language" separator=","}}
			{{render 'meta-data-field-search-multiple-link-template' label="Writing System(s)" values=archivalData.writingSystem fieldName="writingSystem" separator=","}}				

			{{#if archivalData.scripts}}
				{{render 'meta-data-field-search-multiple-link-template' label="Script(s)" values=archivalData.scripts fieldName="script" separator=","}}
			{{/if}}		
		{{/if}}
	</table>
</script>

<script id="part-template" type="text/x-handlebars-template">
	<label class="heading">Part {{partNumber}}</label>
	
	<table>		
		{{render 'meta-data-field-template' label="Type" value=partTypeName}}
		{{render 'meta-data-field-template' label="Part Location" value=partLocation}}			
				
		{{#if_eq partTypeName "Printed"}}
			{{render 'meta-data-field-template' label="Place of Printing" value=placeOfOrigin}}
			{{render 'meta-data-field-template' label="Printing Statement" value=printingStatement}}
			{{render 'meta-data-field-template' label="Edition Statement" value=editionStatement}}
			{{render 'meta-data-field-template' label="Format/Signatures" value=formatStatement}}
		{{/if_eq}}
	
		{{#if_not_eq partTypeName "Printed"}}
			{{render 'meta-data-field-template' label="Place of Origin" value=placeOfOrigin}}
		{{/if_not_eq}}
				
		{{render 'meta-data-field-template' label="Century(ies)" value=centuryDisplay}}
		{{render 'meta-data-field-template' label="Year Range" value=yearRange}}
		{{render 'meta-data-field-template' label="Date Precise" value=datePreciseDisplay}}
		{{render 'meta-data-field-template' label="Native Date Precise" value=nativeDatePrecise}}
		{{render 'meta-data-field-template' label="Support" value=supportDisplay}}
		{{render 'meta-data-field-template' label="Support Dimensions" value=supportDimensions}}
				
		{{#if_not_eq partTypeName "Printed"}}
			{{render 'meta-data-field-template' label="Medium" value=medium}}
		{{/if_not_eq}}
	
		{{render 'meta-data-field-template' label="Page Layout" value=layout}}
	
		{{#if_not_eq partTypeName "Printed"}}
			{{render 'meta-data-field-template' label="Writing Space" value=writingSpace}}
		{{/if_not_eq}}
				
		{{#if catchwords}}
			{{render 'meta-data-field-template' label="Catchwords" value='Yes'}}
		{{/if}}
				
		{{#if signatures}}
			{{render 'meta-data-field-template' label="Signatures" value='Yes'}}
		{{/if}}			
	
		{{#if_eq partTypeName "Printed"}}
			{{render 'meta-data-field-template' label="Font(s)" value=font}}
		{{/if_eq}}
	
		{{#if_not_eq partTypeName "Printed"}}
			{{#if writingSystem}}
				{{render 'meta-data-field-search-multiple-link-template' label="Writing System" values=writingSystem fieldName="writingSystem" separator=","}}
			{{/if}}

			{{#if script}}
				{{render 'meta-data-field-search-multiple-link-template' label="Script(s)" values=script fieldName="script" separator=","}}
			{{/if}}			
	
			{{#each scribes}}
				{{render 'meta-data-field-template' label="Scribe" value=contributor.populatedName lcUri=contributor.authorityUriLC viafUri=contributor.authorityUriVIAF}}
				{{render 'meta-data-field-template' label="Scribe NS" value=nameNs valueClass=../languageList}}
			{{/each}}
		{{/if_not_eq}}

		{{#each associatedNames}}
			{{#if contributor.populatedName}}
				{{render 'meta-data-field-search-link-template' label="Associated Name" linkText=contributor.populatedName vhmmlObject=this fields="contributor" searchField="author" searchProp="name" lcUri=contributor.authorityUriLC viafUri=contributor.authorityUriVIAF note=type.displayName}}
			{{/if}}
		{{/each}}

		{{render 'meta-data-field-template' label="Decoration" value=decoration}}
		{{render 'meta-data-field-template' label="Colophon" value=colophonPart valueClass=languageList}}
		{{render 'meta-data-field-template' label="Notes" value=partNotes}}
		{{render 'meta-data-field-template' label="Acknowledgments" value=acknowledgments}}
	</table>
</script>

<script id="object-tab-template" type="text/x-handlebars-template">
	
	{{> editObjectControlsTemplate }}
	{{> descriptionTemplate}}	
	
	{{#each parts}}
		{{> partTemplate}}
	{{/each}}
</script>

<script id="contents-tab-template" type="text/x-handlebars-template">
	
	{{> editObjectControlsTemplate }}
	
	{{#if parts}}	
		{{#each parts}}
			<label class="heading">Part {{partNumber}}</label>
			{{#each contents}}
				{{> contentTemplate}}										
			{{/each}}				
		{{/each}}
	{{/if}}
	
	{{#if archivalData}}		
		{{#each archivalData.content}}
			{{> archivalContentTemplate}}
		{{/each}}
	{{/if}}
	
</script>

<script id="full-description-tab-template" type="text/x-handlebars-template">

	<label class="heading">Overview</label>
	{{> editObjectControlsTemplate }}
	{{> overviewTemplate}}	
	{{> descriptionTemplate}}

	{{#if parts}}
		{{#each parts}}
			{{> partTemplate}}

			{{#each contents}}
				{{> contentTemplate}}
			{{/each}}
		{{/each}}
	{{/if}}

	{{#if archivalData}}		
		{{#each archivalData.content}}
			{{> archivalContentTemplate}}
		{{/each}}
	{{/if}}
</script>

<script id="content-template" type="text/x-handlebars-template">
	<table class="indent">
		{{#if itemNumber}}
			<tr>
				<td><label class="heading">Item {{itemNumber}}</label><td>
			</tr>
		{{/if}}						

		{{render 'meta-data-field-template' label="Item Location" value=itemLocation}}

		{{#each authors}}
			{{render 'meta-data-field-search-link-template' label="Author" linkText=contributor.populatedName vhmmlObject=this fields="contributor" searchField="author" searchProp="name" lcUri=contributor.authorityUriLC viafUri=contributor.authorityUriVIAF}}			
			{{render 'meta-data-field-template' label="Author NS" value=nameNs valueClass=../languageList}}
		{{/each}}
		
		{{render 'meta-data-field-template' label="Title" value=provisionalTitle}}
		{{render 'meta-data-field-template' label="Supplied Title" value=suppliedTitle}}
		{{render 'meta-data-field-template' label="Title NS" value=titleNs valueClass=languageList}}

		{{#if uniformTitle.name}}
			{{render 'meta-data-field-search-link-template' label="Uniform Title" linkText=uniformTitle.name vhmmlObject=this fields="uniformTitle" searchProp="name" searchField="title" lcUri=uniformTitle.authorityUriLC viafUri=uniformTitle.authorityUriVIAF}}
		{{/if}}

		{{#each alternateTitles}}
			{{render 'meta-data-field-template' label="Alternate Title" value=this}}
		{{/each}}
				
		{{render 'meta-data-field-template' label="Pagination/Foliation" value=paginationStatement}}				

		{{#each associatedNames}}
			{{#if contributor.populatedName}}
				{{render 'meta-data-field-search-link-template' label="Associated Name" linkText=contributor.populatedName vhmmlObject=this fields="contributor" searchField="author" searchProp="name" lcUri=contributor.authorityUriLC viafUri=contributor.authorityUriVIAF note=type.displayName}}
			{{/if}}
		{{/each}}
			
		{{render 'meta-data-field-search-multiple-link-template' label="Language(s)" values=languageDisplay fieldName="language"}}

		{{render 'meta-data-field-template' label="Incipit" value=incipit valueClass=languageList}}

		{{render 'meta-data-field-template' label="Explicit" value=explicit valueClass=languageList}}
		{{render 'meta-data-field-template' label="Rubric" value=rubric valueClass=languageList}}
			
		{{render 'meta-data-field-template' label="Contents Detail" value=contentsDetail}}
		{{render 'meta-data-field-template' label="Item Colophon" value=colophonText valueClass=languageList}}
		{{render 'meta-data-field-template' label="Cataloger Tags" value=catalogerTags}}
		{{render 'meta-data-field-template' label="Item Notes" value=itemNotes}}
		{{render 'meta-data-field-template' label="Item Condition" value=itemCondition}}
		{{render 'meta-data-field-template' label="Item Bibliography" value=textBibliography}}
	</table>
</script>

<script id="archival-content-template" type="text/x-handlebars-template">
	<table class="indent">
		<tr>
			<td><label class="heading">Content Item</label><td>
		</tr>		

		{{render 'meta-data-field-template' label="Folder" value=folder}}				
		{{render 'meta-data-field-template' label="Item" value=item}}				
		{{render 'meta-data-field-template' label="Item Extent" value=extent}}				
		{{render 'meta-data-field-template' label="Item Location" value=spanOfFolios}}
		{{render 'meta-data-field-template' label="Type" value=typeName}}
		{{render 'meta-data-field-template' label="Item(s) Description" value=description}}
		{{render 'meta-data-field-template' label="Century(ies)" value=centuryDisplay}}
		{{render 'meta-data-field-template' label="Year Range" value=yearRange}}
		{{render 'meta-data-field-template' label="Date Precise" value=datePreciseDisplay}}
		{{render 'meta-data-field-template' label="Native Date" value=nativeDate}}
		{{render 'meta-data-field-template' label="Support" value=supportDisplay}}
		{{render 'meta-data-field-template' label="Support Dimensions" value=supportDimensions}}
		{{render 'meta-data-field-template' label="Medium" value=medium}}
		{{render 'meta-data-field-template' label="Page Layout" value=pageLayout}}
		{{render 'meta-data-field-search-multiple-link-template' label="Language(s)" values=languagesDisplay fieldName="language" separator=","}}
		{{render 'meta-data-field-search-multiple-link-template' label="Writing System(s)" values=writingSystem fieldName="writingSystem" separator=","}}
		{{render 'meta-data-field-search-multiple-link-template' label="Script(s)" values=script fieldName="script" separator=","}}

		{{#each scribes}}
			{{render 'meta-data-field-template' label="Scribe" value=contributor.populatedName lcUri=contributor.authorityUriLC viafUri=contributor.authorityUriVIAF}}
			{{render 'meta-data-field-template' label="Scribe NS" value=nameNs valueClass=../languageList}}
		{{/each}}

		{{#each associatedNames}}
			{{#if contributor.populatedName}}
				{{render 'meta-data-field-search-link-template' label="Associated Name" linkText=contributor.populatedName vhmmlObject=this fields="contributor" searchField="author" searchProp="name" lcUri=contributor.authorityUriLC viafUri=contributor.authorityUriVIAF note=type.displayName}}
			{{/if}}
		{{/each}}

		{{render 'meta-data-field-template' label="Item Condition" value=archivalContentItemCondition}}
		{{render 'meta-data-field-template' label="Decoration" value=archivalContentDecoration}}
		{{render 'meta-data-field-template' label="Notes" value=notes}}
		{{render 'meta-data-field-template' label="Item Bibliography" value=bibliography}}		
	</table>
</script>

<script id="edit-object-controls-template" type="text/x-handlebars-template">
	
	<a data-toggle="tooltip" data-placement="top" title="Corrections or additions?" class="pull-right correctionsLink" href="javascript:showCorrectionsDialog('{{hmmlProjectNumber}}');"><img src="${pageContext.request.contextPath}/static/img/glyphicons-conversation2.png" width="20" alt="Corrections or additions?" /></a>

	{{#if displayPrintIcon}}
		<a data-toggle="tooltip" data-placement="top" title="Print this record?" alt="Print this record?" class="pull-right metadata-print-icon" href="javascript:window.print()" aria-label="Print"><span class="pull-right glyphicon glyphicon-print" aria-hidden="true"></span></a>
	{{/if}}

	<a data-toggle="tooltip" data-placement="top" title="Email this record?" class="pull-right metadata-email-icon" href="javascript:sendVhmmlEmail('Record from vHMML.org - HMML Project Number: {{hmmlProjectNumber}}',{'Record Type':'{{recordTypeName}}', 'Country':'{{escape country.name}}','City':'{{escape city.name}}','Repository':'{{escape repository.name}}','Shelfmark':'{{escape shelfMark}}', 'Collection':'{{escape archivalData.collectionFond}}', 'Series':'{{escape archivalData.series}}', 'Sub-Series':'{{escape archivalData.subSeries}}', 'Sub-Sub Series':'{{escape archivalData.subSubSeries}}', 'HMML Proj. Num.':'{{hmmlProjectNumber}}', 'Permanent link':'https://${configValues['permalink.url'].value}/readingRoom/view/{{id}}'})" aria-label="Email"><span class="pull-right glyphicon glyphicon-envelope" aria-hidden="true"></span></a>

	<a data-toggle="tooltip" data-placement="top" title="Add to My List" alt="Add to My List" class="pull-right metadata-myList-save-icon addMyListObjectIcon addMyListObjectButton" aria-label="Save to My List" data-object-id="{{id}}" data-object-type="readingRoom" data-object-saved="{{myListSaved}}">
	{{#if myListSaved}}
		<span class="glyphicon glyphicon-star"></span>
	{{else}}
		<span class="glyphicon glyphicon-star-empty"></span>
	{{/if}}
	</a>
	
	<a data-object-id="{{id}}" data-toggle="tooltip" data-placement="top" title="Export object data as JSON" alt="Export object data as JSON" class="pull-right metadata-json-icon data-export" data-export-type="JSON" aria-label="Export object data as JSON"><span class="dataExportButton">JSON</span></div></a>

	{{#if iconName}}
		<a data-toggle="tooltip" data-placement="top" title="View IIIF manifest URL" alt="View IIIF manifest URL" class="pull-right metadata-manifest-url-icon" aria-label="View IIIF manifest URL" data-object-id="{{id}}"><img src="${pageContext.request.contextPath}/static/img/iiif-logo.png" class="iiif-logo" /></a>
		<span id="metadata-manifest-url-content"></span>	
	{{/if}}

<security:authorize ifAnyGranted="ROLE_ADMIN,ROLE_LEVEL_I_CATALOGER,ROLE_LEVEL_II_CATALOGER,ROLE_LEVEL_III_CATALOGER,ROLE_SCHOLAR">								
		<div class="editControls">
			{{#if editable}}
				{{#if lockedByDifferentUser}}
					<a class="btn reading-room right disabled">
						<span class="glyphicon glyphicon-lock" aria-hidden="true"></span> Edit
					</a>
				{{else}}
					<a class="btn reading-room right" href="javascript:editObject({{id}});">Edit</a>
				{{/if}}
			{{/if}}

			{{#if active}}
				<span class="activeLabel right">Active <div class="activeIndicator btn-success"/></span>
			{{else}}
				<span class="activeLabel right">Pending <div class="activeIndicator btn-danger"/></span>
			{{/if}}
		</div>									
	</security:authorize>
</script>

<script id="permalink-same-window-template" type="text/x-handlebars-template">
	{{render 'permalink-template' linkTarget="_self" label="Permanent Link:" link="https://${configValues['permalink.url'].value}/readingRoom/view" id=id linkClass="removeAfterText searchHitsLink"}}
</script>

<script id="iiif-manifest-sign-in-message-template" type="text/x-handlebars-template">
	At the request of our partners, this object's IIIF manifest URL requires <a href="${pageContext.request.contextPath}/registration">registration</a> to view in vHMML Reading Room.
</script>

<script id="iiif-manifest-message-template" type="text/x-handlebars-template">
	<div class="input-group iiif-manifest-url-field-wrapper">
		<input type="text" class="form-control iiif-manifest-url-field" id="iiif-manifest-url-field" readonly value="https://www.vhmml.org/image/manifest/{{id}}" />
		<span class="input-group-btn">
        	<button class="btn btn-default iiif-manifest-copy-button" type="button" aria-label="Copy manifest URL"><span class="glyphicon glyphicon-duplicate" aria-label="hidden"></span></button>
      	</span>
	</div>

	<p>At the request of our partners, IIIF manifest URLs for objects requiring registration open only within vHMML Reading Room.</p>
</script>

<script type="text/javascript">
	var citiesJson;
	var repositoriesJson;
	var agreementAccepted = JSON.parse('${acceptedReadingRoomAgreement}');
	var pagingControl = null;	
	var noSearchResultsTemplate = Handlebars.compile($('#no-search-results-template').html());		
	var overviewTabTemplate = Handlebars.compile($('#overview-tab-template').html());		
	var objectTabTemplate = Handlebars.compile($('#object-tab-template').html());
	var contentsTabTemplate = Handlebars.compile($('#contents-tab-template').html());
	var fullDescriptionTabTemplate = Handlebars.compile($('#full-description-tab-template').html());
	var descriptionTemplate = Handlebars.registerPartial('descriptionTemplate', $('#description-template').html());
	var partTemplate = Handlebars.registerPartial('partTemplate', $('#part-template').html());
	var contentTemplate = Handlebars.registerPartial('contentTemplate', $('#content-template').html());
	var archivalContentTemplate = Handlebars.registerPartial('archivalContentTemplate', $('#archival-content-template').html());
	var overviewTemplate = Handlebars.registerPartial('overviewTemplate', $('#overview-template').html());
	var editObjectControlsTemplate = Handlebars.registerPartial('editObjectControlsTemplate', $('#edit-object-controls-template').html());	
	var permalinkSameWindowTemplate = Handlebars.compile($('#permalink-same-window-template').html());
	var iiifManifestMessageTemplate = Handlebars.compile($('#iiif-manifest-message-template').html());
	var iiifManifestSignInMessageTemplate = Handlebars.compile($('#iiif-manifest-sign-in-message-template').html());
	var selectedObjectJson;
	
	
	<c:if test="${not empty savedSearchJson}">
		savedSearch = ${savedSearchJson};
	</c:if>
	
	<c:if test="${not empty selectedObjectJson}">
		selectedObjectJson = ${selectedObjectJson};
	</c:if>
	
	$(function() {
		var $body = $('body');
		
		initSearch('${savedSearch.searchTerms.beginDate}', '${savedSearch.searchTerms.endDate}');	
		
		/**
		 * Override the shared information for share buttons for Reading Room.
		 */
		$body.on('show.bs.modal','#canvas-link-modal', function() {
			var link = $('.permanent-link-property').attr('href');
			var attribution = encodeURIComponent($('.metadata-item.attribution .metadata-value').text());
			// We are grabbing the first occurrence of the RR object number because the value may appear more than
			// once in the DOM with the same class.
			var label = 'HMML Project Number: ' + encodeURIComponent($('.hmml-project-number-property-value:first').text());
			
			ShareButtons.updateButtonLinks({
		          'attribution': attribution,
		          'label': label,
		          'link': link,
		          'thumbnailUrl': ''
			});
			
			$('#canvas-link').val(link);
		});
		
		$('a.signIn').click(function(e) {
			e.preventDefault();
			var link = $(this).attr('href');
			
			saveSearchState(function() {
				window.location = link;
			});
		});
		
		$('a.saveSearch').click(function(e) {
			e.preventDefault();
			var link = $(this).attr('href');
			
			saveSearchState(function() {
				window.location = link;
			});
		});		
		
		if(selectedObjectJson) {
			isSearchOrDescriptionPanel = true;
			
			showImageThumbnail(selectedObjectJson);
			refreshMetaData(selectedObjectJson);
			$('#metaDataPanel').show();
			$('.btn-backToResults').show();
		}
	
// VHMMLONE-2884 - Remove usage agreement dialog, leaving commented out as per HMML direction
//		if(!agreementAccepted) {
//			showUsageAgreement();	
//		}

		// Handle the event when the IIIF icon is clicked...
		$body.on('click', '.metadata-manifest-url-icon', function() {
			// Display the modal window for the user...
			var iiifManifestDialog = new Dialog({
				moveable: false,
				title: 'IIIF Manifest URL',
				message: $('#metadata-manifest-url-content').html(),
				closeButtonLabel: 'Close'
			});
			
			iiifManifestDialog.show();
		});
		
		// Handle the event when the IIIF copy button is clicked...
		// Copy the manifest URL to the clipboard...
		$body.on('shown.bs.modal', '#vhmml-dialog', function() {
			if ($('.iiif-manifest-copy-button').length > 0) {
				new ClipboardJS('.iiif-manifest-copy-button', {
					container: document.getElementById('vhmml-dialog'),
					text: function() {
						return $('#iiif-manifest-url-field').val();
					}
				});
			}
		});
		
		// Handle event when the JSON or XML data export icon is clicked.
		$body.on('click', '.data-export', function() {
			showDialogForDataExport($(this).attr('data-export-type'), $(this).attr('data-object-id'));
		});
		
	});
	
	/**
	 * Show the dialog modal window to confirm that the user wants to download the file.
	 */
	function showDialogForDataExport(exportType, objectId) {
		var dialog = new Dialog({
			title: 'Do you want to download the ' + exportType + ' file?',
			type: 'confirm',				
			message: 'The manuscript metadata in vHMML Reading Room is available for reuse under a Creative Commons Attribution 4.0 International License (CC BY 4.0).',			
			buttonsCssClass: 'reading-room',
			showCloseIcon: true,
			closeButtonCssClass: 'btn-default',
			closeButtonLabel: 'No',
			keyboard: false,
			moveable: true,
			buttons: {
				'Yes': function() {
					window.location = contextPath + '/dataPortal/export/full/' + objectId + '/' + exportType;
					dialog.hide();
				}
			},
		});
		
		dialog.show();
	}
	
	/**
	 * Get the message for the IIIF manifest modal depending on access restriction.
	 **/
	function generateIiifManifestMessage(object) {
		var accessRestriction = object.accessRestriction.name;
		
		// If the access restriction for the object is REGISTERED or REGISTERED_ONLY, and the user is not authenticated,
		// then we need to show the user a specific message that they need to be registered...
		if((accessRestriction === 'REGISTERED' || accessRestriction === 'REGISTERED_ONLY') && !isAuthenticated) {
			$('#metadata-manifest-url-content').html(iiifManifestSignInMessageTemplate(object));
		} else if (accessRestriction === 'UNREGISTERED' || (isAuthenticated && (accessRestriction === 'REGISTERED' || accessRestriction === 'REGISTERED_ONLY'))) {
			// If the object is UNREGISTERED or if the user is authenticated and object is REGISTERED or REGISTERED_ONLY, then show the manifest URL...
			$('#metadata-manifest-url-content').html(iiifManifestMessageTemplate(object));
		}
	}
	
	// reading room has it's own refreshMetaData function because it's very different from folio
	function refreshMetaData(object) {
		
		window.scrollTo(0, 0);
		var $metaDataPanel = $('#metaDataPanel');
		$metaDataPanel.find('li.overview a').click();
		
		object.displayPrintIcon = true;
		
		$('#overview').html(overviewTabTemplate(object));
		
		object.displayPrintIcon = false;
		$('#object').html(objectTabTemplate(object));		
		
		if(object.allContent.length || (object.type === 'ARCHIVAL_OBJECT' && object.archivalData.content.length)) {
			$('#contents').html(contentsTabTemplate(object));
			$metaDataPanel.find('li.contents').removeClass('disabled');
		} else {
			$metaDataPanel.find('li.contents').addClass('disabled');
		}
		
		object.displayPrintIcon = true;
		
		$('#description').html(fullDescriptionTabTemplate(object));
		
		// When metadata is refreshed, we also want to generate the IIIF manifest message at the same time.
		generateIiifManifestMessage(object);
	}
	
	function showImageThumbnail(object) {
		$('#searchResultsWrapper').hide();
		
		var html = '';
		var imageWidth = $('.bodyContent').width() * .8;
		var hasImages = object.iconName;
		var online = object.accessRestriction.name !== 'ON_SITE_ONLY_ORDER_SCAN' && object.accessRestriction.name !== 'ON_SITE_ONLY';
		var cssClass = 'thumb';
		var url = '';
		
		if(hasImages && online) {
			cssClass += ' responsive viewImagesLink';
			url = getIconUrl(object, true) + '/' + imageWidth;
			html = '<img src="' + url + '" class="' + cssClass + '" data-object-id="' + object.id + '" data-access="' + object.accessRestriction.name + '"/>';			
		} else {			
			html = getPlaceholderImage(object, !online, 'http://www.hmml.org/research/services/manuscript-image-order-form', true);
		}
		
		if(hasImages) {
			var label = (object.accessRestriction.name == 'REGISTERED' || object.accessRestriction.name == 'REGISTERED_ONLY') && !isAuthenticated ? 'Sign in to view image(s)' : 'View Image(s)';
			html += '<div><button class="btn ${pageCategory} viewImagesLink" data-object-id="' + object.id + '" data-access="' + object.accessRestriction.name + '">' + label + '</button></div>';				
		}
		
		// hide mirador viewer
		$('#viewer').hide();
		var $thumbViewer = $('#thumbnail-viewer');
		showSpinner({element: $thumbViewer});
		$thumbViewer.show();
		
		if(url) {
			preloadImage(url, function() {
				$thumbViewer.html(html);
			});	
		} else {
			$thumbViewer.html(html);
		}				
	}
	
	function initSearch(beginDate, endDate) {		
		
		// init page-scope paging control
		pagingControl = PagingControl.get('searchResults');
		initSearchSelectListsForReadingRoom();		
		initDateSlider(beginDate, endDate);				
		$('button.searchButton').click(function() {
			newSearch();
		});
		
		$('span.menuCloseIcon, div.searchToggleBar').click(function() {
			var $selectedMenu = $('#' + $(this).attr('data-menu'));
			slidePanel($selectedMenu);
		});
		
		runSavedSearch();
	}
	
	// we get all select list options via ajax because some of the lists are very large, so if we render
	// the options html as part of the intial page request it makes the page load very slow. this
	// way the options are grabbed and rendered in the background
	var optionsCache = {};
	
	function initSearchSelectListsForReadingRoom() {
		var optionsUrl = contextPath + '/options/';
		var ajaxCalls = [];
		
		$('#search-container select.bootstrap-select').each(function(index) {
			var $selectList = $(this);
			var listName = $selectList.attr('name');
			$selectList.selectpicker();
			
			if(optionsCache[listName]) {
				appendOptions($selectList, optionsCache[listName]);
				$selectList.selectpicker('refresh');
			} else {
				ajaxCalls.push(
					$.ajax({
						url: optionsUrl + listName,
						success: function(options) {						
							appendOptionsForReadingRoom($selectList, options);
							$selectList.selectpicker('refresh');
							optionsCache[listName] = options;
							// need to capture complete list of cities and repositories so we can reset dependent lists when country/city is deselected
							if(listName == 'city') {
								citiesJson = options;
							} else if(listName == 'repository') {
								repositoriesJson = options;
							}
						}
					})
				);
			}					
		});
		
		return ajaxCalls;		
	}
	
	function appendOptionsForReadingRoom($selectList, options) {
		var optionsHtml = '';
		var valueSelected = false;
		
		for(var i = 0; i < options.length; i++) {
			var option = options[i];
			var selected = '';
			
			if(option.selected) {
				valueSelected = true;
				selected = 'selected="selected"';
			}
			
			optionsHtml += '<option value="' + option.value + '" ' + selected + ' >' + option.name + '</option>';
		}
		
		$selectList.append(optionsHtml);
		
		if(valueSelected){
			$selectList.change();
		}
	}

	// TODO: put this in a Handlebars template
	function getSearchHitHtml(hit, fieldDisplayNames) {
		var overview = hit.objectOverview;
		var html = '<div class="searchHit">';		
		var iconHtml = '';
		var hasImages = overview.iconName;
		var savedIcon = overview.myListSaved ? 'glyphicon-star' : 'glyphicon-star-empty';
		
		if(hasImages) {
			iconHtml = '<img src="' + getIconUrl(overview) + '" class="viewImagesLink" data-object-id="' + overview.id + '" data-access="' + overview.accessRestriction + '"/>';
		} else {
			var $placeholderImage = $(getPlaceholderImage(overview));
			$placeholderImage.addClass('viewDescription');
			$placeholderImage.attr('data-object-id', overview.id);
			iconHtml = $placeholderImage[0].outerHTML;
		}
		
		html += '<div class="row row-eq-height">';	
			html += '<div class="rr-thumbnail" onmousedown="return false">';
				html += iconHtml;
			html += '</div>';
			
			html += '<div class="flex">';
			
				var countryCity = overview.city === overview.country ? getSearchHitFieldsHtml([overview.country]) : getSearchHitFieldsHtml([overview.city, overview.country]);
				var projectNumber = overview.hmmlProjectNumber;
				html += '<div class="searchHitSection">';
					html += '<h4 class="section-title">' + countryCity + '</h4>';
					html += '<h4 class="section-title">' + getSearchHitFieldsHtml([overview.repository, overview.shelfmark]) + '</h4>';
					html += '<h4 class="section-title">' + getSearchHitFieldsHtml([overview.centuryDisplay]) + '</h4>';
				html += '</div>';
				html += '<div class="searchHitSection">';
					html += '<i>' + getSearchHitFieldsHtml([overview.support, overview.extent, overview.dimensions]) + '</i>';
					html += '<i>' + getSearchHitFieldsHtml([overview.languages]) + '</i>';
				html += '</div>';
				html += '<div class="searchHitSection">HMML Project Number: ' + projectNumber + '</div>';
				// Uncomment the following line if a permalink is needed on the search hit. 
				// html += permalinkSameWindowTemplate(overview);
			html += '</div>';
			
			<security:authorize ifAnyGranted="ROLE_ADMIN,ROLE_LEVEL_I_CATALOGER,ROLE_LEVEL_II_CATALOGER,ROLE_LEVEL_III_CATALOGER,ROLE_SCHOLAR">			
		
				html += '<div>';
					var cssClass =  overview.active ? 'btn-success' : 'btn-danger';
					var activeText =  overview.active ? 'Active ' : 'Pending ';
					html += '<span class="activeLabel">' + activeText + '<div class="activeIndicator ' + cssClass + '"/></span>';
				html += '</div>';						
				
				if(hit.editable) {
					html += '<div>';
						var cssClass = overview.lockedByDifferentUser ? 'btn ${pageCategory} disabled' : 'btn ${pageCategory}';
						
						html += '<a class="' + cssClass + '" href="javascript:editObject(' + overview.id + ');">';
						
						if(overview.lockedByDifferentUser) {
							html += '<span class="glyphicon glyphicon-lock" aria-hidden="true"></span> ';
						}
						
						html += 'Edit</a>';								
					html += '</div>';	
				}					
					
			</security:authorize>
		
		html += '</div>'; // end row
		
		if (hit.highlightFields && Object.keys(hit.highlightFields).length) {			
			var i = 0;
			
			for (var fieldName in hit.highlightFields) {
				var hidden = i > 2;
				
				html += '<div class="row searchHitText' + (hidden ? ' vhmml-hide toggleHit' : '') + '">';
					html += '<hr class="separateHighlightFields"/>';
					html += '<span class="glyphicon glyphicon-check"/>&nbsp;' + hit.highlightFields[fieldName] + '<br/>'
					html += '<small>Found in <b><i>' + fieldDisplayNames[fieldName] + '</i></b></small>';
				html += '</div>';					
				i++;
			}
			
			if(Object.keys(hit.highlightFields).length > 3) {
				html += '<div class="row">';
					html += '<hr class="separateHighlightFields"/>';
					html += '<label><a class="toggleHiddenMatches">Show additional matches...</a></label>';
				html += '</div>';					
			}
		}
	
		html += '<div class="row pull-left searchHitButtons">';
			html += '<button class="btn ${pageCategory} viewDescription" data-object-id="' + overview.id + '">Description</button>';
			if(hasImages) {
				var label = (overview.accessRestriction == 'REGISTERED' || overview.accessRestriction == 'REGISTERED_ONLY') && !isAuthenticated ? 'Sign In To View Image(s)' : 'View Image(s)';
				html += '<button class="btn ${pageCategory} viewImagesLink" data-object-id="' + overview.id + '" data-access="' + overview.accessRestriction + '">' + label + '</button>';
			}						
		html += '</div>';
		
		html += '<div class="row pull-right addMyListObject">';
		
		
		html += '<button alt="Add to My List" class="btn ${pageCategory} addMyListObjectButton" data-object-id="' + overview.id + '" data-object-type="readingRoom" data-object-saved="' 
				+ overview.myListSaved + '">Save&nbsp;&nbsp;<span class="glyphicon ' + savedIcon + '"></span></button>';
		
		html += '</div>';
		
		html += '<div class="clearfix"></div>';		
		
		html += '</div>';

		return html;
	}
	
	function getPlaceholderImage(object, largePlaceholder, link, newWindowLink) {
		var cssClass = 'text-center';
		// default to green-icon with open book (digital objects)
		var icon = '<i class="card-icon green-icon icon-open-book"></i>';
		var online = object.accessRestriction.name !== 'ON_SITE_ONLY' && object.accessRestriction.name !== 'ON_SITE_ONLY_ORDER_SCAN';
		
		// this is the placeholder image you see when clicking on the Description button for items that can only be viewed on-site or by ordering a copy
		if(largePlaceholder && !online) {			
			icon = '<img src="' + contextPath + '/static/img/microfilm-placeholder.png" class="responsive"/>';
		} else {
			switch (object.format) {
				// for microfilm we show the film reel
				case 'Microform':
				case 'Scanned Microform':
					cssClass += ' image-placeholder light-blue-bg';
					icon = '<i class="card-icon blue-icon icon-film-reel"></i>';														
					break;
				default: 
					cssClass += ' image-placeholder light-green-bg';
			}
		}
		
		var placeholderImage = '<div class="' + cssClass + '">';
		
			if(link) {
				placeholderImage += '<a href="' + link + '"';
				
				if(newWindowLink) {
					placeholderImage += 'target="_blank"'
				}
				
				placeholderImage += '>' + icon + '</a>';
			} else {
				placeholderImage += icon;	
			}
			
			placeholderImage += '</div>';
		
		if(!largePlaceholder) {
			placeholderImage = '<div class="icon-wrapper">' + placeholderImage + '</div>' 
		}
		
		return placeholderImage;
	}
	
	function getIconUrl(object, largePlaceholder) {
		var url = contextPath;
		var online = object.accessRestriction !== 'ON_SITE_ONLY_ORDER_SCAN' && object.accessRestriction !== 'ON_SITE_ONLY';		
		
		// if they've selected an icon and the images are available online
		if(object.iconName && online) {
			// the projectNumber could have html if it was the result of a search hit that's got highlight formatting
			// we may want to completely separate the search hit atts from actual object attribute values at some point
			var projectNumber = stripHtml(object.hmmlProjectNumber);
			url += '/image/thumbnail/READING_ROOM/' + projectNumber + '/' + object.iconName; 	
		} 
		
		return url;
	}

	function getSearchHitFieldsHtml(fieldValues) {
		var html = '';

		if (fieldValues) {
			
			for(var i = 0; i < fieldValues.length; i++) {
				
				var value = fieldValues[i]
				
				if(value) {
					
					if(i > 0 && html) {
						html += ', ';
					}
					
					html += value;					
				}				
			}
			
			html = '<div>' + html + '</div>';
		}

		return html;
	}
	
	function showUsageAgreement() {
		var dialog = new Dialog({
			title: '<img src="' + contextPath + '/static/img/vhmml-logo-black.png" alt="vHMML"/>Reading Room User Agreement',
			type: 'confirm',				
			message: $('#readingRoomUsageAgreement').html(),			
			buttonsCssClass: '${pageCategory}',
			showCloseIcon: false,
			closeButtonCssClass: 'btn-default',
			closeButtonFunction: function() {
				window.location = contextPath + '/';
			},
			keyboard: false,
			moveable: true,
			buttons: {
				'I Agree': function() {
					$.ajax({
						url: contextPath + '/user/acceptReadingRoomAgreement',
						method: 'PUT',
						success: function() {
							agreementAccepted = true;
							dialog.hide();							
						}
					});
				}
			},
		});
		
		dialog.show();
		$('#vhmml-dialog button:last-child').focus();
	}
	
	function saveSearchState(onComplete, postLoginUrl) {
		var pagingData = pagingControl.getPagingData();						
		var searchTerms = getSearchTerms();
		var searchType = $('#search-container form').hasClass('advanced') ? 'advanced' : 'basic';
		var postLogin = postLoginUrl ? {postLoginDestination: postLoginUrl} : {};
		var data = $('div.searchHit').length ? $.extend({}, pagingData, {searchType: searchType, searchTerms: searchTerms}, postLogin) : {};
		
		if(!onComplete) {
			onComplete = function() {};
		}
		
		$.ajax({
			url: contextPath + '/readingRoom/saveSearchState',
			dataType: 'json',
			contentType:'application/json',
			data: data,
			complete: onComplete
		});
	}
	
	function goToLogin() {
		var onComplete = function() {
			window.location = contextPath + '/login';
		}
		var postLoginUrl = '/readingRoom';
		
		saveSearchState(onComplete, postLoginUrl);				
	}
	
	function editObject(id) {
		saveSearchState(function() {
			window.location = contextPath + '/catalogDatabase/edit?id=' + id;	
		});		
	}
	
	function initSearchToggle($menu, $otherMenu) {		
		
		$menu.on('hidden.bs.collapse', function () {
			if(!$otherMenu.is(':visible')) {
				$otherMenu.collapse('show');	
			}			
		});
		
		$menu.on('shown.bs.collapse', function () {
			if($otherMenu.is(':visible')) {
				$otherMenu.collapse('hide');
			}
		});
	}
	
	function getReadingRoomSortByOptions() {		
		var html = '';
		html += '<option value="beginDate">Date</option>';
		html += '<option value="country">Country</option>';
		html += '<option value="city">City</option>';
		html += '<option value="repository">Repository</option>';				
		html += '<option value="hmmlProjectNumber">HMML Project Number</option>';
		
		return html;
	}
	
</script>

<c:if test="${not empty selectedObjectJsonLd}">
	<%@ include file="/WEB-INF/jsp/readingRoom/readingRoomJsonLd.jsp" %>
</c:if>