<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/css/data.css?version=${applicationVersion}"/>

<style type="text/css">
	.main-content {
		padding: 140px 40px 40px 40px;
	}
</style>

<h2><span class="redtext italicstext">v</span>HMML Data Portal Help </h2>
<br />					
	<h3 id="FULL" class="rrHelp jumptarget-breadcrumbs">Full vHMML datasets</h3>

	<p>The full vHMML Reading Room dataset available on the <a href="${pageContext.request.contextPath}/dataPortal/dataset">Download Datasets page</a> represents the latest version of all active records in vHMML as uploaded each night at 12:01 AM CST (6:01 AM GMT). Users can download the full dataset (all records, all metadata fields) in JSON format only. The metadata schema and definitions of each field in the downloaded file can be found on the <a href="${pageContext.request.contextPath}/dataPortal/schema">Data Portal Schema page</a>.</p>

	<p>vHMML Data Portal also allows users to download a selection of the major fields of all active records in vHMML Reading Room in either JSON or CSV format. This download option includes the following fields: Country, City, Repository, Shelfmark, HMML Project Number, and PURL (permanent URL linking to the record).</p>

	<h3 id="CURATED" class="rrHelp jumptarget-breadcrumbs">Curated datasets</h3>
	<p>vHMML Data Portal allows users to search the records in vHMML Reading Room to create a curated dataset of records selected by the users. Results are displayed in a table showing the Country, City, Repository, Shelfmark, HMML Project Number, and PURL.</p>

	<p>The curated dataset can be downloaded in two formats: a JSON file that contains the full metadata of all selected records, or a JSON file with the limited metadata of Country, City, Repository, Shelfmark, HMML Project Number, and PURL as found in the displayed table.</p>

	<p>Due to search engine and dataset limitations, vHMML Data Portal search cannot serve up more than 10,000 results for any query. If your curated dataset exceeds 10,000 records you will need to narrow your search results prior to exporting a particular dataset. You can then created other curated datasets to export all the metadata you need.</p>

	<p>Users interested in converting JSON files into CSV files or other formats can explore the <a target="_blank" href="https://www.vhmmldh.org/">data tools and some sample projects</a>.</p>

	<h3 id="SEARCHING" class="rrHelp jumptarget-breadcrumbs">Searching vHMML Data Portal</h3>
	<p>vHMML Data Portal uses the same search engine and dataset as vHMML Reading Room. A complete introduction and guide to the search engine can be found on the <a href="${pageContext.request.contextPath}/readingRoom/help">vHMML Reading Room help page</a>.</p>

<br />
<button class="btn data btn-sm" type="button" onclick="goBack()">
	<span aria-hidden="true" class="glyphicon glyphicon-arrow-left"></span>
	Go Back
</button>

<script>
	function goBack() {
		window.open( document.referrer,"_self");
	}
</script>