var pagingControl = null;
var savedSearchTerms = {};
var confirmDialog = new Dialog();
var amountOfRecords = 0;
var maxRecordsForFullDataDownload = $('#maxRecordsForFullDataDownload').attr('data-value');
var maxRecordsForListingDataDownload = $('#maxRecordsForListingDataDownload').attr('data-value');

var noSearchResultsTemplate = Handlebars.compile($('#no-search-results-data-portal-template').html());
var searchResultsTemplate = Handlebars.compile($('#search-results-template').html());
var resultMaximumExceededDataPortal = Handlebars.compile($('#result-maximum-exceeded-template').html());

$(function() {
	
	var $body = $('body');
	
	init($body);
	
});

/**
 * Initialize data portal functionalities.
 * @returns
 */
var init = function($body) {
	initDataPortalSearchSelectLists();
	initDateSlider(null, null);
	
	pagingControl = PagingControl.get('dataPortalTable');
	
	$('#data-static-block-1').on('click', function() {
		showSearchOptions();
	});
	
	// fire a search when the user hits enter on a textarea
	$('.dataSearchForm textarea, .dataSearchForm input').on('keypress', function(e) {
		if(e.which === 13) {				
			newDataSearch();
			return false;
		}
	});
	
	// Handle the click event for the export of all data
	$('button.dataSearchButton').click(function(event) {
		event.preventDefault();
		newDataSearch();
	});
	
	// Handle the click event for the export of all data for the resultset.
	$('body').on('click', '#dataExportFullButton', function() {
		if (!$(this).hasClass('disabled')) {
			var message = ''
				
			if (amountOfRecords > maxRecordsForFullDataDownload) {
				message += 'Due to system limitations, downloads are limited to a maximum of '
					+ maxRecordsForFullDataDownload
					+ ' rows. Need more? <a href="' + contextPath + '/dataPortal/dataset" target="_blank">Download our full dataset</a> which is created nightly.';
				confirmDialog.show({
					title: 'Full Search Data file size limit reached',
					message: message,
					closeButtonLabel: 'Close'
				});
			} else {
				message += 'Are you sure you want to export the full search data for these ' + amountOfRecords + ' record(s)? ' 
					+ 'vHMML data is provided as a point-in-time snapshot. You are free to share and adapt the data but must give attribution (<a href="https://creativecommons.org/licenses/by/4.0/">CC BY 4.0</a>). '
					+ 'Warning: large data sets may result in longer download times.';
				
				confirmDialog.show({
					title: 'Export Full Search Data For This Result Set?',
					message: message,
					buttons: {
						'Yes': function() {
							exportFullData();
							confirmDialog.hide();
						}
					}
				});
			}
		}
	});
	
	// Handle the click event for the export of the listing data for the resultset.
	$('body').on('click', '#dataExportTableButton', function() {
		
		if (!$(this).hasClass('disabled')) {
			var message = ''
				
			if (amountOfRecords > maxRecordsForListingDataDownload) {
				message += 'Due to system limitations, downloads are limited to a maximum of ' + maxRecordsForListingDataDownload + ' rows using the Data Portal. '
					+ 'Need more? <a href="' + contextPath + '/dataPortal/dataset" target="_blank">Download our full dataset</a> which is created nightly.';
				confirmDialog.show({
					title: 'Table Search Data file size limit reached',
					message: message,
					closeButtonLabel: 'Close'
				});
			} else {
				message += 'Are you sure you want to export the table search data for these ' + amountOfRecords + ' record(s)? ' 
				+ 'vHMML data is provided as a point-in-time snapshot. You are free to share and adapt the data but must give attribution (<a href="https://creativecommons.org/licenses/by/4.0/">CC BY 4.0</a>). '
				+ 'Warning: large data sets may result in longer download times.';
				confirmDialog.show({
					title: 'Export Table Search Data?',
					message: message,
					buttons: {
						'Yes': function() {
							exportListingData();
							confirmDialog.hide();
						}
					}
				});
			}
			
		}
	});
};

var exportFullData = function() {
	var params = $.param(savedSearchTerms);
	
	window.location = contextPath + '/dataPortal/export/full?' + params;
}

