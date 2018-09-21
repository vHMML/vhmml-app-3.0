<div class="container">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/css/data.css?version=${applicationVersion}"/>
	
	<h1>Data Schema</h1>

	<div class="row" style="padding-bottom:20px;">
	  <div class="col-md-8">There are three basic levels to a Reading Room object: <strong>object</strong> (the object as a whole), <strong>part</strong> (a distinct unit of an object), and <strong>contents</strong> (a specific title within a part). There is always one object to one or many parts, and one part to one or many contents, or items, as represented below in the schema or to the right in the visual skeleton.</div>
	  <div class="col-md-4 text-center"><a data-toggle="tooltip" data-placement="left" title="click to see full-sized image" href="${pageContext.request.contextPath}/static/img/schema.png" target="_blank"><img style="width:150px;" src="${pageContext.request.contextPath}/static/img/schema.png" class="img-thumbnail rounded float-right" alt="vhmml schema"></a></div>
	  <!-- >div class="col-md-4 text-center"><figure class="figure"><a href="${pageContext.request.contextPath}/static/img/schema.png" target="_blank"><img style="width:150px;" src="${pageContext.request.contextPath}/static/img/schema.png" class="img-thumbnail rounded float-right" alt="vhmml schema"></a><figcaption class="small font-italic">Click for full-sized image</figcaption></figure></div-->
	</div>
	
	<!--  bootstrap 4 -->
	<!--  >nav>
	  <div class="nav nav-tabs nav-fill" id="nav-tab" role="tablist">
		<a class="nav-item nav-link active" id="nav-manuscript-tab" data-toggle="tab" href="#nav-manuscript" role="tab" aria-controls="nav-manuscript" aria-selected="true">Manuscript and Print Schema</a>
		<a class="nav-item nav-link" id="nav-archive-tab" data-toggle="tab" href="#nav-archive" role="tab" aria-controls="nav-archive" aria-selected="false">Archive Schema</a>
	  </div>
	</nav -->
	
	<ul class="nav nav-tabs nav-justified" role="tablist">
	    <li style="background-color:#eee;" role="presentation" class="active"><a href="#nav-manuscript" aria-controls="nav-manuscript" role="tab" data-toggle="tab">Manuscript and Print Schema</a></li>
	    <li style="background-color:#eee;" role="presentation"><a href="#nav-archive" aria-controls="nav-archive" role="tab" data-toggle="tab">Archive Schema</a></li>
	  </ul>

	<div class="tab-content" id="nav-tabContent">
	  
	  <!-- MANUSCRIPT AND PRINT SCHEMA -->
	  
	  <div class="tab-pane active" id="nav-manuscript" role="tabpanel" aria-labelledby="nav-manuscript-tab">
		<br /><h3 class="text-center">Manuscript and Print Schema</h3><a class="pull-right" data-toggle="tooltip" data-placement="top" title="vHMML Reading Room Schema Google Sheet" target="_blank" href="https://bit.ly/vHMMLSchema"><img style="height:25px;" src="${pageContext.request.contextPath}/static/img/google-sheets.png" ></a><a class="pull-right" data-toggle="tooltip" data-placement="top" title="Print schema" href="javascript:window.print()"><i class="fa fa-print fa-lg"></i></a><br /><br />
        
	<ul class="list-group">
	<li class='list-group-item level1'><strong>id</strong> - <i class='text-success'>int(11)</i><p class='longDescriptionL1'>Unique vHMML Reading Room system id for the object </p></li>
<li class='list-group-item level1'><strong>PURL</strong><p class='longDescriptionL1'>Persistent URL for a vHMML Reading Room object</p></li>
<li class='list-group-item level1'><strong>rights</strong><p class='longDescriptionL1'>Information about rights held in and over the resource</p></li>
<li class='list-group-item level1'><strong>summary</strong> - <i class='text-success'>text</i><p class='longDescriptionL1'>Summarizes the content of an object</p></li>
<li class='list-group-item level1'><strong>processedBy</strong> - <i class='text-success'>varchar(255)</i><p class='longDescriptionL1'>Identifies the institution(s) responsible for creating the metadata</p></li>
<li class='list-group-item level1'><strong>shelfMark</strong> - <i class='text-success'>varchar(255)</i><p class='longDescriptionL1'>The repository's exact identifier for the location of the object within the repository</p></li>
<li class='list-group-item level1'><strong>commonName</strong> - <i class='text-success'>varchar(255)</i><p class='longDescriptionL1'>An established name used to identify famous objects</p></li>
<li class='list-group-item level1'><strong>conditionNotes</strong> - <i class='text-success'>text</i><p class='longDescriptionL1'>Describes the physical condition of the book block</p></li>
<li class='list-group-item level1'><strong>collation</strong> - <i class='text-success'>text</i><p class='longDescriptionL1'>A description of the book's structure; the arrangement of its leaves and quires</p></li>
<li class='list-group-item level1'><strong>binding</strong> - <i class='text-success'>text</i><p class='longDescriptionL1'>Description of the binding, pastedowns, and flyleaves of an object</p></li>
<li class='list-group-item level1'><strong>bindingDimensionsImported</strong> - <i class='text-success'>varchar(255)</i><p class='longDescriptionL1'>Legacy binding dimensions</p></li>
<li class='list-group-item level1'><strong>bindingWidth</strong> - <i class='text-success'>float</i><p class='longDescriptionL1'>The outer dimensions of the binding width measured in centimeters</p></li>
<li class='list-group-item level1'><strong>bindingHeight</strong> - <i class='text-success'>float</i><p class='longDescriptionL1'>The outer dimensions of the binding height measured in centimeters</p></li>
<li class='list-group-item level1'><strong>bindingDepth</strong> - <i class='text-success'>float</i><p class='longDescriptionL1'>The outer dimensions of the binding depth measured in centimeters</p></li>
<li class='list-group-item level1'><strong>provenance</strong> - <i class='text-success'>text</i><p class='longDescriptionL1'>The origin and history of ownership of an object</p></li>
<li class='list-group-item level1'><strong>bibliography</strong> - <i class='text-success'>text</i><p class='longDescriptionL1'>Published information about the object</p></li>
<li class='list-group-item level1'><strong>notes</strong> - <i class='text-success'>text</i><p class='longDescriptionL1'>General notes about the object as a whole</p></li>
<li class='list-group-item level1'><strong>colophon</strong> - <i class='text-success'>text</i><p class='longDescriptionL1'>A note at the end of a manuscript or printed book that may give information about the author, title, scribe (or printer for a printed book), place of production, date of production, sponsor of the copying, or publication</p></li>
<li class='list-group-item level1'><strong>medium</strong> - <i class='text-success'>varchar(255)</i><p class='longDescriptionL1'>The material used to affix text to the support</p></li>
<li class='list-group-item level1'><strong>foliation</strong> - <i class='text-success'>varchar(255)</i><p class='longDescriptionL1'>Describes the modern or contemporary foliation or pagination of an object</p></li>
<li class='list-group-item level1'><strong>hmmlProjectNumber</strong> - <i class='text-success'>varchar(255)</i><p class='longDescriptionL1'>The code prefix and object number of a digital object or the main series number of a microform assigned by HMML</p></li>
<li class='list-group-item level1'><strong>reproductionNotes</strong> - <i class='text-success'>varchar(1000)</i><p class='longDescriptionL1'>Brief description of the quality and/or condition of the object's images</p></li>
<li class='list-group-item level1'><strong>acknowledgments</strong> - <i class='text-success'>varchar(255)</i><p class='longDescriptionL1'>Acknowledges contributors to the metadata</p></li>
<li class='list-group-item level1'><strong>objectType</strong> - <i class='text-success'>varchar(255)</i><p class='longDescriptionL1'>Type of record based on the original object type. Possible values: Not specified, Manuscript, Printed, Manuscript &amp; Print, Archival Material</p></li>
<li class='list-group-item level1'><strong>accessRestriction</strong> - <i class='text-success'>varchar(255)</i><p class='longDescriptionL1'>How a patron can access an object in Reading Room. Possible values: REGISTERED, REGISTERED_ONLY, UNREGISTERED, ON_SITE_ONLY_ORDER_SCAN, ON_SITE_ONLY</p></li>
<li class='list-group-item level1'><strong>viewableOnline</strong> - <i class='text-success'>tinyint(1)</i><p class='longDescriptionL1'>Whether an object is viewable in vHMML Reading Room. Possible values: 0 (false), 1 (true)</p></li>
<li class='list-group-item level1'><strong>downloadOption</strong> - <i class='text-success'>varchar(100)</i><p class='longDescriptionL1'>Whether an image is downloadable, and if so, at what size. Possible values: No (Cannot download an image), Small (250 px), Medium (500 px), Large (1200 px), All (Can download all sizes)</p></li>
<li class='list-group-item level1'>&#9660;<strong>externalFacsimileUrls</strong> - <i class='text-success'>array[object]</i></li>
<li class='list-group-item level2'><strong>id</strong> - <i class='text-success'>int(11)</i><p class='longDescriptionL2'>Unique vHMML Reading Room system id for the external facsimile URL </p></li>
<li class='list-group-item level2'><strong>url</strong> - <i class='text-success'>text</i><p class='longDescriptionL2'>URL link to an external facsimile of the object</p></li>
<li class='list-group-item level1'><strong>support</strong> - <i class='text-success'>varchar(255)</i><p class='longDescriptionL1'>The writing surface or material upon which a text is written or printed. Possible values: Parchment, Paper, Clay, Fabric, Metal, Papyrus, Stone, Wax, Wood, Other</p></li>
<li class='list-group-item level1'>&#9660;<strong>country</strong> - <i class='text-success'>object</i></li>
<li class='list-group-item level2'><strong>id</strong> - <i class='text-success'>int(11)</i><p class='longDescriptionL2'>Unique vHMML Reading Room system id for the country</p></li>
<li class='list-group-item level2'><strong>name</strong> - <i class='text-success'>varchar(255)</i><p class='longDescriptionL2'>The country where the original object is, or its last known location in the case of collections that have been moved to an unknown location or have been destroyed</p></li>
<li class='list-group-item level2'><strong>authorityUriLC</strong> - <i class='text-success'>text</i><p class='longDescriptionL2'>Library of Congress authority file URI</p></li>
<li class='list-group-item level2'><strong>authorityUriVIAF</strong> - <i class='text-success'>text</i><p class='longDescriptionL2'>VIAF authority file URI</p></li>
<li class='list-group-item level1'>&#9660;<strong>city</strong> - <i class='text-success'>object</i></li>
<li class='list-group-item level2'><strong>id</strong> - <i class='text-success'>int(11)</i><p class='longDescriptionL2'>Unique vHMML Reading Room system id for the city</p></li>
<li class='list-group-item level2'><strong>name</strong> - <i class='text-success'>varchar(255)</i><p class='longDescriptionL2'>The city where the original object is, or its last known location  in the case of collections that have moved to an unknown location or have been destroyed</p></li>
<li class='list-group-item level2'><strong>authorityUriLC</strong> - <i class='text-success'>text</i><p class='longDescriptionL2'>Library of Congress authority file URI</p></li>
<li class='list-group-item level2'><strong>authorityUriVIAF</strong> - <i class='text-success'>text</i><p class='longDescriptionL2'>VIAF authority file URI</p></li>
<li class='list-group-item level2'><strong>countryId</strong> - <i class='text-success'>int(11)</i><p class='longDescriptionL2'>Unique vHMML Reading Room system id for the country</p></li>
<li class='list-group-item level1'>&#9660;<strong>holdingInstitution</strong> - <i class='text-success'>object</i></li>
<li class='list-group-item level2'><strong>id</strong> - <i class='text-success'>int(11)</i><p class='longDescriptionL2'>Unique vHMML Reading Room system id for the holding institution</p></li>
<li class='list-group-item level2'><strong>name</strong> - <i class='text-success'>varchar(255)</i><p class='longDescriptionL2'>Institution responsible for more than one repository</p></li>

