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
				<textarea class="author form-control" type="text" name="name" row="1"></textarea>
			</div>
		</div>
		<div class="form-group">
			<label class="col-xs-4 control-label">Title</label>
			<div class="col-xs-8">
				<textarea class="title form-control" name="title" type="text"></textarea>
			</div>
		</div>
		<div class="form-group">
			<label class="col-xs-4 control-label">HMML Project Number</label>
			<div class="col-xs-8">
				<input class="hmmlProjectNumber form-control" name="hmmlProjectNumber" type="text" value=""/>
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
				<input class="placeOfOrigin form-control" name="placeOfOrigin" type="text" value=""/>
			</div>
		</div>
		<div class="form-group">
			<label class="col-xs-4 control-label">Incipit</label>
			<div class="col-xs-8">
				<textarea class="incipit form-control" name="incipit" type="text"></textarea>
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
				<select name="country" class="country bootstrap-select" data-dependent-list="city" data-default="All Countries" data-size="10" value="">
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
				<input name="shelfmark" class="shelfmark form-control" type="text" value=""/>
			</div>
			
		</div>
		<div class="form-group">
			<label class="col-xs-4 control-label">Collection</label>
			<div class="col-xs-8">
				<input name="archivalCollectionFond" class="archivalCollectionFond form-control" type="text" value=""/>
			</div>
		</div>
		<div class="form-group">
			<label class="col-xs-4 control-label">Series</label>
			<div class="col-xs-8">
				<input name="archivalSeries" class="archivalSeries form-control" type="text" value=""/>
			</div>
		</div>
		<div class="form-group">
			<label class="col-xs-4 control-label">Sub-Series</label>
			<div class="col-xs-8">
				<input name="archivalSubSeries" class="archivalSubSeries form-control" type="text" value=""/>
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
				
				<label class="col-xs-12">
					<input type="checkbox" class="formatFilter" data-value="digital">Digital images
				</label>	
				
				<label class="col-xs-12">
					<input type="checkbox" class="formatFilter" data-value="scanned microform">Scanned microform
				</label>
				
				<label class="col-xs-12">
					<input type="checkbox" class="formatFilter" data-value="microform">Microform
				</label>
				
			</div>
		</div>
</div>