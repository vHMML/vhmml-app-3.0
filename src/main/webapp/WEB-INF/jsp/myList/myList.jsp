<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<%@ taglib prefix="vhmml" tagdir="/WEB-INF/tags" %>

<tiles:importAttribute name="pageCategory" />

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.12.4/css/bootstrap-select.min.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/css/my-list.css?version=${applicationVersion}"/>

<div class="row">
	<div class="col-lg-3 col-lg-offset-1">
		<h1>
			<span class="glyphicon glyphicon-star"></span>
			My List (<span id="myListSaveCounterHeading"><c:out value="${vhmmlSession.myListSaves.size() > 0 ? vhmmlSession.myListSaves.size() : 0}"></c:out></span>)
		</h1>
	</div>
</div>

<security:authorize access="!isAuthenticated()">	
<div class="row">
	<div class="col-lg-10 col-lg-offset-1">
		<div class="panel panel-warning">
			<div class="panel-heading"><span class="glyphicon glyphicon-exclamation-sign"></span>&nbsp;&nbsp;Notice</div>
			<div class="panel-body">
			    This list is stored temporarily and will be lost when the session times out. <a href="${pageContext.request.contextPath}/registration">Register</a> to get an active account to save future lists.
			</div>
		</div>
	</div>
</div>
</security:authorize>

<div class="row">
	<div class="col-lg-10 col-lg-offset-1">
		<div id="myListWrapper">
			<div id="myListControlGroup">
				<div class="panel panel-default">
			  		<div class="panel-body">
						<label for="myList-select-all">
							<input type="checkbox" name="myList-select-all" id="myList-select-all">Select All Items
						</label>
						<button id="myList-export-select-btn" type="button" class="btn btn-default btn-sm"><span class="glyphicon glyphicon-download-alt"></span>Export</button>
						<button id="myList-delete-select-btn" type="button" class="btn btn-default btn-sm"><span class="glyphicon glyphicon-minus-sign"></span>Remove</button>
					</div>
				</div>
			</div>
		</div>
		<form id="myListExportSelectedSavesForm" action="${pageContext.request.contextPath}/myList/select/export" method="get">
			<input type="hidden" name="myListSelectedSaves" id="myListSelectedSaves" value="" />
		</form>
	</div>
</div>

<div class="row">
	<div class="col-lg-10 col-lg-offset-1">
			<vhmml:paging-controls 
				tableId="myListContents" 
				searchFunction="myListSearch" 
				sortBy="${sortBy}" 
				pageSize="${pageSize}"
				currentPage="${currentPage}" 
				pageSizes="true" 
				pageCategory="my-list" 
				showPageSize="true" 
				showResultsData="true" 
				showJumpToPage="true"
				sortByOptions="getMyListSortByOptions"
				myListOption="true"
			/>
			
			<div id="myListContents"></div>
			
			<vhmml:paging-controls 
				tableId="myListContents" 
				searchFunction="myListSearch" 
				sortBy="${sortBy}" 
				pageSize="${pageSize}"
				currentPage="${currentPage}" 
				pageSizes="true" 
				pageCategory="my-list" 
				showPageSize="true" 
				showResultsData="true" 
				showJumpToPage="true"
				sortByOptions="getMyListSortByOptions"
				myListOption="true"
			/>
			
	</div>
</div>

<%@include file="/WEB-INF/jsp/search-common-templates.jsp"%>
<span id="context-path" data-value="${pageContext.request.contextPath}"></span>
<span id="permalink-url" data-value="${configValues['permalink.url'].value}"></span>

<script src="https://cdnjs.cloudflare.com/ajax/libs/handlebars.js/4.0.11/handlebars.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.12.4/js/bootstrap-select.min.js"></script>
<script src="${pageContext.request.contextPath}/static/js/vhmmlMail.js?version=${applicationVersion}"></script>

<script id="my-list-template" type="text/x-handlebars-template">
<div class="flex">				
	<div class="searchHitSection">
		<h4 class="section-title">{{city}}, {{country}}</h4>
		<h4 class="section-title">{{repository}}, {{shelfmark}}</h4>
	</div>
	<div class="searchHitSection">HMML Project Number: {{hmmlProjectNumber}}</div>
	<div class="searchHitSection">
		{{render 'permalink-template' label="Permanent Link: " link="https://${configValues['permalink.url'].value}/readingRoom/view" id=id linkClass="removeAfterText"}}
	</div>
	<div class="searchHitSection">
		Saved to My List: {{ myListSavedDateDisplay }}
	</div>
	<div class="searchHitSection">
		<a href="${pageContext.request.contextPath}/readingRoom/view/{{id}}"><button class="btn ${pageCategory} viewDescription" data-object-id="{{id}}">Description</button></a>
		<button class="btn ${pageCategory} viewDescription myList-email-individual-btn" data-object-id="{{id}}">Email</button>
	</div>
</div>
<div>
	<button class="myList-delete-btn btn btn-danger btn-xs" data-object-id="{{id}}">Remove</button>
</div>
</script>

<script type="text/javascript">
	var context = $('#context-path').attr('data-value');
	var permalinkUrl = $('#permalink-url').attr('data-value');
	var myListTemplate = Handlebars.compile($('#my-list-template').html());
	var amountOfSaves = '${vhmmlSession.myListSaves.size()}';
</script>

<script src="${pageContext.request.contextPath}/static/js/my-list-common.js?version=${applicationVersion}"></script>
<script src="${pageContext.request.contextPath}/static/js/my-list-home.js?version=${applicationVersion}"></script>