<li class='list-group-item level1'>&#9660;<strong>repository</strong> - <i class='text-success'>object</i></li>
<li class='list-group-item level2'><strong>id</strong> - <i class='text-success'>int(11)</i><p class='longDescriptionL2'>Unique vHMML Reading Room system id for the repository</p></li>
<li class='list-group-item level2'><strong>name</strong> - <i class='text-success'>varchar(255)</i><p class='longDescriptionL2'>The library or archive or organization where the physical object is located, or was most recently located before being moved to an unknown location or destroyed</p></li>
<li class='list-group-item level2'><strong>authorityUriLC</strong> - <i class='text-success'>text</i><p class='longDescriptionL2'>Library of Congress authority file URI</p></li>
<li class='list-group-item level2'><strong>authorityUriVIAF</strong> - <i class='text-success'>text</i><p class='longDescriptionL2'>VIAF authority file URI</p></li>
<li class='list-group-item level2'><strong>cityId</strong> - <i class='text-success'>int(11)</i><p class='longDescriptionL2'>Unique vHMML Reading Room system id for the city</p></li>

<li class='list-group-item level1'><strong>collection</strong><p class='longDescriptionL1'>Prefex code for the HMML project number</p></li>
<li class='list-group-item level1'><strong>captureDateDisplay</strong> - <i class='text-success'>date</i><p class='longDescriptionL1'>Date the object was digitized</p></li>
<li class='list-group-item level1'>&#9660;<strong>surrogateFormat</strong> - <i class='text-success'>object</i></li>
<li class='list-group-item level2'><strong>id</strong> - <i class='text-success'>int(11)</i><p class='longDescriptionL2'>A unique vHMML Reading Room system id for the surrogate format</p></li>
<li class='list-group-item level2'><strong>name</strong> - <i class='text-success'>varchar(255)</i><p class='longDescriptionL2'>The format of the surrogate of the original object. Possible values: Digital (Color digital images), Microform (Microfilm or microfiche), Scanned Microform (Scanned microfilm or microfiche), Photo print (Photographs or slides)</p></li>

<li class='list-group-item level1'>&#9660;<strong>alternateSurrogates</strong> - <i class='text-success'>array[object]</i></li>
<li class='list-group-item level2'><strong>id</strong> - <i class='text-success'>int(11)</i><p class='longDescriptionL2'>A unique vHMML Reading Room system id for the alternate surrogate(s) format</p></li>
<li class='list-group-item level2'><strong>name</strong> - <i class='text-success'>varchar(255)</i><p class='longDescriptionL2'>Another surrogate that exists at HMML and contains a different HMML project number, such as a microfilm of a manuscript that was later re-photographed digitally, or a duplicate microfilm that was donated to or purchased by HMML</p></li>

<li class='list-group-item level1'>&#9660;<strong>externalBibliographyUrls</strong> - <i class='text-success'>array[object]</i></li>
<li class='list-group-item level2'><strong>id</strong> - <i class='text-success'>int(11)</i><p class='longDescriptionL2'>A unique vHMML Reading Room system id for the external bibliography URL </p></li>
<li class='list-group-item level2'><strong>url</strong> - <i class='text-success'>text</i><p class='longDescriptionL2'>URL link to an external catalog or major study devoted to the object</p></li>
<li class='list-group-item level2'><strong>linkText</strong> - <i class='text-success'>varchar(500)</i><p class='longDescriptionL2'>Published information about the object</p></li>

<li class='list-group-item level1'>&#9660;<strong>extents</strong> - <i class='text-success'>array[object]</i></li>
<li class='list-group-item level2'><strong>id</strong> - <i class='text-success'>int(11)</i><p class='longDescriptionL2'>Unique vHMML Reading Room system id for this extent</p></li>
<li class='list-group-item level2'><strong>count</strong> - <i class='text-success'>int(6)</i><p class='longDescriptionL2'>The total number of leaves, pages, sheets, or plates an object has</p></li>
<li class='list-group-item level2'><strong>displayName</strong> - <i class='text-success'>varchar(50)</i><p class='longDescriptionL2'>The type of extent. Possible values: Page(s), Leave(s), Plate(s), Sheet(s)</p></li>
<li class='list-group-item level2'><strong>folioImported</strong> - <i class='text-success'>varchar(20)</i><p class='longDescriptionL2'>Legacy extent data</p></li>

<li class='list-group-item level1'>&#9660;<strong>genres</strong> - <i class='text-success'>array[object]</i></li>
<li class='list-group-item level2'><strong>id</strong> - <i class='text-success'>int(11)</i><p class='longDescriptionL2'>Unique vHMML Reading Room system id for this genre</p></li>
<li class='list-group-item level2'><strong>name</strong> - <i class='text-success'>varchar(255)</i><p class='longDescriptionL2'>A category of compostion</p></li>
<li class='list-group-item level2'><strong>uri</strong> - <i class='text-success'>text</i><p class='longDescriptionL2'>Authorized genre URI</p></li>

<li class='list-group-item level1'>&#9660;<strong>subjects</strong> - <i class='text-success'>array[object]</i></li>
<li class='list-group-item level2'><strong>id</strong> - <i class='text-success'>int(11)</i><p class='longDescriptionL2'>Unique vHMML Reading Room system id for this subject</p></li>
<li class='list-group-item level2'><strong>name</strong> - <i class='text-success'>varchar(255)</i><p class='longDescriptionL2'>Library of Congress Authority File subject data</p></li>
<li class='list-group-item level2'><strong>authorityUriLC</strong> - <i class='text-success'>text</i><p class='longDescriptionL2'>Library of Congress authority file URI</p></li>
<li class='list-group-item level2'><strong>authorityUriVIAF</strong> - <i class='text-success'>text</i><p class='longDescriptionL2'>VIAF authority file URI</p></li>

