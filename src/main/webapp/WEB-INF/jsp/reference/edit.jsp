<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="vhmml" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="vhmmlfn" uri="VhmmlFunctions" %>

<link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/reference.css?version=${applicationVersion}" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/css/jquery.tagsinput.css" />

<form:form commandName="referenceEntryForm" cssClass="form-horizontal" method="POST" action="${pageContext.request.contextPath}/reference/admin/save" data-validation-rule-url="/reference/admin/validationRules">
	<form:hidden path="id"/>
	<vhmml:select fieldName="itemType" options="${entryTypes}" label="Record Type" optionLabelProperty="displayName" required="true"/>
	<vhmml:input label="Short Title" fieldName="shortTitle" required="true"/>
	<vhmml:input label="Date" fieldName="date" required="true"/>
	
	<div id="authors" class="repeatableField">
		<c:forEach begin="0" end="${vhmmlfn:getFieldCount(referenceEntryForm.authors)}" varStatus="loopStatus">
			<div class="repeatableFieldGroup">
				<vhmml:input label="Author(s)" listName="authors" listIndex="${loopStatus.index}" fieldName="name" repeatable="true"/>
			</div>
		</c:forEach>
	</div>
	
	<vhmml:input label="Title" fieldName="title"/>
	<vhmml:input label="Blog Title" fieldName="blogTitle"/>
	<vhmml:input label="Book Title for Articles in a Book" fieldName="bookTitle"/>
	<vhmml:input label="Conference Name" fieldName="conferenceName"/>
	<vhmml:input label="Dictionary Title" fieldName="dictionaryTitle"/>
	<vhmml:input label="Encyclopedia Title" fieldName="encyclopediaTitle"/>
	<vhmml:input label="Episode Number" fieldName="episodeNumber"/>
	
	<div id="directors" class="repeatableField">
		<c:forEach begin="0" end="${vhmmlfn:getFieldCount(referenceEntryForm.directors)}" varStatus="loopStatus">
			<div class="repeatableFieldGroup">
				<vhmml:input label="Director(s)" listName="directors" listIndex="${loopStatus.index}" fieldName="name" repeatable="true"/>
			</div>
		</c:forEach>
	</div>	
	
	<vhmml:input label="Series Number" fieldName="seriesNumber"/>
	<vhmml:input label="Series Title" fieldName="seriesTitle"/>		
	<vhmml:input label="Volume" fieldName="volume"/>
	<vhmml:input label="Pages" fieldName="pages"/>
	<vhmml:input label="Edition" fieldName="edition"/>
	<vhmml:input label="Issue" fieldName="issue"/>
	<vhmml:input label="Place" fieldName="place"/>
	<vhmml:input label="Book Series" fieldName="series"/>
	<vhmml:input label="Manuscript Type" fieldName="manuscriptType"/>
	<vhmml:input label="Proceedings Title" fieldName="proceedingsTitle"/>
	<vhmml:input label="Journal Title" fieldName="publicationTitle"/>
	<vhmml:input label="Publisher" fieldName="publisher"/>
	<vhmml:input label="Institution" fieldName="institution"/>
	<vhmml:input label="URL" fieldName="url"/>
	<vhmml:input label="Studio" fieldName="studio"/>
	<vhmml:input label="University" fieldName="university"/>
	
	<div id="authors" class="repeatableField">
		<c:forEach begin="0" end="${vhmmlfn:getFieldCount(referenceEntryForm.editors)}" varStatus="loopStatus">
			<div class="repeatableFieldGroup">
				<vhmml:input label="Editor(s)" listName="editors" listIndex="${loopStatus.index}" fieldName="name" repeatable="true"/>
			</div>
		</c:forEach>
	</div>
	
	<div id="authors" class="repeatableField">
		<c:forEach begin="0" end="${vhmmlfn:getFieldCount(referenceEntryForm.contributors)}" varStatus="loopStatus">
			<div class="repeatableFieldGroup">
				<vhmml:input label="Contributor(s)" listName="contributors" listIndex="${loopStatus.index}" fieldName="name" repeatable="true"/>
			</div>
		</c:forEach>
	</div>

	<div class="form-group">
		<label class="col-sm-3">Approved Tags </label>
		<div class="col-sm-9">
			<a target="_blank" href="https://docs.google.com/spreadsheets/d/11pUwdke9oh61z4eoIos3JVgvJvWCsa2tnA6mFcnGQXc/edit?usp=sharing">Approved Reference Tags</a>
		</div>
	</div>	
	
	<vhmml:input label="Tags" fieldName="tags"/>	
</form:form>

<script src="${pageContext.request.contextPath}/static/js/jquery.tagsinput.js"></script>
<script src="${pageContext.request.contextPath}/static/js/reference-admin.js"></script>