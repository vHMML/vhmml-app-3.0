<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags"%>
<%@ taglib prefix="vhmml" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/css/lexicon.css?version=${applicationVersion}"/>

<%-- Stylesheets for RR landing page --%>
<link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/blocks-overrides.css?version=${applicationVersion}"/>
<link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/blocks-header.css?version=${applicationVersion}"/>
<link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/blocks-general.css?version=${applicationVersion}"/>

<%@include file="/WEB-INF/jsp/lexicon/home-inline-styles.jsp" %>

<div class="clearfix">

	<c:if test="${ not empty lexiconHeaderBlock.uiBlockComponents['URL'].value }">
		<a href="${ lexiconHeaderBlock.uiBlockComponents['URL'].value }">
	</c:if>
			<div id="lexicon-header-container" class="${lexiconHeaderBlock.styleName} block-header-container">
				<div id="lexicon-header-text-container" class="block-header-text-container">
					<div id="lexicon-header-heading" class="block-header-heading"><h1>${ lexiconHeaderBlock.uiBlockComponents['HEADING'].value }</h1></div>
					<div id="lexicon-header-content" class="block-header-content">${ lexiconHeaderBlock.uiBlockComponents['CONTENT'].value }</div>
				</div>
				<div id="lexicon-header-overlay" class="block-header-overlay">
				</div>
			</div>
	<c:if test="${ not empty lexiconHeaderBlock.uiBlockComponents['URL'].value }">
		</a>
	</c:if>

	<div id="search-container">
		<form id="searchForm" name="searchForm" class="searchForm" onsubmit="return false;">
			<div id="keyword-search-container">
				<div class="keyword-search-bar input-group">
					<input placeholder="Search Lexicon by term..." id="searchText" type="text" name="searchString" value="${searchString}" class="form-control" />
					<span class="input-group-btn">
				    	<button id="clearSearchOptionsButton" class="btn btn-default clearSearchOptionsButton" type="button">Clear</button>
				    	<button id="searchButton" class="btn btn-default searchButton" type="button">Search <i class="fa fa-chevron-circle-right"></i></button>
				    </span>
				</div>
			</div>
		</form>
	</div>
	
	<div id="search-letters-container">
		<div class="searchLetters">
			
			<div class="searchLetterRow">
				<span>Browse&nbsp;</span>
				<span class="searchLetter default" title="A"><button class="searchLetterButton">A</button></span>
				<span class="searchLetter" title="B"><button class="searchLetterButton">B</button></span>
				<span class="searchLetter" title="C"><button class="searchLetterButton">C</button></span> 
				<span class="searchLetter" title="D"><button class="searchLetterButton">D</button></span> 
				<span class="searchLetter" title="E"><button class="searchLetterButton">E</button></span>
				<span class="searchLetter" title="F"><button class="searchLetterButton">F</button></span>
				<span class="searchLetter" title="G"><button class="searchLetterButton">G</button></span>
				<span class="searchLetter" title="H"><button class="searchLetterButton">H</button></span>
				<span class="searchLetter" title="I"><button class="searchLetterButton">I</button></span>
				<span class="searchLetter" title="J"><button class="searchLetterButton">J</button></span>
				<span class="searchLetter" title="K"><button class="searchLetterButton">K</button></span>
				<span class="searchLetter" title="L"><button class="searchLetterButton">L</button></span>
				<span class="searchLetter" title="M"><button class="searchLetterButton">M</button></span>
				<span class="searchLetter" title="N"><button class="searchLetterButton">N</button></span> 
				<span class="searchLetter" title="O"><button class="searchLetterButton">O</button></span> 
				<span class="searchLetter" title="P"><button class="searchLetterButton">P</button></span> 
				<span class="searchLetter" title="Q"><button class="searchLetterButton">Q</button></span> 
				<span class="searchLetter" title="R"><button class="searchLetterButton">R</button></span> 
				<span class="searchLetter" title="S"><button class="searchLetterButton">S</button></span> 
				<span class="searchLetter" title="T"><button class="searchLetterButton">T</button></span> 
				<span class="searchLetter" title="U"><button class="searchLetterButton">U</button></span> 
				<span class="searchLetter" title="V"><button class="searchLetterButton">V</button></span> 
				<span class="searchLetter" title="W"><button class="searchLetterButton">W</button></span> 
				<span class="searchLetter" title="X"><button class="searchLetterButton">X</button></span> 
				<span class="searchLetter" title="Y"><button class="searchLetterButton">Y</button></span> 
				<span class="searchLetter" title="Z"><button class="searchLetterButton">Z</button></span>
			</div>

		</div>
	</div>
</div>

<div class="results-container">
	<vhmml:paging-controls tableId="lexiconTable"
		searchFunction="lexiconSearch" onNextButton="refreshSelectedLetter"
		onPrevButton="refreshSelectedLetter" pageCategory="lexicon"
		pageSize="${pageSize}" sortBy="${sortBy}"/>

	<div id="invalidSearchMessage" class="alert alert-warning" role="alert">
		<span class="glyphicon glyphicon-exclamation-sign"></span>Please enter at least 2 characters to perform a text search.		
	</div>
	
	<div id="noResultsMessage" class="alert alert-warning" role="alert">
		<span class="glyphicon glyphicon-exclamation-sign"></span>No results found for search
		<a data-toggle="tooltip" data-placement="top" title="Corrections or additions?" href="javascript:showCorrectionsDialog();" class="right" tabindex="0"><img src="${pageContext.request.contextPath}/static/img/glyphicons-conversation2.png" width="20" alt="Corrections or additions?" />&nbsp;Corrections or additions?</a> 
	</div>

	<div class="table-responsive">
		<security:authorize ifAnyGranted="ROLE_LEXICON_CREATOR,ROLE_ADMIN">
			<div class="actionButtons col-sm-12 text-right">
				<a href="${pageContext.request.contextPath}/lexicon/admin/add"
					class="btn btn-success">Add New</a> <span
					class="reindexButtonWrapper">
				</span>
			</div>
		</security:authorize>
		<table id="lexiconTable" class="table table-striped table-hover table-nowrap"></table>
	</div>

	<vhmml:paging-controls tableId="lexiconTable"
		searchFunction="lexiconSearch" onNextButton="refreshSelectedLetter"
		onPrevButton="refreshSelectedLetter" pageCategory="lexicon"
		pageSize="${pageSize}" sortBy="${sortBy}"/>

</div>

<vhmml:corrections-form correctionType="LEXICON" />

<script type="text/javascript">
	var initialSearchText = '${searchText}';
	var initialStartsWithLetter = '${startsWithLetter}';
	var selectedPage = '${selectedPage}';

	<security:authorize ifAnyGranted="ROLE_LEXICON_CREATOR,ROLE_ADMIN">
	isLexiconAdmin = true;
	</security:authorize>
</script>

<script type="text/javascript" src="${pageContext.request.contextPath}/static/js/corrections.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/static/js/lexicon.js"></script>

<security:authorize ifAnyGranted="ROLE_LEXICON_CREATOR,ROLE_ADMIN">
	<script type="text/javascript" src="${pageContext.request.contextPath}/static/js/lexicon-admin.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/static/js/search-admin.js"></script>
</security:authorize>