<li class='list-group-item level1'>&#9660;<strong>features</strong> - <i class='text-success'>array[object]</i></li>
<li class='list-group-item level2'><strong>id</strong> - <i class='text-success'>int(11)</i><p class='longDescriptionL2'>Unique vHMML Reading Room system id for this feature</p></li>
<li class='list-group-item level2'><strong>name</strong> - <i class='text-success'>varchar(255)</i><p class='longDescriptionL2'>Select physical attributes of an item</p></li>

<li class='list-group-item level1'><strong>featuresImported</strong> - <i class='text-success'>varchar(255)</i><p class='longDescriptionL1'>Legacy features data</p></li>
<li class='list-group-item level1'><strong>currentStatus</strong> - <i class='text-success'>varchar(50)</i><p class='longDescriptionL1'>The current physical location or status of an object. Possible values: In situ (in the repository), Destroyed, Relocated, Missing, Sold, Unknown  </p></li>
<li class='list-group-item level1'>&#9660;<strong>objectContributors</strong> - <i class='text-success'>array[object]</i></li>
<li class='list-group-item level2'><strong>id</strong> - <i class='text-success'>int(11)</i><p class='longDescriptionL2'>Unique vHMML Reading Room system id for this contributor in the object's item</p></li>
<li class='list-group-item level2'><strong>type</strong> - <i class='text-success'>varchar(50)</i><p class='longDescriptionL2'>The object's former owner</p></li>
<li class='list-group-item level2'><strong>nameNs</strong> - <i class='text-success'>varchar(255)</i><p class='longDescriptionL2'>The former owner's name in the original non-Roman language</p></li>
<li class='list-group-item level2'>&#9660;<strong>contributor</strong> - <i class='text-success'>object</i></li>
<li class='list-group-item level3'><strong>id</strong> - <i class='text-success'>int(11)</i><p class='longDescriptionL3'>Unique vHMML Reading Room system id for this contributor</p></li>
<li class='list-group-item level3'><strong>name</strong> - <i class='text-success'>varchar(255)</i><p class='longDescriptionL3'>Name of the contributor</p></li>
<li class='list-group-item level3'><strong>authorityUriLC</strong> - <i class='text-success'>text</i><p class='longDescriptionL3'>Library of Congress authority file URI</p></li>
<li class='list-group-item level3'><strong>authorityUriVIAF</strong> - <i class='text-success'>text</i><p class='longDescriptionL3'>VIAF authority file URI</p></li>
<li class='list-group-item level3'><strong>displayName</strong> - <i class='text-success'>varchar(255)</i><p class='longDescriptionL3'>Display name of the contributor</p></li>


<li class='list-group-item level1'>&#9660;<strong>parts</strong> - <i class='text-success'>array[object]</i></li>
<li class='list-group-item level2'><strong>id</strong> - <i class='text-success'>int(11)</i><p class='longDescriptionL2'>Unique vHMML Reading Room system id for the part</p></li>
<li class='list-group-item level2'><strong>type</strong> - <i class='text-success'>varchar(30)</i><p class='longDescriptionL2'>Type of the part. Possible values: Manuscript, Printed, or Unknown</p></li>
<li class='list-group-item level2'><strong>partNumber</strong> - <i class='text-success'>int(11)</i><p class='longDescriptionL2'>A sequential number assigned to a set or range of leaves/gatherings within a book block</p></li>
<li class='list-group-item level2'><strong>partLocation</strong> - <i class='text-success'>varchar(100)</i><p class='longDescriptionL2'>The actual location of a part in an object expressed in folios or pages</p></li>
<li class='list-group-item level2'><strong>supportDimensionsImported</strong> - <i class='text-success'>varchar(100)</i><p class='longDescriptionL2'>Legacy support dimensions</p></li>
<li class='list-group-item level2'><strong>supportImported</strong> - <i class='text-success'>varchar(255)</i><p class='longDescriptionL2'>Legacy support imported value</p></li>
<li class='list-group-item level2'><strong>supportDimensionsWidth</strong> - <i class='text-success'>float</i><p class='longDescriptionL2'>The width of the support measured in centimeters</p></li>
<li class='list-group-item level2'><strong>supportDimensionsHeight</strong> - <i class='text-success'>float</i><p class='longDescriptionL2'>The height of the support measured in centimeters</p></li>
<li class='list-group-item level2'>&#9660;<strong>partContributors</strong> - <i class='text-success'>array[object]</i></li>
<li class='list-group-item level3'><strong>id</strong> - <i class='text-success'>int(11)</i><p class='longDescriptionL3'>Unique vHMML Reading Room system id for this contributor in the object's part</p></li>
<li class='list-group-item level3'><strong>type</strong> - <i class='text-success'>varchar(25)</i><p class='longDescriptionL3'>Type of contributor in the object's part. Possible values: ARTIST, ATTRIBUTED_NAME, BOOKSELLER, COMMISSIONER, COMPILER, CONTRIBUTOR, DEDICATEE, EDITOR, ENGRAVER, NOTARY, PATRON, PRINTER, PUBLISHER, RECIPIENT, SCRIBE, TRANSLATOR</p></li>
<li class='list-group-item level3'><strong>nameNs</strong> - <i class='text-success'>varchar(255)</i><p class='longDescriptionL3'>The contributor name in the original non-Roman language</p></li>
<li class='list-group-item level3'>&#9660;<strong>contributor</strong> - <i class='text-success'>object</i></li>
<li class='list-group-item level4'><strong>id</strong> - <i class='text-success'>int(11)</i><p class='longDescriptionL4'>Unique vHMML Reading Room system id for this contributor</p></li>
<li class='list-group-item level4'><strong>name</strong> - <i class='text-success'>varchar(255)</i><p class='longDescriptionL4'>Name of the contributor</p></li>
<li class='list-group-item level4'><strong>authorityUriLC</strong> - <i class='text-success'>text</i><p class='longDescriptionL4'>Library of Congress authority file URI</p></li>
<li class='list-group-item level4'><strong>authorityUriVIAF</strong> - <i class='text-success'>text</i><p class='longDescriptionL4'>VIAF authority file URI</p></li>
<li class='list-group-item level4'><strong>displayName</strong> - <i class='text-success'>varchar(255)</i><p class='longDescriptionL4'>Display name of the contributor</p></li>


