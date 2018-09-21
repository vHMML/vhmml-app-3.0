<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/css/vhmml-search-page.css?version=${applicationVersion}"/>
<style type="text/css">
	.main-content {
		padding: 40px 40px 40px 40px;
	}
	
	h4.catalogerGuidelines {
		margin-bottom: 0.5em;
	}
</style>
<p>&nbsp;</p>
<div class="main-content">
<div class="row">
	<div class="col-lg-12">
	
		<h2>Opening an exported CSV file</h2>
		
		<h3>Problem:</h3>

		<p>Some character encoding may be lost when you open a CSV file in Excel. Currently Google Sheet, LibreOffice, and OpenOffice work fine for opening unicode CSV files.</p>
		<img class="img-responsive" src="${pageContext.request.contextPath}/static/img/excel_incorrect.PNG" alt="Incorrect Excel import" />
		
		<h3>Solution:</h3>

		<h4>How to import a .csv file that uses UTF-8 character encoding</h4>

		<ol>
			<li><p>Open Microsoft Excel 2007 and if needed open a blank workbook.</p></li>
			<li><p>Click on the Data menu bar option.</p></li>
			<li><p>Click on the From Text icon.</p>
			<img class="img-responsive" src="${pageContext.request.contextPath}/static/img/excel_menu.PNG" alt="Incorrect Excel import" /></li>
			<li><p>Navigate to the location of the file that you want to import.  Click on the filename and then click on the Import button.  The Text Import Wizard - Step 1 or 3 window will now appear on the screen.</p></li>
			<li><p>Choose the file type that best describes your data - Delimited or Fixed Width.</p></li>
			<li><p>Choose 65001: Unicode (UTF-8) from the drop-down list that appears next to File origin.</p>
			<img class="img-responsive" src="${pageContext.request.contextPath}/static/img/excel_unicode.PNG" alt="Incorrect Excel import" /></li>
			<li><p>Click on the Next button to display the Text Import Wizard - Step 2 or 3 window.</p></li>
			<li><p>Place a checkmark next to the delimiter that was used in the file you wish to import into Microsoft Excel 2007.  The Data preview window will show you how your data will appear based on the delimiter that you chose.</p>
			<img class="img-responsive" src="${pageContext.request.contextPath}/static/img/excel_delimiter.PNG" alt="Incorrect Excel import" /></li>
			<li><p>Click on the Next button to display the Text Import Wizard - Step 3 of 3.</p>
			<img class="img-responsive" src="${pageContext.request.contextPath}/static/img/excel_final.PNG" alt="Incorrect Excel import" /></li>
			<li><p>Choose the appropriate data format for each column of data that you want to import.  You also have the option to not import one or more columns of data if you want.</p></li>
			<li><p>Click on the Finish button to finish importing your data into Microsoft Excel 2007.</p></li>
			<li><p>You may see this window. This will allow you to import into the existing workbook or create a new one.</p>
			<img class="img-responsive" src="${pageContext.request.contextPath}/static/img/excel_import.PNG" alt="Incorrect Excel import" /></li>
			<li><p>Finally, you can see the CSV data with the correct encoding.</p>
			<img class="img-responsive" src="${pageContext.request.contextPath}/static/img/excel_final_display.PNG" alt="Incorrect Excel import" /></li>
		</ol>

		<p>&nbsp;</p>
		<button class="btn catalog-database btn-sm" type="button" onclick="goBack()">
			<span aria-hidden="true" class="glyphicon glyphicon-arrow-left"></span>
			Go Back
		</button>
		<br />

		<p>&nbsp;</p>
	</div>
			<script>
			function goBack() {
				window.open( document.referrer,"_self");
			}
		</script>
		<noscript>
			<p>&nbsp;Use the back button on your browser to return to the
				previous page</p>
		</noscript>
</div>
</div>
