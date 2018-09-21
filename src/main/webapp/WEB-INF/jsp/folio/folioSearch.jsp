<div class="col-lg-6">
	<div class="form-group">
		<label class="col-xs-4">Manuscript Date Range</label>
		<div class="col-xs-8">
			<div class="dateRange">
				<div class="text-center small">
					<span class="minDate">0 CE</span>&nbsp;-&nbsp;<span class="maxDate"></span>
				</div>
				<input type="text" class="slider">
			</div>
		</div>
	</div>
	
	<div class="form-group">
		<label class="col-xs-4 control-label">Language(s)</label>
		<div class="col-xs-8">
			<select name="language" class="language bootstrap-select" multiple="true" data-default="All Languages" data-size="10" title="All Languages">
					<c:forEach var="language" items="${languages}">
						<option>${language}</option>
					</c:forEach>
				</select>
		</div>
	</div>
	
</div>

<div class="col-lg-6">
	<div class="form-group">
		<label class="col-xs-4 control-label">Script(s)</label>
		<div class="col-xs-8">
			<select name="script" class="script bootstrap-select" multiple="true" data-default="All Scripts" data-size="10" title="All Scripts">
				<c:forEach var="script" items="${scripts}">
					<option>${script}</option>
				</c:forEach>
			</select>
		</div>
	</div>
	
	<div class="form-group">
		<label class="col-xs-4 control-label">Writing System(s)</label>
		<div class="col-xs-8">
			<select name="writingSystem" class="writingSystem bootstrap-select" multiple="true" data-size="10" data-default="All Writing Systems" title="All Writing Systems">
				<c:forEach var="writingSystem" items="${writingSystems}">
					<option>${writingSystem}</option>
				</c:forEach>
			</select>
		</div>
	</div>
	
	<div class="checkbox">
		
		<div class="col-xs-8 col-xs-offset-4">
			<security:authorize ifAnyGranted="ROLE_ADMIN,ROLE_LEVEL_I_CATALOGER,ROLE_LEVEL_II_CATALOGER,ROLE_LEVEL_III_CATALOGER,ROLE_SCHOLAR">
				<label class="col-xs-12"><input type="checkbox" name="pending" class="pendingOnly">Pending only</label>
			</security:authorize>
		</div>
	
	</div>
</div>