<li class='list-group-item level2'><strong>centuries</strong> - <i class='text-success'>int(11)</i><p class='longDescriptionL2'>The century or centuries when an object was written or printed</p></li>
<li class='list-group-item level2'><strong>centuryUncertain</strong> - <i class='text-success'>tinyint(1)</i><p class='longDescriptionL2'>Whether century or centuries are provisional. Possible values: 0 (false), 1 (true)</p></li>
<li class='list-group-item level2'><strong>cardinalOfOrigin</strong> - <i class='text-success'>varchar(100)</i><p class='longDescriptionL2'>The four main directional points of a compass where the object was written or printed</p></li>
<li class='list-group-item level2'><strong>regionOfOrigin</strong> - <i class='text-success'>varchar(100)</i><p class='longDescriptionL2'>The region where the object was written or printed</p></li>
<li class='list-group-item level2'><strong>cityOfOrigin</strong> - <i class='text-success'>varchar(255)</i><p class='longDescriptionL2'>The city where the object was written or printed</p></li>
<li class='list-group-item level2'><strong>cityOfOriginUncertain</strong> - <i class='text-success'>tinyint(1)</i><p class='longDescriptionL2'>Whether the city of origin is certain. Possible values: 0 (false), 1 (true)</p></li>
<li class='list-group-item level2'><strong>centuryImported</strong> - <i class='text-success'>varchar(255)</i><p class='longDescriptionL2'>Legacy century data</p></li>
<li class='list-group-item level2'><strong>ymdDateImported</strong> - <i class='text-success'>varchar(255)</i><p class='longDescriptionL2'>Legacy precise date data</p></li>
<li class='list-group-item level2'><strong>datePreciseYear</strong> - <i class='text-success'>int(4)</i><p class='longDescriptionL2'>Precise year of the object's creation</p></li>
<li class='list-group-item level2'><strong>datePreciseMonth</strong> - <i class='text-success'>int(2)</i><p class='longDescriptionL2'>Precise month of the object's creation</p></li>
<li class='list-group-item level2'><strong>datePreciseDay</strong> - <i class='text-success'>int(2)</i><p class='longDescriptionL2'>Precise day of the object's creation</p></li>
<li class='list-group-item level2'><strong>layout</strong> - <i class='text-success'>varchar(255)</i><p class='longDescriptionL2'>The layout of a text; the relationship of written or printed space to the ruling pattern and to the blank space on the page</p></li>
<li class='list-group-item level2'><strong>script</strong> - <i class='text-success'>varchar(255)</i><p class='longDescriptionL2'>A style of employing glyphs when writing by hand</p></li>
<li class='list-group-item level2'><strong>scriptImported</strong> - <i class='text-success'>varchar(255)</i><p class='longDescriptionL2'>Legacy script value</p></li>
<li class='list-group-item level2'><strong>scribe</strong> - <i class='text-success'>varchar(255)</i><p class='longDescriptionL2'>A person engaged in the physical writing of books or documents</p></li>
<li class='list-group-item level2'><strong>support</strong> - <i class='text-success'>varchar(255)</i><p class='longDescriptionL2'>The material used to receive the text that makes up an object. Possible values: Parchment, Paper, Clay, Fabric, Metal, Papyrus, Stone, Wax, Wood, Other</p></li>
<li class='list-group-item level2'><strong>artist</strong> - <i class='text-success'>varchar(255)</i><p class='longDescriptionL2'>A person engaged in the artistic decoration of books or documents</p></li>
<li class='list-group-item level2'><strong>partNotes</strong> - <i class='text-success'>text</i><p class='longDescriptionL2'>General notes about the part as a discrete unit within the object, and not about the object or items within the part</p></li>
<li class='list-group-item level2'><strong>beginDate</strong> - <i class='text-success'>int(11)</i><p class='longDescriptionL2'>The earliest year when an object was created regardless of whether or not it was in the same year</p></li>
<li class='list-group-item level2'><strong>endDate</strong> - <i class='text-success'>int(11)</i><p class='longDescriptionL2'>The latest year when an object was created regardless of whether or not it was in the same year</p></li>
<li class='list-group-item level2'><strong>writingSystemImported</strong> - <i class='text-success'>varchar(255)</i><p class='longDescriptionL2'>Legacy writing system value</p></li>
<li class='list-group-item level2'><strong>writingSystem</strong> - <i class='text-success'>varchar(255)</i><p class='longDescriptionL2'>The set of glyphs used to represent a given human language in written form</p></li>
<li class='list-group-item level2'><strong>nativeDatePrecise</strong> - <i class='text-success'>varchar(255)</i><p class='longDescriptionL2'>The native date expressed in modern Arabic numerals</p></li>
<li class='list-group-item level2'><strong>catchwords</strong> - <i class='text-success'>tinyint(1)</i><p class='longDescriptionL2'>Whether a catchword is present. Possible values: 0 (false), 1 (true)</p></li>
<li class='list-group-item level2'><strong>decoration</strong> - <i class='text-success'>mediumtext</i><p class='longDescriptionL2'>A description of the major and minor decoration of an object</p></li>
<li class='list-group-item level2'><strong>colophonPart</strong> - <i class='text-success'>text</i><p class='longDescriptionL2'>A note at the end of a manuscript or printed book that may give information about the author, title, scribe (or printer for a printed book), place of production, date of production, sponsor of the copying, or publication</p></li>
<li class='list-group-item level2'><strong>countryOfOrigin</strong> - <i class='text-success'>varchar(255)</i><p class='longDescriptionL2'>The country where the object was written or printed</p></li>
<li class='list-group-item level2'><strong>countryOfOriginUncertain</strong> - <i class='text-success'>tinyint(1)</i><p class='longDescriptionL2'>Whether the country of origin is certain. Possible values: 0 (false), 1 (true)</p></li>
<li class='list-group-item level2'><strong>writingSpaceImported</strong> - <i class='text-success'>varchar(255)</i><p class='longDescriptionL2'>Legacy writing space value(s)</p></li>
<li class='list-group-item level2'><strong>writingSpaceWidth</strong> - <i class='text-success'>float</i><p class='longDescriptionL2'>The measured size of the width of the area on the support used to contain the primary text measured in centimeters</p></li>
<li class='list-group-item level2'><strong>writingSpaceHeight</strong> - <i class='text-success'>float</i><p class='longDescriptionL2'>The measured size of the height of the area on the support used to contain the primary text measured in centimeters</p></li>
<li class='list-group-item level2'><strong>signatures</strong> - <i class='text-success'>tinyint(1)</i><p class='longDescriptionL2'>Whether the signature is present. Possible values: 0 (false), 1 (true)</p></li>
<li class='list-group-item level2'><strong>font</strong> - <i class='text-success'>varchar(255)</i><p class='longDescriptionL2'>The style of type</p></li>
<li class='list-group-item level2'><strong>editionStatement</strong> - <i class='text-success'>varchar(255)</i><p class='longDescriptionL2'>A statement relating to an edition or issue of a publication</p></li>
<li class='list-group-item level2'><strong>printingStatement</strong> - <i class='text-success'>varchar(500)</i><p class='longDescriptionL2'>Records the place, the name of the person or organization responsible for printing/publication, and the date in which the book was issued</p></li>
<li class='list-group-item level2'><strong>formatStatement</strong> - <i class='text-success'>varchar(255)</i><p class='longDescriptionL2'>The signature statement records the physical structure of the book according to the formation, number, and naming of its gatherings, based on the signatures printed at the bottom of certain pages</p></li>
<li class='list-group-item level2'><strong>foliationImported</strong> - <i class='text-success'>varchar(255)</i><p class='longDescriptionL2'>Legacy foliation value</p></li>
<li class='list-group-item level2'><strong>medium</strong> - <i class='text-success'>varchar(255)</i><p class='longDescriptionL2'>The material used to affix text to the support that makes the object</p></li>
<li class='list-group-item level2'>&#9660;<strong>contents</strong> - <i class='text-success'>array[object]</i></li>
<li class='list-group-item level3'><strong>id</strong> - <i class='text-success'>int(11)</i><p class='longDescriptionL3'>Unique vHMML Reading Room system id for the item</p></li>
<li class='list-group-item level3'><strong>itemNumber</strong> - <i class='text-success'>int(11)</i><p class='longDescriptionL3'>A sequential number assigned to a distinct item within a part of an object recorded in Arabic numerals</p></li>
<li class='list-group-item level3'><strong>itemLocation</strong> - <i class='text-success'>varchar(500)</i><p class='longDescriptionL3'>The location of an item in a part expressed in folios or pages</p></li>
<li class='list-group-item level3'><strong>provisionalTitle</strong> - <i class='text-success'>varchar(1000)</i><p class='longDescriptionL3'>The title of an item</p></li>
<li class='list-group-item level3'><strong>titleNs</strong> - <i class='text-success'>varchar(255)</i><p class='longDescriptionL3'>The title of an item in the original non-Roman language</p></li>
<li class='list-group-item level3'><strong>rubric</strong> - <i class='text-success'>varchar(255)</i><p class='longDescriptionL3'>A heading or instruction in a manuscript or printed book that is not part of the main text</p></li>
<li class='list-group-item level3'><strong>incipit</strong> - <i class='text-success'>text</i><p class='longDescriptionL3'>The opening words of a text</p></li>
<li class='list-group-item level3'><strong>explicit</strong> - <i class='text-success'>text</i><p class='longDescriptionL3'>The closing of a textual unit</p></li>
<li class='list-group-item level3'><strong>itemNotes</strong> - <i class='text-success'>text</i><p class='longDescriptionL3'>General notes about the item as a discrete unit within the part, and not about the object or the part</p></li>
<li class='list-group-item level3'><strong>paginationStatement</strong> - <i class='text-success'>varchar(255)</i><p class='longDescriptionL3'>The number of pages or leaves of a volume given according to how this extent is recorded on the piece</p></li>
<li class='list-group-item level3'><strong>contentsDetail</strong> - <i class='text-success'>text</i><p class='longDescriptionL3'>The contents of an item, such as a Bible, Psalter, a Book of Anaphoras, chapters of a book, sections of summa, or other internal contents of a larger item</p></li>
<li class='list-group-item level3'><strong>alternateTitles</strong> - <i class='text-success'>varchar(255)</i><p class='longDescriptionL3'>Used to identify variant titles for major works</p></li>
<li class='list-group-item level3'>&#9660;<strong>uniformTitle</strong> - <i class='text-success'>object</i></li>
<li class='list-group-item level4'><strong>id</strong> - <i class='text-success'>int(11)</i><p class='longDescriptionL4'>Unique vHMML Reading Room system id for this uniform title</p></li>
<li class='list-group-item level4'><strong>name</strong> - <i class='text-success'>varchar(255)</i><p class='longDescriptionL4'>The authorized title form of the Library of Congress and VIAF, and also by HMML for Eastern Christian liturgical texts</p></li>
<li class='list-group-item level4'><strong>authorityUriLC</strong> - <i class='text-success'>text</i><p class='longDescriptionL4'>Library of Congress authority file URI</p></li>
<li class='list-group-item level4'><strong>authorityUriVIAF</strong> - <i class='text-success'>text</i><p class='longDescriptionL4'>VIAF authority file URI</p></li>

