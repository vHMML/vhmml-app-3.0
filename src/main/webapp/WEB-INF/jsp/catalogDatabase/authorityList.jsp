<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="vhmml" tagdir="/WEB-INF/tags" %>

<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/css/catalog-database.css?version=${applicationVersion}"/>

<h3>Manage ${authListType.displayName} List</h3>

<!-- can't add city, repository or content titles here because we would need to add a way for the user to specify which country the city belongs to, 
 which country & city the repo belongs to, and which piece of content the content title belongs to, we don't have time for that at the moment -->
<c:if test="${authListType != 'CITY' && authListType != 'REPOSITORY' && authListType != 'TITLE'}">
	<button class="btn btn-success addAuthListOption" onclick="javascript:showEditDialog();">Add New</button>
</c:if>

	

<div>
	<form id="authListSearchForm" name="searchForm" class="searchForm pull-left" onsubmit="javascript:newSearch();return false;">
		<label class="search">Search</label>			
		<input id="authListType" type="hidden" name="authListType" value="${authListType}" data-display-name="${authListType.displayName}"/> 
		<input id="searchString" type="text" name="searchString" value="${searchString}"/>
		<button id="searchButton" class="btn catalog-database searchButton"><span class="glyphicon glyphicon-search"></span>&nbsp;Go</button>
		<button id="clearSearchButton" class="btn btn-default clearSearchButton" onclick="clearSearch();">&nbsp;Clear</button>		
	</form>	
	<button class="btn catalog-database pull-right" id="exportAuthorityListButton" data-authListType="${authListType}">Export ${authListType.displayName} List</button>	
</div>

<div class="row">
	<vhmml:paging-controls tableId="authListTable" searchFunction="authListSearch" sortBy="${sortBy}" pageSize="${pageSize}" currentPage="${currentPage}" pageCategory="catalog-database" showJumpToPage="true"/>
	
	<div id="noResultsMessage" class="alert alert-warning" role="alert"><span class="glyphicon glyphicon-exclamation-sign"></span>No results found for search</div>		
	
	<div class="table-responsive">		
		<table id="authListTable" class="table table-striped table-hover">
			<thead>
				<tr>
					<th class="col-lg-1 id"><a href="javascript:sort('id');">Id</a></th>
					<th class="col-lg-10 name"><a href="javascript:sort('name');">Name</a></th>
					
					<th class="col-lg-1 actions">Actions</th>
					<th class="col-lg-5 title titlesOnly"><a href="javascript:sort('title');">Title</a></th>
					<th class="col-lg-5 hmmlProjectNumber titlesOnly"><a href="javascript:sort('hmmlProjectNumber');">HMML Project Number</a></th>											
				</tr>
			</thead>
			<tbody></tbody>
		</table>			
	</div>		
	
	<vhmml:paging-controls tableId="authListTable" searchFunction="authListSearch" sortBy="${sortBy}" pageSize="${pageSize}" currentPage="${currentPage}" pageCategory="catalog-database" showJumpToPage="true"/>
	
</div>

<c:if test="${searchResult != null}">
	<script type="text/javascript">
		var initialSearchResult = ${searchResult};
	</script>	
</c:if>

<script id="search-result-template" type="text/x-handlebars-template">
	<tr id="{{id}}">		
		<td>{{id}}</td>		
		<td>{{name}}</td>
		
		<td class="icons">					
			<span class="glyphicon glyphicon-info-sign references" onclick="javascript:getObjectReferences('{{id}}','{{escape name}}');"></span>
			<span class="glyphicon glyphicon-pencil edit" onclick="javascript:editObject('{{id}}');"></span>
			<span class="glyphicon glyphicon-remove delete" onclick="javascript:deleteObject('{{id}}');"></span>					
		</td>	
	</tr>
</script>

<script id="title-search-result-template" type="text/x-handlebars-template">	
	<tr id="{{contentId}}">			
		<td>{{title}}</td>	
		<td>{{hmmlProjectNumber}}</td>	
		<td class="icons">
			<span class="glyphicon glyphicon-pencil edit" onclick="javascript:editTitle('{{contentId}}', '{{title}}');"></span>
			<span class="glyphicon glyphicon-remove delete" onclick="javascript:deleteTitle('{{contentId}}');"></span>					
		</td>	
	</tr>
</script>

<script id="edit-object-template" type="text/x-handlebars-template">
	<form id="editObjectForm">
		<input type="hidden" name="id" value="{{id}}"/>
		<input type="hidden" name="authListType" value="${authListType}"/>
		<div class="form-group">
			<label for="name" class="col-sm-3 control-label text-right">Name</label>
			<div class="col-sm-9">
				<input type="text" name="name" value="{{name}}" class="form-control"/>
			</div>
		</div>

		<c:if test="${showDisplayName}">
			<div class="form-group">
				<label for="displayName" class="col-sm-3 control-label text-right">Display Name</label>
				<div class="col-sm-9">
					<input type="text" name="displayName" value="{{displayName}}" class="form-control"/>
				</div>
			</div>
		</c:if>

		<c:if test="${showUri}">
			<div class="form-group">
				<label for="uri" class="col-sm-3 control-label text-right">URL</label>
				<div class="col-sm-9">
					<input type="text" name="uri" value="{{uri}}" class="form-control"/>
				</div>
			</div>
		</c:if>

		<c:if test="${showLcUri}">
			<div class="form-group">
				<label for="authorityUriLC" class="col-sm-3 control-label text-right">LC URL</label>
				<div class="col-sm-9">
					<input type="text" name="authorityUriLC" value="{{authorityUriLC}}" class="form-control"/>
				</div>
			</div>
		</c:if>

		<c:if test="${showViafUri}">
			<div class="form-group">
				<label for="authorityUriVIAF" class="col-sm-3 control-label text-right">VIAF URL</label>
				<div class="col-sm-9">
					<input type="text" name="authorityUriVIAF" value="{{authorityUriVIAF}}" class="form-control"/>
				</div>
			</div>
		</c:if>
	</form>
</script>

<script id="edit-title-template" type="text/x-handlebars-template">
	<form id="editTitleForm">
		<input type="hidden" id="contentId" name="contentId" value="{{contentId}}"/>
		<div class="form-group">
			<label for="name" class="col-sm-3 control-label text-right">Title</label>
			<div class="col-sm-9">
				<input type="text" id="title" name="title" value="{{title}}" class="form-control"/>
			</div>
		</div>
	</form>
</script>

<script src="https://cdnjs.cloudflare.com/ajax/libs/handlebars.js/4.0.11/handlebars.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/static/js/catalog-db-auth-list-admin.js?version=${applicationVersion}"></script>