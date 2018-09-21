<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>

<button type="button" class="btn btn-md data disabled" id="dataExportFullButton" data-link="/dataPortal/export/full" data-toggle="tooltip" data-placement="bottom" title="All vHMML data for the objects in the search"><span class="glyphicon glyphicon-save" aria-hidden="true"></span> Full Search Data</button>
<button type="button" class="btn btn-md data disabled" id="dataExportTableButton" data-link="/dataPortal/export/listing" data-toggle="tooltip" data-placement="bottom" title="Table search data, with PURLs"><span class="glyphicon glyphicon-save" aria-hidden="true"></span> Table Search Data</button>
<a href="${pageContext.request.contextPath}/dataPortal/dataset"><button type="button" class="btn btn-md data" id="dataSetButton" data-toggle="tooltip" data-placement="bottom" title="Download full datasets">Download Datasets</button></a>
<a href="${pageContext.request.contextPath}/dataPortal/schema"><button type="button" class="btn btn-md data" id="dataSchemaButton" data-toggle="tooltip" data-placement="bottom" title="An explanation of the data structure">Schema</button></a>

<security:authorize ifAnyGranted="ROLE_ADMIN">
	<a href="${pageContext.request.contextPath}/dataPortal/admin"><button type="button" class="btn btn-md data" id="dataAdminButton" data-toggle="tooltip" data-placement="bottom" title="Admin page for the data portal">Admin</button></a>
</security:authorize>