<li class='list-group-item level3'>&#9660;<strong>languages</strong> - <i class='text-success'>array[object]</i></li>
<li class='list-group-item level4'><strong>id</strong> - <i class='text-success'>int(11)</i><p class='longDescriptionL4'>Unique vHMML Reading Room system id for this language</p></li>
<li class='list-group-item level4'><strong>name</strong> - <i class='text-success'>varchar(255)</i><p class='longDescriptionL4'>The language(s) used in the item</p></li>

<li class='list-group-item level3'>&#9660;<strong>contentContributors</strong> - <i class='text-success'>array[object]</i></li>
<li class='list-group-item level4'><strong>id</strong> - <i class='text-success'>int(11)</i><p class='longDescriptionL4'>Unique vHMML Reading Room system id for this contributor in the object's item</p></li>
<li class='list-group-item level4'><strong>type</strong> - <i class='text-success'>varchar(25)</i><p class='longDescriptionL4'>Type of contributor in the object's item. Possible values: ARTIST, ATTRIBUTED_NAME, BOOKSELLER, COMMISSIONER, COMPILER, CONTRIBUTOR, DEDICATEE, EDITOR, ENGRAVER, NOTARY, PATRON, PRINTER, PUBLISHER, RECIPIENT, SCRIBE, TRANSLATOR</p></li>
<li class='list-group-item level4'><strong>nameNs</strong> - <i class='text-success'>varchar(255)</i><p class='longDescriptionL4'>The contributor name in the original non-Roman language</p></li>
<li class='list-group-item level4'>&#9660;<strong>contributor</strong> - <i class='text-success'>object</i></li>
<li class='list-group-item level5'><strong>id</strong> - <i class='text-success'>int(11)</i><p class='longDescriptionL5'>Unique vHMML Reading Room system id for this contributor</p></li>
<li class='list-group-item level5'><strong>name</strong> - <i class='text-success'>varchar(255)</i><p class='longDescriptionL5'>Name of the contributor</p></li>
<li class='list-group-item level5'><strong>authorityUriLC</strong> - <i class='text-success'>text</i><p class='longDescriptionL5'>Library of Congress authority file URI</p></li>
<li class='list-group-item level5'><strong>authorityUriVIAF</strong> - <i class='text-success'>text</i><p class='longDescriptionL5'>VIAF authority file URI</p></li>
<li class='list-group-item level5'><strong>displayName</strong> - <i class='text-success'>varchar(255)</i><p class='longDescriptionL5'>Display name of the contributor</p></li>
	</ul>
	  </div>
	  

	  
	  <!-- ARCHIVE SCHEMA -->
		  
	  <div class="tab-pane" id="nav-archive" role="tabpanel" aria-labelledby="nav-archive-tab">
		<br /><h3 class="text-center">Archive Schema</h3><a class="pull-right" data-toggle="tooltip" data-placement="top" title="vHMML Reading Room Schema Google Sheet" target="_blank" href="https://bit.ly/vHMMLSchema"><img style="height:25px;" src="${pageContext.request.contextPath}/static/img/google-sheets.png" ></a><a class="pull-right" data-toggle="tooltip" data-placement="top" title="Print schema" href="javascript:window.print()"><i class="fa fa-print fa-lg"></i></a><br /><br />

	<ul class="list-group">
		<li class='list-group-item level1'><strong>id</strong> - <i class='text-success'>int(11)</i><p class='longDescriptionL1'>Unique vHMML Reading Room system id for the object</p></li>
<li class='list-group-item level1'><strong>PURL</strong><p class='longDescriptionL1'>Persistent URL for a vHMML Reading Room object</p></li>
<li class='list-group-item level1'><strong>rights</strong><p class='longDescriptionL1'>Information about rights held in and over the resource</p></li>
<li class='list-group-item level1'><strong>summary</strong> - <i class='text-success'>text</i><p class='longDescriptionL1'>Summarizes the content of an object</p></li>
<li class='list-group-item level1'><strong>processedBy</strong> - <i class='text-success'>varchar(255)</i><p class='longDescriptionL1'>Identifies the institution(s) responsible for creating the metadata</p></li>
<li class='list-group-item level1'><strong>shelfMark</strong> - <i class='text-success'>varchar(255)</i><p class='longDescriptionL1'>The repository's exact identifier for the location of the object within the repository</p></li>
<li class='list-group-item level1'><strong>commonName</strong> - <i class='text-success'>varchar(255)</i><p class='longDescriptionL1'>An established name used to identify famous objects</p></li>
<li class='list-group-item level1'><strong>conditionNotes</strong> - <i class='text-success'>text</i><p class='longDescriptionL1'>Describes the physical condition of the book block</p></li>
<li class='list-group-item level1'><strong>collation</strong> - <i class='text-success'>text</i><p class='longDescriptionL1'>A description of the book's structure; the arrangement of its leaves and quires</p></li>
<li class='list-group-item level1'><strong>binding</strong> - <i class='text-success'>text</i><p class='longDescriptionL1'>Description of the binding, pastedowns, and flyleaves of an object</p></li>
<li class='list-group-item level1'><strong>bindingDimensionsImported</strong> - <i class='text-success'>varchar(255)</i><p class='longDescriptionL1'>Legacy binding dimensions</p></li>
<li class='list-group-item level1'><strong>bindingWidth</strong> - <i class='text-success'>float</i><p class='longDescriptionL1'>The outer dimensions of the binding width measured in centimeters</p></li>
<li class='list-group-item level1'><strong>bindingHeight</strong> - <i class='text-success'>float</i><p class='longDescriptionL1'>The outer dimensions of the binding height measured in centimeters</p></li>
<li class='list-group-item level1'><strong>bindingDepth</strong> - <i class='text-success'>float</i><p class='longDescriptionL1'>The outer dimensions of the binding depth measured in centimeters</p></li>
<li class='list-group-item level1'><strong>provenance</strong> - <i class='text-success'>text</i><p class='longDescriptionL1'>The origin and history of ownership of an object</p></li>
<li class='list-group-item level1'><strong>bibliography</strong> - <i class='text-success'>text</i><p class='longDescriptionL1'>Published information about the object</p></li>
<li class='list-group-item level1'><strong>notes</strong> - <i class='text-success'>text</i><p class='longDescriptionL1'>General notes about the object as a whole</p></li>
<li class='list-group-item level1'><strong>colophon</strong> - <i class='text-success'>text</i><p class='longDescriptionL1'>A note at the end of a manuscript or printed book that may give information about the author, title, scribe (or printer for a printed book), place of production, date of production, sponsor of the copying, or publication</p></li>
<li class='list-group-item level1'><strong>medium</strong> - <i class='text-success'>varchar(255)</i><p class='longDescriptionL1'>The material used to affix text to the support</p></li>
<li class='list-group-item level1'><strong>foliation</strong> - <i class='text-success'>varchar(255)</i><p class='longDescriptionL1'>Describes the modern or contemporary foliation or pagination of an object</p></li>
<li class='list-group-item level1'><strong>hmmlProjectNumber</strong> - <i class='text-success'>varchar(255)</i><p class='longDescriptionL1'>The code prefix and object number of a digital object or the main series number of a microform assigned by HMML</p></li>
<li class='list-group-item level1'><strong>reproductionNotes</strong> - <i class='text-success'>varchar(1000)</i><p class='longDescriptionL1'>Brief description of the quality and/or condition of the object's images</p></li>
<li class='list-group-item level1'><strong>acknowledgments</strong> - <i class='text-success'>varchar(255)</i><p class='longDescriptionL1'>Acknowledges contributors to the metadata</p></li>
<li class='list-group-item level1'><strong>objectType</strong> - <i class='text-success'>varchar(255)</i><p class='longDescriptionL1'>Type of record based on the original object type. Possible values: Not specified, Manuscript, Printed, Manuscript &amp; Print, Archival Material</p></li>
<li class='list-group-item level1'><strong>accessRestriction</strong> - <i class='text-success'>varchar(255)</i><p class='longDescriptionL1'>How a patron can access an object in vHMML Reading Room</p></li>
<li class='list-group-item level1'><strong>viewableOnline</strong> - <i class='text-success'>tinyint(1)</i><p class='longDescriptionL1'>Whether an object is viewable in vHMML Reading Room. Possible values: 0 (false), 1 (true)</p></li>
<li class='list-group-item level1'><strong>downloadOption</strong> - <i class='text-success'>varchar(100)</i><p class='longDescriptionL1'>Whether an image is downloadable, and if so, at what size. Possible values: No (Cannot download an image), Small (250 px), Medium (500 px), Large (1200 px), All (Can download all sizes)</p></li>
<li class='list-group-item level1'>&#9660;<strong>externalFacsimileUrls</strong> - <i class='text-success'>array[object]</i><p class='longDescriptionL1'>Unique vHMML Reading Room system id for the external facsimile URL</p></li>
<li class='list-group-item level2'><strong>id</strong> - <i class='text-success'>int(11)</i><p class='longDescriptionL2'>Unique vHMML Reading Room system id for the object</p></li>
<li class='list-group-item level2'><strong>url</strong> - <i class='text-success'>text</i><p class='longDescriptionL2'>URL link to an external facsimile of the object</p></li>

