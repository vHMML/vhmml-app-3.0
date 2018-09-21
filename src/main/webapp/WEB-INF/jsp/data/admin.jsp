<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<%@ taglib prefix="vhmml" tagdir="/WEB-INF/tags" %>

<tiles:importAttribute name="pageCategory" />

<%-- CSS declarations --%>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/css/data.css?version=${applicationVersion}"/>

<div class="admin-container">
	<h1 style="margin-bottom:20px">Manually generate dataset files</h1>
	
	<span class="generateButtonWrapper">
		<button class="btn data" id="generateDatasetButton" data-url="${pageContext.request.contextPath}/dataPortal/admin/dataset">Generate dataset files</button>
	</span>
	
	<div style="margin-top: 20px;">
		<strong>Last completed job:</strong> ${ lastCompletedJobDatetime }
	</div>
</div>

<%-- data-portal-admin.js will hold our JavaScript code for the data portal admin functionality --%>
<script type="text/javascript" src="${pageContext.request.contextPath}/static/js/data-portal-admin.js?version=${applicationVersion}"></script>