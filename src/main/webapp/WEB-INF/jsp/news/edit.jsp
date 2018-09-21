<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<%@ taglib prefix="vhmml" tagdir="/WEB-INF/tags" %>

<link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/ui-admin.css?version=${applicationVersion}"/>
<link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/news.css?version=${applicationVersion}"/>
<link rel="stylesheet" href="${pageContext.request.contextPath}/static/js/datepicker/css/bootstrap-datepicker3.standalone.min.css"/>

<div class="news-content-edit-container">
	<a href="${pageContext.request.contextPath}/news" class="btn news back-button">Back</a>
	<div>
		<h1></h1>
	</div>
	<form class="form-horizontal" id="news-item-edit-form" data-url="${pageContext.request.contextPath}/news/admin/save">
		<input type="hidden" name="news-item-id" id="news-item-id" value="${ newsItem.id }" />
		
		<c:choose>
			<c:when test="${ not empty newsItem }">
				<h1>Edit news item</h1>
			</c:when>
			<c:otherwise>
				<h1>Add news item</h1>
			</c:otherwise>
		</c:choose>
		
		<div class="panel panel-default">
			<div class="news-item-admin-panel-heading panel-heading">
				<button class="btn btn-success pull-right" id="news-item-save" type="button">Save</button>
				<a href="${pageContext.request.contextPath}/news"><button class="btn btn-warning pull-right" id="news-item-cancel" type="button">Cancel</button></a>
				<c:if test="${ not empty newsItem }">
					<button 
						class="news-item-delete-button btn btn-danger pull-right" 
						data-news-item-title="${ newsItem.title }" 
						data-url="${pageContext.request.contextPath}/news/admin/delete/${ newsItem.id }"
						type="button">Delete</button>
				</c:if>
				<div class="clearfix"></div>
			</div>
		
			<div class="panel-body">
				<div class="form-group">
					<div class="col-sm-10 col-sm-offset-2">
						(<span class="required">*</span>) Required field
					</div>
				</div>
				
				<%-- Title --%>
				<div class="form-group">
					<label for="news-item-title" class="col-sm-2 control-label">Title <span class="required">*</span></label>
					<div class="col-sm-10 block-input" data-part="TITLE">
						<input type="text" name="news-item-title" id="news-item-title" class="form-control" value="${ newsItem.title }" required />
					</div>
				</div>
				
				<%-- Content --%>
				<div class="form-group">
					<label for="news-item-content" class="col-sm-2 control-label">Content <span class="required">*</span></label>
					<div class="col-sm-10 block-input" data-part="CONTENT">
						<textarea name="news-item-content" id="news-item-content" class="form-control ckeditor" rows="10" cols="50" required>${ newsItem.content }</textarea>
					</div>
				</div>
				
				<%-- Tooltip --%>
				<div class="form-group">
					<label for="news-item-tooltip" class="col-sm-2 control-label">Image Tooltip <span class="required">*</span></label>
					<div class="col-sm-10 block-input" data-part="TOOLTIP">
						<input type="text" name="news-item-tooltip" id="news-item-tooltip" class="form-control" value="${ newsItem.tooltip }" required />
					</div>
				</div>
				
				<%-- Date --%>
				<div class="form-group">
					<label for="news-item-date" class="col-sm-2 control-label">Date <span class="required">*</span></label>
					<div class="col-sm-10 block-input" data-part="DATE">
						<input type="text" name="news-item-date" id="news-item-date" class="form-control date" value="${ newsItem.formattedDate }" required />
					</div>
				</div>
				
				<%-- Image link --%>
				<div class="form-group">
					<label for="news-item-image-link" class="col-sm-2 control-label">Image link</label>
					<div class="col-sm-10 block-input" data-part="DATE">
						<input type="text" name="news-item-image-link" id="news-item-image-link" class="form-control" value="${ newsItem.imageLink }" />
					</div>
				</div>
				
				<%-- Image upload --%>
					<div class="form-group">
						<label class="col-sm-2 control-label">News Image <span class="required">*</span></label>
						<div class="col-sm-10 block-input" data-part="IMAGE">
							<c:if test="${ not empty newsItem.image }">
								<div>
									Current image:
									<p>
										<img src="${pageContext.request.contextPath}/images/news/${ newsItem.image }" width="auto" height="100px" />
									</p>
									<p>
										${ newsItem.image }
									</p>
								</div>
							</c:if>
							<div>
								<input type="file" name="news-item-image" id="news-item-image" />
								<input type="hidden" name="news-item-current-image" id="news-item-current-image" value="${ newsItem.image }" />
								<span id="news-item-image-help" class="help-block">
									Recommended image size is 180 x 180.  Image will be responsive and expand to the width of the image container.
								</span>
							</div>
								
						</div>
					</div>
			</div>
		</div>
	</form>
</div>

<script type="text/javascript">
	var context = "${pageContext.request.contextPath}";
</script>
<script type="text/javascript" src="https://cdn.ckeditor.com/4.4.7/standard/ckeditor.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/static/js/datepicker/js/bootstrap-datepicker.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/static/js/news-admin.js"></script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.22.2/moment.min.js"></script>