<li class='list-group-item level1'><strong>support</strong> - <i class='text-success'>varchar(255)</i><p class='longDescriptionL1'>The writing surface or material upon which a text is written or printed. Possible values: Parchment, Paper, Clay, Fabric, Metal, Papyrus, Stone, Wax, Wood, Other</p></li>
<li class='list-group-item level1'>&#9660;<strong>country</strong> - <i class='text-success'>object</i></li>
<li class='list-group-item level2'><strong>id</strong> - <i class='text-success'>int(11)</i><p class='longDescriptionL2'>Unique vHMML Reading Room system id for the country</p></li>
<li class='list-group-item level2'><strong>name</strong> - <i class='text-success'>varchar(255)</i><p class='longDescriptionL2'>The country where the original object is, or its last known location in the case of collections that have been moved to an unknown location or have been destroyed</p></li>
<li class='list-group-item level2'><strong>authorityUriLC</strong> - <i class='text-success'>text</i><p class='longDescriptionL2'>Library of Congress authority file URI</p></li>
<li class='list-group-item level2'><strong>authorityUriVIAF</strong> - <i class='text-success'>text</i><p class='longDescriptionL2'>VIAF authority file URI</p></li>

<li class='list-group-item level1'>&#9660;<strong>city</strong> - <i class='text-success'>object</i></li>
<li class='list-group-item level2'><strong>id</strong> - <i class='text-success'>int(11)</i><p class='longDescriptionL2'>Unique vHMML Reading Room system id for the city</p></li>
<li class='list-group-item level2'><strong>name</strong> - <i class='text-success'>varchar(255)</i><p class='longDescriptionL2'>The city where the original object is, or its last known location  in the case of collections that have moved to an unknown location or have been destroyed</p></li>
<li class='list-group-item level2'><strong>authorityUriLC</strong> - <i class='text-success'>text</i><p class='longDescriptionL2'>Library of Congress authority file URI</p></li>
<li class='list-group-item level2'><strong>authorityUriVIAF</strong> - <i class='text-success'>text</i><p class='longDescriptionL2'>VIAF authority file URI</p></li>
<li class='list-group-item level2'><strong>countryId</strong> - <i class='text-success'>int(11)</i><p class='longDescriptionL2'>Unique vHMML Reading Room system id for the country</p></li>

<li class='list-group-item level1'>&#9660;<strong>holdingInstitution</strong> - <i class='text-success'>object</i></li>
<li class='list-group-item level2'><strong>id</strong> - <i class='text-success'>int(11)</i><p class='longDescriptionL2'>Unique vHMML Reading Room system id for the holding institution</p></li>
<li class='list-group-item level2'><strong>name</strong> - <i class='text-success'>varchar(255)</i><p class='longDescriptionL2'>Institution responsible for more than one repository</p></li>

<li class='list-group-item level1'>&#9660;<strong>repository</strong> - <i class='text-success'>object</i></li>
<li class='list-group-item level2'><strong>id</strong> - <i class='text-success'>int(11)</i><p class='longDescriptionL2'>Unique vHMML Reading Room system id for the repository</p></li>
<li class='list-group-item level2'><strong>name</strong> - <i class='text-success'>varchar(255)</i><p class='longDescriptionL2'>The library or archive or organization where the physical object is located, or was most recently located before being moved to an unknown location or destroyed</p></li>
<li class='list-group-item level2'><strong>authorityUriLC</strong> - <i class='text-success'>text</i><p class='longDescriptionL2'>Library of Congress authority file URI</p></li>
<li class='list-group-item level2'><strong>authorityUriVIAF</strong> - <i class='text-success'>text</i><p class='longDescriptionL2'>VIAF authority file URI</p></li>
<li class='list-group-item level2'><strong>cityId</strong> - <i class='text-success'>int(11)</i><p class='longDescriptionL2'>Unique vHMML Reading Room system id for the city</p></li>

<li class='list-group-item level1'><strong>collection</strong><p class='longDescriptionL1'>Prefex code for the HMML project number</p></li>
<li class='list-group-item level1'><strong>captureDateDisplay</strong> - <i class='text-success'>date</i><p class='longDescriptionL1'>Date the object was digitized</p></li>
<li class='list-group-item level1'>&#9660;<strong>surrogateFormat</strong> - <i class='text-success'>object</i></li>
<li class='list-group-item level2'><strong>id</strong> - <i class='text-success'>int(11)</i><p class='longDescriptionL2'>A unique vHMML Reading Room system id for the surrogate format</p></li>
<li class='list-group-item level2'><strong>name</strong> - <i class='text-success'>varchar(255)</i><p class='longDescriptionL2'>The format of the surrogate of the original object. Possible values: Digital (Color digital images), Microform (Microfilm or microfiche), Scanned Microform (Scanned microfilm or microfiche), Photo print (Photographs or slides)</p></li>

<li class='list-group-item level1'>&#9660;<strong>alternateSurrogates</strong> - <i class='text-success'>array[object]</i></li>
<li class='list-group-item level2'><strong>id</strong> - <i class='text-success'>int(11)</i><p class='longDescriptionL2'>A unique vHMML Reading Room system id for the alternate surrogate(s) format</p></li>
<li class='list-group-item level2'><strong>name</strong> - <i class='text-success'>varchar(255)</i><p class='longDescriptionL2'>Another surrogate that exists at HMML and contains a different HMML project number, such as a microfilm of a manuscript that was later re-photographed digitally, or a duplicate microfilm that was donated to or purchased by HMML</p></li>

<li class='list-group-item level1'>&#9660;<strong>externalBibliographyUrls</strong> - <i class='text-success'>array[object]</i></li>
<li class='list-group-item level2'><strong>id</strong> - <i class='text-success'>int(11)</i><p class='longDescriptionL2'>A unique vHMML Reading Room system id for the external bibliography URL </p></li>
<li class='list-group-item level2'><strong>url</strong> - <i class='text-success'>text</i><p class='longDescriptionL2'>URL link to an external catalog or major study devoted to the object</p></li>
<li class='list-group-item level2'><strong>linkText</strong> - <i class='text-success'>varchar(500)</i><p class='longDescriptionL2'>Published information about the object</p></li>

<li class='list-group-item level1'>&#9660;<strong>extents</strong> - <i class='text-success'>array[object]</i></li>
<li class='list-group-item level2'><strong>id</strong> - <i class='text-success'>int(11)</i><p class='longDescriptionL2'>Unique vHMML Reading Room system id for this extent</p></li>
<li class='list-group-item level2'><strong>count</strong> - <i class='text-success'>int(6)</i><p class='longDescriptionL2'>The total number of leaves, pages, sheets, or plates an object has</p></li>
<li class='list-group-item level2'><strong>displayName</strong> - <i class='text-success'>varchar(255)</i><p class='longDescriptionL2'>The type of extent. Possible values: Page(s), Leave(s), Plate(s), Sheet(s)</p></li>
<li class='list-group-item level2'><strong>folioImported</strong> - <i class='text-success'>varchar(20)</i><p class='longDescriptionL2'>Legacy extent data</p></li>

<li class='list-group-item level1'>&#9660;<strong>genres</strong> - <i class='text-success'>array[object]</i></li>
<li class='list-group-item level2'><strong>id</strong> - <i class='text-success'>int(11)</i><p class='longDescriptionL2'>Unique vHMML Reading Room system id for this genre</p></li>
<li class='list-group-item level2'><strong>name</strong> - <i class='text-success'>varchar(255)</i><p class='longDescriptionL2'>A category of compostion</p></li>
<li class='list-group-item level2'><strong>uri</strong> - <i class='text-success'>text</i><p class='longDescriptionL2'>Authorized genre URI</p></li>

<li class='list-group-item level1'>&#9660;<strong>subjects</strong> - <i class='text-success'>array[object]</i></li>
<li class='list-group-item level2'><strong>id</strong> - <i class='text-success'>int(11)</i><p class='longDescriptionL2'>Unique vHMML Reading Room system id for this subject</p></li>
<li class='list-group-item level2'><strong>name</strong> - <i class='text-success'>varchar(255)</i><p class='longDescriptionL2'>Library of Congress Authority File subject data</p></li>
<li class='list-group-item level2'><strong>authorityUriLC</strong> - <i class='text-success'>text</i><p class='longDescriptionL2'>Library of Congress authority file URI</p></li>
<li class='list-group-item level2'><strong>authorityUriVIAF</strong> - <i class='text-success'>text</i><p class='longDescriptionL2'>VIAF authority file URI</p></li>

