<style type="text/css">
	.export-controls {
		margin: 20px 0;
	}
	
	.exportButtonWrapper {
		display: inline;
		margin-right: 8px;
	}
</style>

<div class="export-controls">
	<label class="control-label">Collection Name</label>
	<input id="collectionName" type="text" name="collectionName"/>
</div>
		
<div id="exportButtons">
	
	<div class="exportButtonWrapper">
		<div class="btn-group">
			<button type="button" class="btn dropdown-toggle catalog-database exportButton exportObjects" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
				Export Reading Room Objects <span class="caret"></span>
			</button>
			<ul class="dropdown-menu">
			  	<li><a data-option="all">Export All</a></li>
			  	<li><a data-option="active">Just Active</a></li>
			  	<li><a data-option="inactive">Just Inactive</a></li>
			</ul>
		</div>
	</div>
	
	<div class="exportButtonWrapper">
		<div class="btn-group">
			<button type="button" class="btn dropdown-toggle catalog-database exportButton exportLinks" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
				Export Permanent Links <span class="caret"></span>
			</button>
			<ul class="dropdown-menu">
			  	<li><a data-option="all">Export All</a></li>
			  	<li><a data-option="active">Just Active</a></li>
			  	<li><a data-option="inactive">Just Inactive</a></li>
			</ul>
		</div>
	</div>
</div>

<script type="text/javascript" src="${pageContext.request.contextPath}/static/js/reading-room-export.js"></script>