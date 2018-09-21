<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<%@ taglib prefix="vhmml" tagdir="/WEB-INF/tags" %>

<tiles:importAttribute name="pageCategory" />

<%-- CSS declarations --%>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-slider/10.0.0/css/bootstrap-slider.min.css" />
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.12.4/css/bootstrap-select.min.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/css/vhmml-search-page.css?version=${applicationVersion}"/>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/css/data.css?version=${applicationVersion}"/>

<%-- Stylesheets for Data Portal landing page --%>
<link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/blocks-overrides.css?version=${applicationVersion}"/>
<link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/blocks-header.css?version=${applicationVersion}"/>
<link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/blocks-general.css?version=${applicationVersion}"/>

<%@include file="/WEB-INF/jsp/data/home-inline-styles.jsp" %>

<%-- Main content area --%>
<span data-value="${maxRecordsForFullDataDownload}" id="maxRecordsForFullDataDownload"></span>
<span data-value="${maxRecordsForListingDataDownload}" id="maxRecordsForListingDataDownload"></span>

<%-- DATA PORTAL HEADER SECTION --%>
<div class="clearfix">	

		<c:if test="${ not empty dataPortalHeaderBlock.uiBlockComponents['URL'].value }">
		<a href="${ dataPortalHeaderBlock.uiBlockComponents['URL'].value }">
		</c:if>
			<div id="data-portal-header-container" class="${dataPortalHeaderBlock.styleName} block-header-container">
				<div id="data-portal-text-container" class="block-header-text-container">
					<div id="data-portal-header-heading" class="block-header-heading"><h1>${ dataPortalHeaderBlock.uiBlockComponents['HEADING'].value }</h1></div>
					<div id="data-portal-header-content" class="block-header-content">${ dataPortalHeaderBlock.uiBlockComponents['CONTENT'].value }</div>
				</div>
				<div id="data-portal-header-overlay" class="block-header-overlay">
				</div>
			</div>
		<c:if test="${ not empty dataPortalHeaderBlock.uiBlockComponents['URL'].value }">
		</a>
		</c:if>
	
	<div id="search-container" class="container">
		<div class="formSection" id="dataSearch">
			<form class="dataSearchForm form-horizontal" autocomplete="off" name="searchForm" data-search-url="/dataPortal/search" data-object-type="READING_ROOM">
				<div id="keyword-search-container">
					<div class="search-options-close-button">
						<i class="fa fa-times fa-3x"></i>
					</div>
					<div class="keyword-search-bar input-group">
						<input type="text" placeholder="Search Data Portal with keyword (excluding project numbers)..." class="keyword form-control" value="${vhmmlSession.savedReadingRoomSearch.searchTerms.keyword}" />
						<span class="input-group-btn">
					    	<button class="btn btn-default clearSearchOptionsButton" type="button">Clear</button>
					    	<button class="btn btn-default dataSearchButton searchButton" type="button">Search <i class="fa fa-chevron-circle-right"></i></button>
					    </span>
					</div>
					
				</div>
				
				<div id="search-options-panel">
					<%@include file="/WEB-INF/jsp/data/search.jsp"%>
				</div>
			</form>
		</div>
	</div>
</div>

<div class="bodyContent">
	<div id="searchResultsWrapper" class="flex">			
		<vhmml:paging-controls 
			tableId="dataPortalTable" 
			searchFunction="dataSearch" 
			pageSize="${pageSize}" 
			currentPage="${currentPage}" 
			pageCategory="${pageCategory}" 
			sortBy="${sortBy}"
			showResultsData="true" 
			showJumpToPage="true" 
			showPageSize="true" 
			hideResultsDataSort="true" />
		
		<div id="searchResults">
			<jsp:include page="/WEB-INF/jsp/data/description.jsp"></jsp:include>
		</div>
		
		<div class="table-responsive">
			<table id="dataPortalTable" class="table table-striped table-nowrap"></table>
		</div>
		
		<vhmml:paging-controls 
			tableId="dataPortalTable" 
			searchFunction="dataSearch" 
			pageSize="${pageSize}" 
			currentPage="${currentPage}" 
			pageCategory="${pageCategory}" 
			sortBy="${sortBy}" 
			showJumpToPage="true"
			showResultsData="true"  
			showPageSize="true"
			hideResultsDataSort="true" />
	</div>
</div>
<%-- Handlebars templates for the data portal --%>
<%@include file="/WEB-INF/jsp/search-common-templates.jsp"%>
<%@include file="/WEB-INF/jsp/data/data-handlebars-templates.jsp"%>

<%-- JS declarations --%>
<script src="https://cdnjs.cloudflare.com/ajax/libs/handlebars.js/4.0.11/handlebars.min.js"></script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-slider/10.0.0/bootstrap-slider.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.12.4/js/bootstrap-select.min.js"></script>


<script type="text/javascript" src="${pageContext.request.contextPath}/static/js/search-common.js?version=${applicationVersion}"></script>

<%-- reading-room.js has JavaScript event listeners that we will need to reuse for the data portal search functionality --%>
<script type="text/javascript" src="${pageContext.request.contextPath}/static/js/reading-room.js?version=${applicationVersion}"></script>

<%-- data-portal.js will hold our JavaScript code for the data portal functionality --%>
<script type="text/javascript" src="${pageContext.request.contextPath}/static/js/data-portal.js?version=${applicationVersion}"></script>

<script type="text/javascript">
var citiesJson;
var repositoriesJson;

/**
 * Method will populate the search's select lists.
 * @returns
 */
function initDataPortalSearchSelectLists() {
	var optionsUrl = contextPath + '/options/';
	var ajaxCalls = [];

	//we get all select list options via ajax because some of the lists are very large, so if we render
	// the options html as part of the intial page request it makes the page load very slow. this
	// way the options are grabbed and rendered in the background
	var optionsCache = {};
	
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
						appendOptions($selectList, options);
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
</script>