<li class='list-group-item level1'>&#9660;<strong>features</strong> - <i class='text-success'>array[object]</i></li>
<li class='list-group-item level2'><strong>id</strong> - <i class='text-success'>int(11)</i><p class='longDescriptionL2'>Unique vHMML Reading Room system id for this feature</p></li>
<li class='list-group-item level2'><strong>name</strong> - <i class='text-success'>varchar(255)</i><p class='longDescriptionL2'>Select physical attributes of an item</p></li>

<li class='list-group-item level1'><strong>featuresImported</strong> - <i class='text-success'>varchar(255)</i><p class='longDescriptionL1'>Legacy features data</p></li>
<li class='list-group-item level1'><strong>currentStatus</strong> - <i class='text-success'>varchar(50)</i><p class='longDescriptionL1'>The current physical location or status of an object. Possible values: In situ (in the repository), Destroyed, Relocated, Missing, Sold, Unknown  </p></li>
<li class='list-group-item level1'>&#9660;<strong>objectContributors</strong> - <i class='text-success'>array[object]</i></li>
<li class='list-group-item level2'><strong>id</strong> - <i class='text-success'>int(11)</i><p class='longDescriptionL2'>Unique vHMML Reading Room system id for this contributor in the object's item</p></li>
<li class='list-group-item level2'><strong>type</strong> - <i class='text-success'>varchar(50)</i><p class='longDescriptionL2'>The object's former owner</p></li>
<li class='list-group-item level2'><strong>nameNs</strong> - <i class='text-success'>varchar(255)</i><p class='longDescriptionL2'>The former owner's name in the original non-Roman language</p></li>
<li class='list-group-item level2'>&#9660;<strong>contributor</strong> - <i class='text-success'>object</i></li>
<li class='list-group-item level3'><strong>id</strong> - <i class='text-success'>int(11)</i><p class='longDescriptionL3'>Unique vHMML Reading Room system id for this contributor</p></li>
<li class='list-group-item level3'><strong>name</strong> - <i class='text-success'>varchar(255)</i><p class='longDescriptionL3'>Name of the contributor</p></li>
<li class='list-group-item level3'><strong>authorityUriLC</strong> - <i class='text-success'>text</i><p class='longDescriptionL3'>Library of Congress authority file URI</p></li>
<li class='list-group-item level3'><strong>authorityUriVIAF</strong> - <i class='text-success'>text</i><p class='longDescriptionL3'>VIAF authority file URI</p></li>
<li class='list-group-item level3'><strong>displayName</strong> - <i class='text-success'>varchar(255)</i><p class='longDescriptionL3'>Display name of the contributor</p></li>


<li class='list-group-item level1'><strong>archivalid</strong> - <i class='text-success'>int(11)</i><p class='longDescriptionL1'>Unique vHMML Reading Room system id for the archival data object</p></li>
<li class='list-group-item level1'><strong>collectionFond</strong> - <i class='text-success'>varchar(500)</i><p class='longDescriptionL1'>A group of materials with some unifying characteristic</p></li>
<li class='list-group-item level1'><strong>series</strong> - <i class='text-success'>varchar(500)</i><p class='longDescriptionL1'>A group of similar records that are arranged according to a filing system and that are related as the result of being created, received, or used in the same activity; a file group; a record series</p></li>
<li class='list-group-item level1'><strong>subSeries</strong> - <i class='text-success'>varchar(500)</i><p class='longDescriptionL1'>A body of documents within a series readily distinguished from the whole by filing arrangement, type, form, or content</p></li>
<li class='list-group-item level1'><strong>subSubSeries</strong> - <i class='text-success'>varchar(500)</i><p class='longDescriptionL1'>A body of documents within a sub series readily distinguished from the whole by filing arrangement, type, form, or content</p></li>
<li class='list-group-item level1'><strong>containerType</strong> - <i class='text-success'>varchar(50)</i><p class='longDescriptionL1'>A package or housing used to hold materials</p></li>
<li class='list-group-item level1'><strong>containerCount</strong> - <i class='text-success'>int(4)</i><p class='longDescriptionL1'>The number of container(s)</p></li>
<li class='list-group-item level1'><strong>title</strong> - <i class='text-success'>varchar(500)</i><p class='longDescriptionL1'>A word or phrase that identifies a work</p></li>
<li class='list-group-item level1'><strong>creator</strong> - <i class='text-success'>varchar(100)</i><p class='longDescriptionL1'>The individual, group, or organization that is responsible for something's production, accumulation, or formation</p></li>
<li class='list-group-item level1'><strong>scopeContent</strong> - <i class='text-success'>text</i><p class='longDescriptionL1'>A narrative statement summarizing the characteristics of the described materials</p></li>
<li class='list-group-item level1'><strong>historicalNote</strong> - <i class='text-success'>text</i><p class='longDescriptionL1'>A concise summary of the sections of a work</p></li>
<li class='list-group-item level1'><strong>custodialHistory</strong> - <i class='text-success'>text</i><p class='longDescriptionL1'>The succession of offices, families, or persons who held materials from the moment they were created</p></li>
<li class='list-group-item level1'><strong>support</strong> - <i class='text-success'>varchar(255)</i><p class='longDescriptionL1'>The material used to receive the text that makes up an object. Possible values: Parchment, Paper, Clay, Fabric, Metal, Papyrus, Stone, Wax, Wood, Other</p></li>
<li class='list-group-item level1'><strong>datePreciseYear</strong> - <i class='text-success'>int(4)</i><p class='longDescriptionL1'>Precise year of the object's creation</p></li>
<li class='list-group-item level1'><strong>datePreciseMonth</strong> - <i class='text-success'>int(2)</i><p class='longDescriptionL1'>Precise month of the object's creation</p></li>
<li class='list-group-item level1'><strong>datePreciseDay</strong> - <i class='text-success'>int(2)</i><p class='longDescriptionL1'>Precise day of the object's creation</p></li>
<li class='list-group-item level1'><strong>beginDate</strong> - <i class='text-success'>int(2)</i><p class='longDescriptionL1'>The earliest year when an object was created regardless of whether or not it was in the same year</p></li>
<li class='list-group-item level1'><strong>endDate</strong> - <i class='text-success'>int(2)</i><p class='longDescriptionL1'>The latest year when an object was created regardless of whether or not it was in the same year</p></li>
<li class='list-group-item level1'><strong>nativeDate</strong> - <i class='text-success'>varchar(255)</i><p class='longDescriptionL1'>The native date expressed in modern Arabic numerals</p></li>
<li class='list-group-item level1'><strong>decoration</strong> - <i class='text-success'>varchar(1000)</i><p class='longDescriptionL1'>A description of the major and minor decoration of an object</p></li>
<li class='list-group-item level1'><strong>centuryImported</strong> - <i class='text-success'>varchar(255)</i><p class='longDescriptionL1'>Legacy century data</p></li>
<li class='list-group-item level1'><strong>centuries</strong> - <i class='text-success'>int(11)</i><p class='longDescriptionL1'>The century or centuries when an object was written or printed</p></li>
<li class='list-group-item level1'><strong>centuryUncertain</strong> - <i class='text-success'>tinyint(1)</i><p class='longDescriptionL1'>Whether century or centuries are provisional. Possible values: 0 (false), 1 (true)</p></li>
<li class='list-group-item level1'>&#9660;<strong>languages</strong> - <i class='text-success'>array[object]</i></li>
<li class='list-group-item level2'><strong>id</strong> - <i class='text-success'>int(11)</i><p class='longDescriptionL2'>Unique vHMML Reading Room system id for this language</p></li>
<li class='list-group-item level2'><strong>name</strong> - <i class='text-success'>varchar(255)</i><p class='longDescriptionL2'>The language(s) used in the item</p></li>

<li class='list-group-item level1'><strong>writingSystem</strong> - <i class='text-success'>varchar(255)</i><p class='longDescriptionL1'>The set of glyphs used to represent a given human language in written form</p></li>
<li class='list-group-item level1'>&#9660;<strong>associatedNames</strong> - <i class='text-success'>array[object]</i></li>
<li class='list-group-item level2'><strong>id</strong> - <i class='text-success'>int(11)</i><p class='longDescriptionL2'>Unique vHMML Reading Room system id for this associated name</p></li>
<li class='list-group-item level2'><strong>type</strong> - <i class='text-success'>varchar(25)</i><p class='longDescriptionL2'>Type of associated name for the object. Possible values: ARTIST, ATTRIBUTED_NAME, BOOKSELLER, COMMISSIONER, COMPILER, CONTRIBUTOR, DEDICATEE, EDITOR, ENGRAVER, NOTARY, PATRON, PRINTER, PUBLISHER, RECIPIENT, SCRIBE, TRANSLATOR</p></li>
<li class='list-group-item level2'><strong>nameNs</strong> - <i class='text-success'>varchar(255)</i><p class='longDescriptionL2'>The associated name in the original non-Roman language</p></li>
<li class='list-group-item level2'>&#9660;<strong>contributor</strong> - <i class='text-success'>object</i></li>
<li class='list-group-item level3'><strong>id</strong> - <i class='text-success'>int(11)</i><p class='longDescriptionL3'>Unique vHMML Reading Room system id for this contributor</p></li>
<li class='list-group-item level3'><strong>name</strong> - <i class='text-success'>varchar(255)</i><p class='longDescriptionL3'>Name of the contributor</p></li>
<li class='list-group-item level3'><strong>authorityUriLC</strong> - <i class='text-success'>text</i><p class='longDescriptionL3'>Library of Congress authority file URI</p></li>
<li class='list-group-item level3'><strong>authorityUriVIAF</strong> - <i class='text-success'>text</i><p class='longDescriptionL3'>VIAF authority file URI</p></li>
<li class='list-group-item level3'><strong>displayName</strong> - <i class='text-success'>varchar(255)</i><p class='longDescriptionL3'>Display name of the contributor</p></li>


