/*****
 * Search-common.js is the JS file that will hold business logic for handling searches across the entire
 * vHMML app.
 */

var savedSearch;
var pagingControl = null;
var miradorViews = {};
var miradorMenuItemTemplate = Handlebars.compile($('#mirador-menu-item-template').html());
var resultMaximumExceeded = Handlebars.compile($('#result-maximum-exceeded-template').html());
var isSearchOrDescriptionPanel = false;

$(function() {
	
	var $body = $('body');
	
	$body.on('click', 'button.btn-backToResults', function() {
		search();
		$(this).hide();
	});
	
	$body.on('click', '.viewImagesLink', function() {
		viewImages($(this).attr('data-object-id'), $(this).attr('data-access'));
	});
	
	$body.on('click', '.viewDescription', function() {
		getMetaData($(this).attr('data-object-id'), viewDescription);
	});
	
	$body.on('click', 'a.toggleHiddenMatches', function() {
		var $link = $(this);
		var $toggleHits = $(this).parents('div.row').prevAll('div.toggleHit');
		
		$toggleHits.slideToggle({
			complete: function() {
				if($toggleHits.is(':hidden')) {
					$link.text('Show additional matches...');		
				} else {
					$link.text('Hide additional matches');
				}		
			}
		});
	});
	
	// Handle the events for the keyword search field.
	$body.on('focus click', 'input.keyword', function() {
		showSearchOptions();
	});
	
	// Handle events for the close icon on the search options panel
	$body.on('click', '.search-options-close-button', function() {
		hideSearchOptions();
	});
	
	// fire a search when the user hits enter on a textarea
	$('div#search-container textarea, div#search-container input, div#search-container textarea').on('keypress', function(e) {
		if(e.which === 13) {				
			newSearch();
			return false;
		}
	});
	
	$('button.clearSearchOptionsButton').click(function() {
		clearSearch();						
	});	
	
	$('#searchControl a[data-toggle="collapse"]').click(function() {
		clearSearch();
	});
	
	$body.on('transitionend webkitTransitionEnd oTransitionEnd MSTransitionEnd', 'div.slideOutMenu', function() {		
		resizeMirador();	
	});
	
	$(document).on('keyup', function(e) {
		if (e.which === 27 && $('#search-options-panel').is(':visible')) {
			hideSearchOptions();
		}
	})

});

function hideSearchOptions() {
	$('.search-options-close-button').hide();
	$('#search-options-panel').hide();
	
	if (!isSearchOrDescriptionPanel) {
		showHeader($('.block-header-container'));
	} else {
		hideHeader($('.block-header-container'));
	}
}

function showSearchOptions() {
	$('.search-options-close-button').show();
	$('#search-options-panel').show();
	hideHeader($('.block-header-container'));
}

function hideHeader($headerContainer) {
	$headerContainer.css({'height':'0px', 'transition':'height 0.75s'});
}

function showHeader($headerContainer) {
	$headerContainer.css({'height': '200px','transition':'height 0.75s'});
}

function getMiradorViewId(view) {
	var $slot = $(view.element).parents('div.layout-slot');
	return $slot.attr('data-layout-slot-id');
}

function newSearch() {
	pagingControl.setPage(0);
	pagingControl.setSort();		
	search();
}

function runSavedSearch() {
	if(savedSearch) {
		if(savedSearch.pagingData) {
			pagingControl.setPagingDataFromSpringPageable(savedSearch.pagingData);
		}		
		search(savedSearch.searchTerms);
		var $searchForm = $('form.' + savedSearch.searchType);
		
		var searchTermCount = 1;
		for(searchTerm in savedSearch.searchTerms) {
			var $input = $searchForm.find('.' + searchTerm);
			var textValue = savedSearch.searchTerms[searchTerm];
			
			if($input.is('select')) {
				var $option = $input.find('option').filter(function () {
					return $(this).text().trim() == textValue; 
				});
				
				var value = $option.attr('value') ? $option.attr('value') : textValue;
				$input.val(value);				
				refreshBootstrapSelect($input);
				
				var lastSelect = searchTermCount == Object.keys(savedSearch.searchTerms).length;
				var hasDependentSelect = $('select[data-depends-on="' + searchTerm + '"]').length;
				if(lastSelect && hasDependentSelect) {
					$input.change();
				}
			} else {
				$input.val(textValue);	
			}
			
			searchTermCount++;
		}
	}
}

function pagingSearch() {
	search(null, true);
}

