<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>

<security:authorize ifAnyGranted="ROLE_ADMIN,ROLE_FOLIO_CREATOR">
	<a href="${pageContext.request.contextPath}/folio/admin/add" class="breadcrumb-button">
		<button type="button" class="btn btn-md btn-success add btn-add-folio-object">Add Folio Object</button>
	</a>
</security:authorize>

<button type="button" class="btn btn-md btn-success btn-backToResults"><span class="glyphicon glyphicon-share-alt flipHorizontal"></span>Results</button>