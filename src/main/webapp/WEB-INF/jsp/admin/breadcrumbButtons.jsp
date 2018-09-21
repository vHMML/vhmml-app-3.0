<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>

<security:authorize ifAnyGranted="ROLE_ADMIN">
	<div class="admin-button-container">
		<a href="${pageContext.request.contextPath}/admin/block">
			<button type="button" class="btn btn-xs admin">UI Admin</button>
		</a>
		
		<a href="${pageContext.request.contextPath}/admin/config?selectedMenuItem=config">
			<button type="button" class="btn btn-xs admin">Configuration</button>
		</a>	
		
		<a href="#">
			<span class="reindexButtonWrapper">
				<button class="btn btn-xs reindexButton admin" data-url="/admin/reindex">Full Re-Index</button>
			</span>			
		</a>
		
		<a href="#">
			<span class="clearCacheButtonWrapper">
				<button type="button" class="btn btn-xs clearCacheButton admin" data-url="/admin/cache/clear/all">Clear cache</button>
			</span>
		</a>
		
		<a href="${pageContext.request.contextPath}/admin/reports?selectedMenuItem=reports">
			<button type="button" class="btn btn-xs admin">Reports</button>
		</a>
				
		<a href="${pageContext.request.contextPath}/admin/emailUsers?selectedMenuItem=emailUsers">
			<button type="button" class="btn btn-xs admin">Send Email</button>
		</a>			
		
		<a href="${pageContext.request.contextPath}/admin/sitemap?selectedMenuItem=sitemap">
			<button type="button" class="btn btn-xs admin">Sitemap</button>
		</a>		
		
		<a href="${pageContext.request.contextPath}/admin/messages?selectedMenuItem=messages">
			<button type="button" class="btn btn-xs admin">System Messages</button>
		</a>
			
		<a href="${pageContext.request.contextPath}/admin/users?selectedMenuItem=users">
			<button type="button" class="btn btn-xs admin">Users</button>
		</a>
		
		<a href="${pageContext.request.contextPath}/admin/logging?selectedMenuItem=logging">
			<button type="button" class="btn btn-xs admin">Logging</button>
		</a>
	</div>
	<script type="text/javascript" src="${pageContext.request.contextPath}/static/js/search-admin.js?version=${applicationVersion}"></script>
</security:authorize>