function search(searchTerms, isPagingSearch) {
	isSearchOrDescriptionPanel = true;
	hideSearchOptions();
	
	var $resultsDisplay = $('#searchResults');		
	var pagingData = pagingControl.getPagingData();
	// searchTerms can be passed in for things like saved searches, linked on meta data panel, etc.
	searchTerms = searchTerms ? searchTerms : getSearchTerms();
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
			
			//Check for the flag if the max results window was exceeded or not.
			// If it is then display the appropriate message for the user.
			if (response.responseJSON != 'undefined' 
					&& response.responseJSON.exceedsMaxResultsWindow) {
				html += resultMaximumExceeded();
			} else {
				html += '<h2>Cannot run search at this time</h2>';
				html += '<br />Unfortunately it appears that our Search server is currently not working.';
				html += '<br />Please try your search again later. We apologize for any inconvenience.';
			}
			
			$resultsDisplay.html(html);
		},
		success : function(searchResult) {
			
			window.scrollTo(0, 0);
			$resultsDisplay.html('');
			$('#viewer, #thumbnail-viewer, #metaDataPanel, div.searchToggleBar.metaDataPanel, .btn-backToResults').hide();
			$('#searchResultsWrapper').show();
			
			if (searchResult.searchHits.length) {
				pagingControl.updatePaging(searchResult);
				var html = '';
				var hits = searchResult.searchHits;

				for (var i = 0; i < hits.length; i++) {
					html += getSearchHitHtml(hits[i], searchResult.fieldDisplayNames);
				}					

				$resultsDisplay.append(html);
			} else {
				pagingControl.updatePaging(searchResult);
				$resultsDisplay.append(noSearchResultsTemplate());
			}			
		}
	});
}

function clearSearch() {
	$('#search-container form').each(function() {
		var $form = $(this);
		$form.find('input, textarea, select').val('');
		$form.find('input.formatFilter').prop('checked', true);
		$form.find('input.downloadable, input.pendingOnly, input.manifest, input.publicManifest').prop('checked', false);				
	});
	
	initDateSlider();
	$('#search-container select.bootstrap-select').selectpicker('val', '');
	
	var $countrySelect = $('#search-container select.country');
	
	if($countrySelect.length) {
		showAllCitiesAndRepos($('#search-container select.country'));	
	}		
}

function fieldLinkSearch(searchTerms) {
	var objectType = $('form.search').attr('data-object-type');
	var searchType = objectType === 'FOLIO' ? 'basic' : 'advanced';
	pagingControl.setPage(0);
	pagingControl.setSort();		
	clearSearch();	
	savedSearch = {searchType: searchType, searchTerms: searchTerms};
	runSavedSearch(savedSearch);		
}

function initDateSlider(beginDate, endDate) {
	var currentYear = new Date().getFullYear();
	beginDate = beginDate ? beginDate : 0;
	endDate = endDate ? endDate : currentYear;
	
	$('span.minDate').text(beginDate + (beginDate < 0 ? ' BCE' : ' CE'));		
	$('span.maxDate').text(endDate + (endDate < 0 ? ' BCE' : ' CE'));		

	var $slider = $('input.slider');
	
	$slider.bootstrapSlider({
		min: 0,
		max: currentYear,
		step: 25,
		value: [beginDate, endDate],
		tooltip: 'hide'
	})
	
	$slider.on('change',
		function(e) {
			var values = e.value.newValue;
			var min = values[0];
			var max = values[1];				
			var $form = $(this).parents('form');			
			
			if (min > max) {
				min = values[1];
				max = values[0];
			}

			// value of slider can be larger than the actual max value if step > 1 				
			if(max > currentYear) {
				max = currentYear;
			}
			
			if(min > currentYear) {
				min = currentYear;
			}
			
			$form.find('.minDate').text(Math.abs(min) + (min < 0 ? ' BCE' : ' CE'));
			$form.find('.maxDate').text(Math.abs(max) + (max < 0 ? ' BCE' : ' CE'));
			
		}
	);
	
	$slider.bootstrapSlider('setValue', [beginDate, endDate]);

	$('div.slider-horizontal').css('width', '100%');
}

function isMenuOpen($menu) {
	return $menu.width() !== 0 && $menu.is(':visible');
}

function getMultiSelectVal($form, fieldName) {		
	var fieldValue = $form.find(fieldName).val();
	// we join on this weird token so we can easily split on it server side because the search terms might have commas, semi-colon, etc.
	return fieldValue ? fieldValue.join('</search-term>') : '';
}

function viewImages(objectId, accessRestriction) {
	if(accessRestriction == 'UNREGISTERED' || (isAuthenticated && (accessRestriction == 'REGISTERED' || accessRestriction == 'REGISTERED_ONLY'))) {
		getMetaData(objectId, refreshImageViewer);			
	} else if((accessRestriction == 'REGISTERED' || accessRestriction == 'REGISTERED_ONLY') && !isAuthenticated) {
		goToLogin();
	} 	
}

