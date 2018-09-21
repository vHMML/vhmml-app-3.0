<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>

<security:authorize ifAnyGranted="ROLE_ADMIN">
	<div class="admin-button-container">
		<a href="${pageContext.request.contextPath}/news/admin/add" class="btn btn-md site-button">Add New</a>
		<a href="${pageContext.request.contextPath}/admin/block" class="btn btn-md site-button">UI Admin</a>
	</div>
</security:authorize>