var exportListingData = function() {
	var params = $.param(savedSearchTerms);
	
	window.location = contextPath + '/dataPortal/export/listing?' + params;
}

/**
 * Method for performing a new data search.
 */
var newDataSearch = function() {
	pagingControl.setPage(0);
	pagingControl.setSort();		
	dataSearch();
}

/**
 * Method for performing a data search when the columns are sorted.
 */
var dataSearchSort = function(sortBy) {
	pagingControl.setSort(sortBy);
	dataSearch();
}

/**
 * Method for making the search request to the back-end.
 */
var dataSearch = function() {
	isSearchOrDescriptionPanel = true;
	hideSearchOptions();
	
	var $resultsDisplay = $('#searchResults');		
	var pagingData = pagingControl.getPagingData();
	// searchTerms can be passed in for things like saved searches, linked on meta data panel, etc.
	searchTerms = getSearchTerms();
	savedSearchTerms = searchTerms;
	var data = $.extend({}, pagingData, {searchTerms: searchTerms});
	var $searchForm = $('#search-container form');
	
	$.ajax({
		url : contextPath + $searchForm.attr('data-search-url'),
		data : data,
		method: 'GET',
		dataType: 'json',
		contentType:'application/json',
		beforeSend : function() {
			showSpinner({element: $resultsDisplay});
		},
		error : function(response) {
			pagingControl.hide();
			var html = '';
			$resultsDisplay.html('');
			$('#dataPortalTable').hide();
			
			//Check for the flag if the max results window was exceeded or not.
			// If it is then display the appropriate message for the user.
			if (response.responseJSON && response.responseJSON.exceedsMaxResultsWindow) {
				$('#searchResults').append(resultMaximumExceededDataPortal());
			} else {
				html += '<h2>Cannot run search at this time</h2>';
				html += '<br />Unfortunately it appears that our Search server is currently not working.';
				html += '<br />Please try your search again later. We apologize for any inconvenience.';
				$('#searchResults').append(html);
			}
			
			$('#dataExportFullButton').addClass('disabled');
			$('#dataExportTableButton').addClass('disabled');
		},
		success : function(searchResult) {
			window.scrollTo(0, 0);
			$resultsDisplay.html('');
			
			renderDataSearchResults(searchResult);
		}
	});
}

/**
 * Method will render the search results.
 */
var renderDataSearchResults = function(searchResult) {
	var html = getTableHeaderHtml();
	
	pagingControl.updatePaging(searchResult);
	
	if(searchResult && searchResult.searchHits && searchResult.searchHits.length) {
		amountOfRecords = searchResult.totalElements;
		html += searchResultsTemplate(searchResult);
							
		$('#dataPortalTable').html(html);
		$('#dataPortalTable').css('text-align', 'left').show();
		// Turn on the export buttons.
		$('#dataExportFullButton').removeClass('disabled');
		$('#dataExportTableButton').removeClass('disabled');
	} else {
		$('#dataPortalTable').hide();
		$('#searchResults').append(noSearchResultsTemplate());
		$('#dataExportFullButton').addClass('disabled');
		$('#dataExportTableButton').addClass('disabled');
	}
}

/**
 * Method will render the search result table's headers.
 */
var getTableHeaderHtml = function () {
	var pagingData = pagingControl.getPagingData();
	var sortIconName = pagingData.direction === 'DESC' ? 'down' : 'up';
	var sortIcon = '&nbsp;&nbsp;<span class="glyphicon glyphicon-chevron-' + sortIconName + '"/>';
	
	var html = '<tr>' +
			'<th class="col-md-2"><a href="javascript:dataSearchSort(\'country\');">Country</a></th>' +
			'<th class="col-md-2"><a href="javascript:dataSearchSort(\'city\');">City</a></th>' +
			'<th class="col-md-3"><a href="javascript:dataSearchSort(\'repository\');">Repository</a></th>' +
			'<th class="col-md-2"><a href="javascript:dataSearchSort(\'shelfmark\');">Shelf Mark</a></th>' + 
			'<th class="col-md-3"><a href="javascript:dataSearchSort(\'hmmlProjectNumber\');">HMML Project Number</a></th>';
				
		html += '</tr>';
		
	return html;
}