<li class='list-group-item level1'>&#9660;<strong>contents</strong> - <i class='text-success'>array[object]</i></li>
<li class='list-group-item level2'><strong>id</strong> - <i class='text-success'>int(11)</i><p class='longDescriptionL2'>Unique vHMML Reading Room system id for the item</p></li>
<li class='list-group-item level2'>&#9660;<strong>languages</strong> - <i class='text-success'>array[object]</i></li>
<li class='list-group-item level3'><strong>id</strong> - <i class='text-success'>int(11)</i><p class='longDescriptionL3'>Unique vHMML Reading Room system id for this language</p></li>
<li class='list-group-item level3'><strong>name</strong> - <i class='text-success'>varchar(255)</i><p class='longDescriptionL3'>The language(s) used in the item</p></li>

<li class='list-group-item level2'>&#9660;<strong>contentContributors</strong> - <i class='text-success'>array[object]</i></li>
<li class='list-group-item level3'><strong>id</strong> - <i class='text-success'>int(11)</i><p class='longDescriptionL3'>Unique vHMML Reading Room system id for this associated name</p></li>
<li class='list-group-item level3'><strong>type</strong> - <i class='text-success'>varchar(25)</i><p class='longDescriptionL3'>Type of associated name for the object. Possible values: ARTIST, ATTRIBUTED_NAME, BOOKSELLER, COMMISSIONER, COMPILER, CONTRIBUTOR, DEDICATEE, EDITOR, ENGRAVER, NOTARY, PATRON, PRINTER, PUBLISHER, RECIPIENT, SCRIBE, TRANSLATOR</p></li>
<li class='list-group-item level3'><strong>nameNs</strong> - <i class='text-success'>varchar(255)</i><p class='longDescriptionL3'>The associated name in the original non-Roman language</p></li>
<li class='list-group-item level3'>&#9660;<strong>contributor</strong> - <i class='text-success'>object</i></li>
<li class='list-group-item level4'><strong>id</strong> - <i class='text-success'>int(11)</i><p class='longDescriptionL4'>Unique vHMML Reading Room system id for this contributor</p></li>
<li class='list-group-item level4'><strong>name</strong> - <i class='text-success'>varchar(255)</i><p class='longDescriptionL4'>Name of the contributor</p></li>
<li class='list-group-item level4'><strong>authorityUriLC</strong> - <i class='text-success'>text</i><p class='longDescriptionL4'>Library of Congress authority file URI</p></li>
<li class='list-group-item level4'><strong>authorityUriVIAF</strong> - <i class='text-success'>text</i><p class='longDescriptionL4'>VIAF authority file URI</p></li>
<li class='list-group-item level4'><strong>displayName</strong> - <i class='text-success'>varchar(255)</i><p class='longDescriptionL4'>Display name of the contributor</p></li>
<li class='list-group-item level2'><strong>type</strong> - <i class='text-success'>varchar(30)</i><p class='longDescriptionL2'>Type of record based on the original object type. Possible values: Not specified, Manuscript, Printed, Manuscript &amp; Print, Archival Material</p></li>
<li class='list-group-item level2'><strong>folder</strong> - <i class='text-success'>int(5)</i><p class='longDescriptionL2'>A sheet of cardboard or heavy paper stock that is used as a loose cover to keep documents and other flat materials together, especially for purposes of filing</p></li>
<li class='list-group-item level2'><strong>item</strong> - <i class='text-success'>int(5)</i><p class='longDescriptionL2'>A thing that can be distinguished from a group and that is complete in itself</p></li>
<li class='list-group-item level2'><strong>extent</strong> - <i class='text-success'>varchar(100)</i><p class='longDescriptionL2'>An description of the physical quantity of the material described</p></li>
<li class='list-group-item level2'><strong>description</strong> - <i class='text-success'>text</i><p class='longDescriptionL2'>A word, phrase, or group of characters representing a distinct unit of information that forms part of an area of formal description</p></li>
<li class='list-group-item level2'><strong>datePreciseYear</strong> - <i class='text-success'>int(4)</i><p class='longDescriptionL2'>Precise year of the object's content creation</p></li>
<li class='list-group-item level2'><strong>datePreciseMonth</strong> - <i class='text-success'>int(2)</i><p class='longDescriptionL2'>Precise month of the object's content creation</p></li>
<li class='list-group-item level2'><strong>datePreciseDay</strong> - <i class='text-success'>int(2)</i><p class='longDescriptionL2'>Precise day of the object's content creation</p></li>
<li class='list-group-item level2'><strong>nativeDate</strong> - <i class='text-success'>varchar(255)</i><p class='longDescriptionL2'>The native date expressed in modern Arabic numerals</p></li>
<li class='list-group-item level2'><strong>beginDate</strong> - <i class='text-success'>int(2)</i><p class='longDescriptionL2'>The earliest year when an object was created regardless of whether or not it was in the same year</p></li>
<li class='list-group-item level2'><strong>endDate</strong> - <i class='text-success'>int(2)</i><p class='longDescriptionL2'>The latest year when an object was created regardless of whether or not it was in the same year</p></li>
<li class='list-group-item level2'><strong>support</strong> - <i class='text-success'>varchar(255)</i><p class='longDescriptionL2'>The material used to receive the text that makes up an object. Possible values: Parchment, Paper, Clay, Fabric, Metal, Papyrus, Stone, Wax, Wood, Other</p></li>
<li class='list-group-item level2'><strong>supportDimensionsWidth</strong> - <i class='text-success'>float</i><p class='longDescriptionL2'>The width of the support measured in centimeters</p></li>
<li class='list-group-item level2'><strong>supportDimensionsHeight</strong> - <i class='text-success'>float</i><p class='longDescriptionL2'>The height of the support measured in centimeters</p></li>
<li class='list-group-item level2'><strong>medium</strong> - <i class='text-success'>varchar(255)</i><p class='longDescriptionL2'>The material used to affix text to the support that makes the object</p></li>
<li class='list-group-item level2'><strong>pageLayout</strong> - <i class='text-success'>varchar(255)</i><p class='longDescriptionL2'>The design in the arrangement of visual elements on a page</p></li>
<li class='list-group-item level2'><strong>centuries</strong> - <i class='text-success'>int(11)</i><p class='longDescriptionL2'>The century or centuries when an object was written or printed</p></li>
<li class='list-group-item level2'><strong>centuryUncertain</strong> - <i class='text-success'>tinyint(1)</i><p class='longDescriptionL2'>Whether century or centuries are provisional. Possible values: 0 (false), 1 (true)</p></li>
<li class='list-group-item level2'><strong>spanOfFolios</strong> - <i class='text-success'>varchar(255)</i><p class='longDescriptionL2'>The actual location of a part in an object expressed in folios or pages</p></li>
<li class='list-group-item level2'><strong>notes</strong> - <i class='text-success'>text</i><p class='longDescriptionL2'>General notes about the object as a whole</p></li>
<li class='list-group-item level2'><strong>bibliography</strong> - <i class='text-success'>text</i><p class='longDescriptionL2'>Published information about the item</p></li>
<li class='list-group-item level2'><strong>script</strong> - <i class='text-success'>varchar(255)</i><p class='longDescriptionL2'>A style of employing glyphs when writing by hand</p></li>
<li class='list-group-item level2'><strong>writingSystem</strong> - <i class='text-success'>varchar(255)</i><p class='longDescriptionL2'>The set of glyphs used to represent a given human language in written form</p></li>
	</ul>
	  </div>
	</div>
	
	<p>&nbsp;</p>
<button class="btn reading-room btn-sm" type="button" onclick="goBack()">
				<span aria-hidden="true" class="glyphicon glyphicon-arrow-left"></span>
				Go Back
</button>
<p>&nbsp;</p>
<script>
function goBack() {
	window.open( document.referrer,"_self");
}

</script>
</div>