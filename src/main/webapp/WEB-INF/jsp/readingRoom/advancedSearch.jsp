
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
			<label class="col-xs-4 control-label">Name</label>
			<div class="col-xs-8">
				<textarea class="author form-control" type="text" row="1">${vhmmlSession.savedReadingRoomSearch.searchTerms.author}</textarea>
			</div>
			
		</div>
		<div class="form-group">
			<label class="col-xs-4 control-label">Title</label>
			<div class="col-xs-8">
				<textarea class="title form-control" type="text">${vhmmlSession.savedReadingRoomSearch.searchTerms.title}</textarea>
			</div>
		</div>
		<div class="form-group">
			<label class="col-xs-4 control-label">HMML Project Number</label>
			<div class="col-xs-8">
				<input class="hmmlProjectNumber form-control" type="text" value="${vhmmlSession.savedReadingRoomSearch.searchTerms.hmmlProjectNumber}"/>
			</div>
		</div>
		<div class="form-group">
			<label class="col-xs-4 control-label">Record Type</label>
			<div class="col-xs-8">
				<select name="objectType" class="objectType bootstrap-select" data-default="All Record Types">
					<option value="">All Record Types</option>
				</select>
			</div>
		</div>
		<div class="form-group">
			<label class="col-xs-4 control-label">Place of Origin</label>
			<div class="col-xs-8">
				<input class="placeOfOrigin form-control" type="text" value="${vhmmlSession.savedReadingRoomSearch.searchTerms.placeOfOrigin}"/>
			</div>
		</div>
		<%-- unhide this search field after we have more subject metadata – in 2017 
		<div class="form-group">
			<label>Subject</label><input class="subject" type="text" value="${vhmmlSession.savedReadingRoomSearch.searchTerms.subject}"/>
		</div>
		--%>
		<div class="form-group">
			<label class="col-xs-4 control-label">Incipit</label>
			<div class="col-xs-8">
				<textarea class="incipit form-control" type="text">${vhmmlSession.savedReadingRoomSearch.searchTerms.incipit}</textarea>
			</div>
		</div>
		<div class="form-group">
			<label class="col-xs-4 control-label">Language(s)</label>
			<div class="col-xs-8">
			<select name="language" class="language bootstrap-select" multiple="true" data-default="All Languages" data-size="10" title="All Languages"></select>
			</div>
		</div>
		<div class="form-group">
			<label class="col-xs-4 control-label">Genre/Form(s)</label>
			<div class="col-xs-8">
			<select name="genres" class="genres bootstrap-select" multiple="true" data-default="All Genre/Forms" data-size="10" title="All Genre/Forms"></select>
			</div>
		</div>
		<div class="form-group">
			<label class="col-xs-4 control-label">Feature(s)</label>
			<div class="col-xs-8">
				<select name="features" class="features bootstrap-select" multiple="true" data-default="All Features" data-size="10" title="All Features"></select>
			</div>
		</div>
	</div>
	
	<div class="col-lg-6">
		<div class="form-group">
			<label class="col-xs-4 control-label">Country</label>
			<div class="col-xs-8">
				<select name="country" class="country bootstrap-select" data-dependent-list="city" data-default="All Countries" data-size="10" value="${vhmmlSession.savedReadingRoomSearch.searchTerms.country}">
					<option value="">All Countries</option>
				</select>
			</div>
				
		</div>
		<div class="form-group">
			<label class="col-xs-4 control-label">City</label>
			<div class="col-xs-8">
				<select name="city" class="city bootstrap-select" data-dependent-list="repository" data-default="All Cities" data-depends-on="country" data-size="10" >
					<option value="">All Cities</option>
				</select>
			</div>
		</div>
		<div class="form-group">
			<label class="col-xs-4 control-label">Repository</label>
			<div class="col-xs-8">
				<select name="repository" class="repository bootstrap-select" data-default="All Repositories" data-size="10" data-depends-on="city">
					<option value="">All Repositories</option>
				</select>
			</div>
			
		</div>
		<div class="form-group">
			<label class="col-xs-4 control-label">Shelfmark</label>
			<div class="col-xs-8">
				<input class="shelfmark form-control" type="text" value="${vhmmlSession.savedReadingRoomSearch.searchTerms.shelfmark}"/>
			</div>
			
		</div>
		<div class="form-group">
			<label class="col-xs-4 control-label">Collection</label>
			<div class="col-xs-8">
				<input class="archivalCollectionFond form-control" type="text" value="${vhmmlSession.savedReadingRoomSearch.searchTerms.archivalCollectionFond}"/>
			</div>
		</div>
		<div class="form-group">
			<label class="col-xs-4 control-label">Series</label>
			<div class="col-xs-8">
				<input class="archivalSeries form-control" type="text" value="${vhmmlSession.savedReadingRoomSearch.searchTerms.archivalSeries}"/>
			</div>
		</div>
		<div class="form-group">
			<label class="col-xs-4 control-label">Sub-Series</label>
			<div class="col-xs-8">
				<input class="archivalSubSeries form-control" type="text" value="${vhmmlSession.savedReadingRoomSearch.searchTerms.archivalSubSeries}"/>
			</div>
		</div>
		<div class="form-group">
			<label class="col-xs-4 control-label">Archival Subject(s)</label>
			<div class="col-xs-8">
				<textarea class="subject form-control" type="text">${vhmmlSession.savedReadingRoomSearch.searchTerms.subject}</textarea>
			</div>
		</div>	
		<div class="form-group">
			<label class="col-xs-4 control-label">Script(s)</label>
			<div class="col-xs-8">
				<select name="script" class="script bootstrap-select" multiple="true" data-default="All Scripts" data-size="10" title="All Scripts"></select>
			</div>
		</div>
		<div class="form-group">
			<label class="col-xs-4 control-label">Writing System(s)</label>
			<div class="col-xs-8">
				<select name="writingSystem" class="writingSystem bootstrap-select" multiple="true" data-size="10" data-default="All Writing Systems" title="All Writing Systems"></select>
			</div>
		</div>			
		
		<div class="checkbox">
		
			<div class="col-xs-8 col-xs-offset-4">
				<c:set var="checked" value="checked='checked'"/>
				<c:if test="${vhmmlSession.savedReadingRoomSearch.searchTerms.format != null && !vhmmlSession.savedReadingRoomSearch.listTermContains('format', 'digital')}">
					<c:set var="checked" value=""/>
				</c:if>
				<label class="col-xs-12">
					<input type="checkbox" ${checked} class="formatFilter" data-value="digital">Digital images
				</label>	
				
				<c:set var="checked" value="checked='checked'"/>
				<c:if test="${vhmmlSession.savedReadingRoomSearch.searchTerms.format != null && !vhmmlSession.savedReadingRoomSearch.listTermContains('format', 'scanned microform')}">
					<c:set var="checked" value=""/>
				</c:if>
				<label class="col-xs-12">
					<input type="checkbox" ${checked} class="formatFilter" data-value="scanned microform">Scanned microform
				</label>
				
				<c:set var="checked" value="checked='checked'"/>
				<c:if test="${vhmmlSession.savedReadingRoomSearch.searchTerms.format != null && !vhmmlSession.savedReadingRoomSearch.listTermContains('format', 'microform')}">
					<c:set var="checked" value=""/>
				</c:if>
				<label class="col-xs-12"><input type="checkbox" ${checked} class="formatFilter" data-value="microform">Microform</label>
				
				<security:authorize ifAnyGranted="ROLE_ADMIN,ROLE_LEVEL_I_CATALOGER,ROLE_LEVEL_II_CATALOGER,ROLE_LEVEL_III_CATALOGER,ROLE_SCHOLAR">
					<label class="col-xs-12"><input type="checkbox" name="pending" class="pendingOnly">Pending only</label>
				</security:authorize>
			</div>
			
		</div>
		
		<%-- hide until needed in the future, if the publicManifest flag is used.
		<div class="checkbox">
			<c:set var="checked" value=""/>
			<c:if test="${vhmmlSession.savedReadingRoomSearch.searchTerms.format != null && vhmmlSession.savedReadingRoomSearch.listTermContains('format', 'manifest')}">
				<c:set var="checked" value="checked='checked'"/>
			</c:if>
			<label class="wide"><input type="checkbox" ${checked} class="publicManifest" data-value="manifest">Public IIIF Manifest URL <img src="${pageContext.request.contextPath}/static/img/iiif-logo.png" class="iiif-logo" alt="IIIF Logo"></label>
		</div> --%>
		<%-- hid until downloadable functionality is available sometime after July 2016			
		<div class="checkbox">
			<c:set var="checked" value=""/>
			<c:if test="${vhmmlSession.savedReadingRoomSearch.searchTerms.downloadable}">
				<c:set var="checked" value="checked='checked'"/>
			</c:if>
			<label class="wide"><input type="checkbox" ${checked} name="downloadable" class="downloadable">Downloadable</label>
		</div>
		--%>
	</div>