function getMetaData(objectId, showImageFunction) {
	isSearchOrDescriptionPanel = true;
	hideSearchOptions();
	
	var objectType = $('#search-container form').attr('data-object-type');
	var url = objectType == 'FOLIO' ? '/folio/object/' : '/readingRoom/object/';
	
	$.ajax({
		url : contextPath + url + objectId,
		success : function(object) {
			// page-specific versions of refreshMetaData are in reading-room & folio search js files
			refreshMetaData(object);
			showImageFunction(object);
			$('button.btn-backToResults').show();
		} 
	});
}

function viewDescription(object) {
	showImageThumbnail(object);
	slidePanel($('#metaDataPanel'));
}

/**
 * Slide the panels for the metadata and search menus.
 * @param $menu
 * @returns
 */
function slidePanel($menu) {
	var menuId = '#' + $menu.id;
	// Check if the menu is currently opened.
	var closing = isMenuOpen($menu);

	var newX = '0px';
	
	// Get the menu width.
	var menuWidth = $menu.attr('data-width');
	
	var $toggleBar = $('div.searchToggleBar');
	
	// If the panel is closing then determine the new X position for that panel or else check if the viewport width is 980px or less, then keep only
	// one panel open.
	if (closing) {
		newX = menuWidth;
	} else if (viewportWidth <= 980) {	
		var $otherMenu = $('div.slideOutMenu').not($menu);
		// if we're opening a menu and the other menu is open and the viewport is small, 
		// then close the other menu so there's room in the middle to view images
		if(isMenuOpen($otherMenu)) {
			slidePanel($otherMenu);	
		}			
	}
	
	// Check if we're closing or opening the panel, then set the width accordingly.
	if(closing) {
		$menu.css({'width':'0px','left':newX});
		$toggleBar.show();
	} else {
		$menu.css({'width':menuWidth,'left':'auto'}).show();
		$toggleBar.hide();
	}
	
}

/**
 * Method will call the resize event once the CSS transition on the panel has completed.
 * @param $menu
 * @returns
 */
function resizeMirador() {
	if (Mirador.Viewer && Mirador.Workspace) {
		$(document).trigger('resizeVhmmlMirador');
	}
}

function refreshImageViewer(object) {
	var objectId = object.id;
	var port = serverPort == '80' ? '' : ':' + serverPort;
	var objectType = $('#search-container form').attr('data-object-type');
	var manifestUrl = scheme + '://' + serverName + port + contextPath + '/image/manifest/' + objectId + '?objectType=' + objectType;
	$('#searchResultsWrapper').hide();
	$('#thumbnail-viewer').hide();
	$('#viewer').html('').show();
	var $metaDataPanel = $('#metaDataPanel');
	
	// Open the vHMML metadata panel if it isn't opened already.
	if(!isMenuOpen($metaDataPanel)) {
		slidePanel($metaDataPanel);	
	}	
	
	Mirador({
		'id' : 'viewer', // The CSS ID selector for the containing element.
		'layout' : '1x1', // The number and arrangement of windows ('row'x'column')?
		'saveSession' : false,
		// This array holds the manifest URIs for the IIIF resources you want Mirador to make available to the user.
		// Each manifest object must have a manifest URI pointing to a valid IIIF manifest, and may also
		// provide a location to be displayed in the listing of available manifests.
		'data' : [{ 
			'manifestUri': manifestUrl
		}],
		'mainMenuSettings' : {
			'show' : false
		},        
		'windowObjects' : [{
			'loadedManifest' : manifestUrl
		}],
		'windowSettings': {
			'canvasControls': { 
				'annotations' : {
					// Disable the annotation layer and controls.
					'annotationLayer' : false,
		   	        'annotationCreation' : false
		   		},
		   		'imageManipulation' : {
		   			'controls': {
		   				'mirror' : true,
		   				"rotate" : false
		   			}
		   		}
			},
			'viewType' : 'ImageView',
			'availableViews': ['ThumbnailsView', 'ImageView', 'BookView'],
			'displayLayout' : true,	
			'sidePanel' : true,
			'layoutOptions' : {
				'newObject' : true,
			}
		},
		'canvasLink': {
			'showShareButtonsInfo': true
		},
		'buildPath': contextPath + '/static/mirador/'
	});
	
}

/**
 * Method will populate the search's select lists, see RR basic/advanced search.
 * @returns
 */
