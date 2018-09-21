<div class="container">

	<h1>Download Complete vHMML Reading Room Datasets</h1>
	<p>The downloadable Reading Room datasets are updated daily, include all active records, use the <a href="${pageContext.request.contextPath}/dataPortal/schema">vHMML Schema</a>, and are line-delimited.</p>
	<h3>Download Options</h3>
	<table class="table table-striped table-hover">
  <thead>
    <tr>
      <th scope="col">Description</th>
      <th scope="col">Size</th>
      <th scope="col">Last Updated</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td><a href="${pageContext.request.contextPath}${fullDataJsonFile.fileLocation}">All vHMML Reading Room records in JSON format</a> <span class="small">(Note: this is ALL data for ALL objects in vHMML Reading Room)</span></td>
      <td>${fullDataJsonFile.formattedFilesize}</td>
      <td>${fullDataJsonFile.lastModified}</td>
    </tr>
    <tr>
      <td><a href="${pageContext.request.contextPath}${listingDataJsonFile.fileLocation}">All vHMML Reading Room records in JSON format with limited fields</a> <span class="small">(Country, City, Repository, Shelf Mark, HMML Project Number, and PURL)</span></td>
      <td>${listingDataJsonFile.formattedFilesize}</td>
      <td>${listingDataJsonFile.lastModified}</td>
    </tr>
    <tr>
      <td><a href="${pageContext.request.contextPath}${listingDataCsvFile.fileLocation}">All vHMML Reading Room records as a CSV file with limited fields</a> <span class="small">(Country, City, Repository, Shelf Mark, HMML Project Number, and PURL)</span></td>
      <td>${listingDataCsvFile.formattedFilesize}</td>
      <td>${listingDataCsvFile.lastModified}</td>
    </tr>
  </tbody>
</table>

	<h3>Licence</h3>
<p>The manuscript metadata in vHMML Reading Room is available for reuse under a Creative Commons 4.0 License: <a href="https://creativecommons.org/licenses/by/4.0/" target="_blank">Creative Commons Attribution 4.0 International License (CC BY 4.0)</a>.</p>

<p>&nbsp;</p>
<button class="btn reading-room btn-sm" type="button" onclick="goBack()">
				<span aria-hidden="true" class="glyphicon glyphicon-arrow-left"></span>
				Go Back
</button>

	</div>
	
	<script>
function goBack() {
	window.open( document.referrer,"_self");
}
</script>