<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<%@ taglib prefix="vhmml" tagdir="/WEB-INF/tags" %>

<link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/blocks-overrides.css?version=${applicationVersion}"/>
<link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/blocks-header.css?version=${applicationVersion}"/>
<link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/news.css?version=${applicationVersion}"/>

<style type="text/css">
	#news-header-container {
		background-color: ${ newsHeaderBlock.uiBlockComponents['BACKGROUNDCOLOR'].value };
		
		<c:if test="${ newsHeaderBlock.uiBlockComponents['IMAGE'].enabled }">
			background-image: url("${pageContext.request.contextPath}/images/block/${ newsHeaderBlock.uiBlockComponents['IMAGE'].value }");
		</c:if>
	}
	
	<c:if test="${ not empty newsHeaderBlock.uiBlockComponents['OVERLAYCOLOR'].value }">
	.news-header-overlay {
		background-color: ${ newsHeaderBlock.uiBlockComponents['OVERLAYCOLOR'].value };
		opacity: ${ newsHeaderBlock.uiBlockComponents['OVERLAYOPACITY'].value };
	}
	</c:if>
	
	.news-header-heading {
		color: ${ newsHeaderBlock.uiBlockComponents['HEADINGCOLOR'].value };
	}
	
	.news-header-content {
		color: ${ newsHeaderBlock.uiBlockComponents['CONTENTCOLOR'].value };
	}
</style>

<div class="clearfix">
	
	<c:if test="${ not empty newsHeaderBlock.uiBlockComponents['URL'].value }">
	<a href="${ newsHeaderBlock.uiBlockComponents['URL'].value }">
	</c:if>
		<div id="news-header-container">
			<div class="news-header-text-container">
				<div class="news-header-heading"><h1>${ newsHeaderBlock.uiBlockComponents['HEADING'].value }</h1></div>
				<div class="news-header-content">${ newsHeaderBlock.uiBlockComponents['CONTENT'].value }</div>
			</div>
			<div class="news-header-overlay">
			</div>
		</div>
	<c:if test="${ not empty newsHeaderBlock.uiBlockComponents['URL'].value }">
	</a>
	</c:if>
	
	<div id="news-content-container">
		<c:forEach items="${newsItems}" var="newsItem">
			<div class="col-lg-10 col-lg-offset-1" data-news-item-id="${newsItem.id}">
				<div class="panel panel-default">
					<div class="panel-heading">
						<h2 class="panel-title news-item-title"><c:out value="${newsItem.title}"/></h2>
					</div>
					<div class="panel-body">
						<div class="hidden-xs hidden-sm col-md-2">
							<div class="news-item-image-container">
								<c:if test="${ not empty newsItem.imageLink }">
								<a href="${ newsItem.imageLink }" />
								</c:if>
									<img data-toggle="tooltip" data-placement="top" title="${ newsItem.tooltip }" src="${pageContext.request.contextPath}/images/news/${ newsItem.image }" class="img-responsive" />
								<c:if test="${ not empty newsItem.imageLink }">
								</a>
								</c:if>
							</div>
							
						</div>
						<div class="col-sm-10">
							<div class="news-item-content-container">
								${ newsItem.content }
							</div>
							<div class="news-item-date-container">
								${ newsItem.formattedDate }
							</div>
							
						</div>
						
						
						<security:authorize ifAnyGranted="ROLE_ADMIN">
							<div class="news-item-quick-admin-container col-xs-12">
								<a href="${pageContext.request.contextPath}/news/admin/edit/${ newsItem.id }"><button class="btn btn-primary pull-left">Edit</button></a>
								<button class="news-item-delete-button btn btn-danger pull-left" data-news-item-title="<c:out value='${newsItem.title}'/>" data-url="${pageContext.request.contextPath}/news/admin/delete/${ newsItem.id }">Delete</button>
							</div>
						</security:authorize>
					</div>
				</div>
			</div>
		</c:forEach>
	</div>
</div>

<script type="text/javascript">
	var context = "${pageContext.request.contextPath}";
</script>
<script type="text/javascript" src="${pageContext.request.contextPath}/static/js/news-admin.js"></script>