function initSearchSelectLists() {
	var optionsUrl = contextPath + '/options/';
	var ajaxCalls = [];

	var citiesJson;
	var repositoriesJson;
	//we get all select list options via ajax because some of the lists are very large, so if we render
	// the options html as part of the intial page request it makes the page load very slow. this
	// way the options are grabbed and rendered in the background
	var optionsCache = {};
	
	$('#search-container select.bootstrap-select').each(function(index) {
		var $selectList = $(this);
		var listName = $selectList.attr('name');
		$selectList.selectpicker();
		
		if(optionsCache[listName]) {
			appendOptions($selectList, optionsCache[listName]);
			$selectList.selectpicker('refresh');
		} else {
			ajaxCalls.push(
				$.ajax({
					url: optionsUrl + listName,
					success: function(options) {						
						appendOptions($selectList, options);
						$selectList.selectpicker('refresh');
						optionsCache[listName] = options;
						// need to capture complete list of cities and repositories so we can reset dependent lists when country/city is deselected
						if(listName == 'city') {
							citiesJson = options;
						} else if(listName == 'repository') {
							repositoriesJson = options;
						}
					}
				})
			);
		}					
	});
	
	return ajaxCalls;		
}

/**
 * Method will append the options to the appropriate select element.  This method is called specifically by initSearchSelectLists().
 * @param $selectList
 * @param options
 * @returns
 */
function appendOptions($selectList, options) {
	var optionsHtml = '';
	var valueSelected = false;
	
	for(var i = 0; i < options.length; i++) {
		var option = options[i];
		var selected = '';
		
		if(option.selected) {
			valueSelected = true;
			selected = 'selected="selected"';
		}
		
		optionsHtml += '<option value="' + option.value + '" ' + selected + ' >' + option.name + '</option>';
	}
	
	$selectList.append(optionsHtml);
	
	if(valueSelected){
		$selectList.change();
	}
}

function getSearchTerms() {
	var $searchForm = $('#search-container form');
	var currentYear = new Date().getFullYear();		
	var dateRange = $($searchForm.find('input.slider')[0]).val();		
	var dateRangeArray = dateRange.split(',');
	var beginDate = dateRange.length > 0 ? +dateRangeArray[0] - 5 : '';
	var endDate = dateRange.length > 0 ? +dateRangeArray[1] + 5 : '';
	
	if(beginDate <= 1 && endDate >= currentYear) {
		beginDate = '';
		endDate = '';	
	}
	
	var $country = $searchForm.find('select.country');
	var $city = $searchForm.find('select.city');
	var $repository = $searchForm.find('select.repository');
	
	return {			
		keyword: $searchForm.find('input.keyword').val(),
		title: $searchForm.find('textarea.title').val(),
		author: $searchForm.find('textarea.author').val(),	
		language: getMultiSelectVal($searchForm, 'select.language'),
		beginDate: beginDate,
		endDate: endDate,
		downloadable: $searchForm.find('input.downloadable').is(':checked') ? true : '', // only want to filter on downloadable if it's checked, otherwise bring back both downloadable and non
		active: $searchForm.find('input.pendingOnly').is(':checked') ? false : '',
		publicManifest: $searchForm.find('input.publicManifest').is(':checked') ? true : '', // if the box is checked, then send 'true', otherwise bring back all results with/without public manifest
		format: getFormatFilters($searchForm),
		country: $country.val() ? $country.children('option:selected').text() : '',
		city: $city.val() ? $city.children('option:selected').text() : '',
		repository: $repository.val() ? $repository.children('option:selected').text() : '',
		hmmlProjectNumber: $searchForm.find('input.hmmlProjectNumber').val(),
		shelfmark: $searchForm.find('input.shelfmark').val(),
		placeOfOrigin: $searchForm.find('input.placeOfOrigin').val(),
		subject: $searchForm.find('input.subject').val(),
		incipit: $searchForm.find('textarea.incipit').val(),
		objectType: $searchForm.find('select.objectType').val(),
		genres: getMultiSelectVal($searchForm, 'select.genres'),
		subject: $searchForm.find('textarea.subject').val(),
		features: getMultiSelectVal($searchForm, 'select.features'),
		script: getMultiSelectVal($searchForm, 'select.script'),
		writingSystem: getMultiSelectVal($searchForm, 'select.writingSystem'),
		archivalCollectionFond: $searchForm.find('input.archivalCollectionFond').val(),
		archivalSeries: $searchForm.find('input.archivalSeries').val(),
		archivalSubSeries: $searchForm.find('input.archivalSubSeries').val()
	};
}

function getFormatFilters($searchForm) {
	var filters = [];
	var $filters = $searchForm.find('input.formatFilter');
	
	$filters.each(function() {
		var $filter = $(this);
		
		if($filter.is(':checked')) {
			filters.push($filter.attr('data-value'));
		}
	});
	
	// if all of the formats are checked, just return empty string because we're not filtering on format 
	return filters.length === $filters.length ? '' : filters.join();		
}