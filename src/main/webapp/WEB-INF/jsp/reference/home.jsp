<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="vhmml" tagdir="/WEB-INF/tags"%>

<link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/reference.css?version=${applicationVersion}" />

<%-- Stylesheets for RR landing page --%>
<link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/blocks-overrides.css?version=${applicationVersion}"/>
<link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/blocks-header.css?version=${applicationVersion}"/>
<link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/blocks-general.css?version=${applicationVersion}"/>

<%@include file="/WEB-INF/jsp/reference/home-inline-styles.jsp" %>

<div class="clearfix">

	<c:if test="${ not empty referenceHeaderBlock.uiBlockComponents['URL'].value }">
		<a href="${ referenceHeaderBlock.uiBlockComponents['URL'].value }">
	</c:if>
			<div id="reference-header-container" class="${referenceHeaderBlock.styleName} block-header-container">
				<div id="reference-header-text-container" class="block-header-text-container">
					<div id="reference-header-heading" class="block-header-heading"><h1>${ referenceHeaderBlock.uiBlockComponents['HEADING'].value }</h1></div>
					<div id="reference-header-content" class="block-header-content">${ referenceHeaderBlock.uiBlockComponents['CONTENT'].value }</div>
				</div>
				<div id="reference-header-overlay" class="block-header-overlay">
				</div>
			</div>
	<c:if test="${ not empty referenceHeaderBlock.uiBlockComponents['URL'].value }">
		</a>
	</c:if>

	<div id="search-container">
		<form id="searchForm" name="searchForm" class="searchForm" onsubmit="javascript:newSearch();return false;">
			<div id="keyword-search-container">
				<div class="keyword-search-bar input-group">
					<input placeholder="Search Reference by keyword..." id="searchString" type="text" name="searchString" value="${searchString}" class="form-control" />
					<span class="input-group-btn">
				    	<button id="clearSearchOptionsButton" class="btn btn-default clearSearchOptionsButton" type="button">Clear</button>
				    	<button id="searchButton" class="btn btn-default searchButton" type="button">Search <i class="fa fa-chevron-circle-right"></i></button>
				    </span>
				</div>
			</div>
		</form>
	</div>
	
</div>

<div class="results-container">
	<security:authorize ifAnyGranted="ROLE_REFERENCE_CREATOR,ROLE_ADMIN">
		<div class="col-sm-12 text-right actionButtons">
			<div class="btn-group">
				<a href="${pageContext.request.contextPath}/reference/admin/add">
					<button type="button" class="btn btn-success">Add</button>
				</a>				
			</div>
		</div>		
	</security:authorize>

	<vhmml:paging-controls tableId="referenceTable" searchFunction="referenceSearch" pageSize="${pageSize}" currentPage="${currentPage}" pageCategory="reference" showResultsData="true" hideResultsDataSort="true" showJumpToPage="true" showPageSize="true" />

	<br />
	
	<div id="invalidSearchMessage" class="alert alert-warning" role="alert">
		<span class="glyphicon glyphicon-exclamation-sign"></span>Please enter at least 2 characters to perform a text search.		
	</div>
	
	<div id="noResultsMessage" class="alert alert-warning" role="alert">
		<span class="glyphicon glyphicon-exclamation-sign"></span>No results found for search
		<a data-toggle="tooltip" data-placement="top" title="Corrections or additions?" href="javascript:showCorrectionsDialog();" class="right" tabindex="0"><img src="${pageContext.request.contextPath}/static/img/glyphicons-conversation2.png" width="20" alt="Corrections or additions?" />&nbsp;Corrections or additions?</a> 
	</div>

	<div class="table-responsive">
		<table id="referenceTable" class="table table-striped table-nowrap"></table>
	</div>

	<vhmml:paging-controls tableId="referenceTable" searchFunction="referenceSearch" pageSize="${pageSize}" currentPage="${currentPage}" pageCategory="reference" showResultsData="true" hideResultsDataSort="true" showJumpToPage="true" showPageSize="true" />

</div>

<vhmml:corrections-form correctionType="REFERENCE" />

<script type="text/javascript" src="${pageContext.request.contextPath}/static/js/corrections.js?version=${applicationVersion}"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/static/js/reference.js?version=${applicationVersion}"></script>

<script type="text/javascript">		
	<c:if test="${initialSearchResult != null}">
		initialSearchResult = ${initialSearchResult}; 
	</c:if>

	<c:if test="${selectedEntry != null}">
		selectedEntry = ${selectedEntry};
	</c:if>
	
	<c:if test="${sortBy != null}">
		initialSortBy = '${sortBy}';
	</c:if>
	
	<security:authorize ifAnyGranted="ROLE_REFERENCE_CREATOR,ROLE_ADMIN">
		isReferenceAdmin = true;
	</security:authorize>
</script>

<c:if test="${not empty selectedObjectJsonLd}">
	<%@ include file="/WEB-INF/jsp/reference/referenceJsonLd.jsp" %>
</c:if>

<security:authorize ifAnyGranted="ROLE_REFERENCE_CREATOR,ROLE_ADMIN">
	<script type="text/javascript" src="${pageContext.request.contextPath}/static/js/jquery.tagsinput.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/static/js/reference-admin.js?version=${applicationVersion}"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/static/js/search-admin.js?version=${applicationVersion}"></script>
</security:authorize>