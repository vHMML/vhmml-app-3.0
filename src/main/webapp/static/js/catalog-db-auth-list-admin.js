var messageDialog = new Dialog();
var confirmDialog = new Dialog();
var pagingControl;
var initialSearchResult;
var searchResultTemplate;
var editObjectTemplate;
var titleSearchResultTemplate;
var editTitleTemplate;

$(function() {
	
	searchResultTemplate = Handlebars.compile($('#search-result-template').html());
	titleSearchResultTemplate = Handlebars.compile($('#title-search-result-template').html());
	editObjectTemplate = Handlebars.compile($('#edit-object-template').html());
	editTitleTemplate = Handlebars.compile($('#edit-title-template').html());
	
	Handlebars.registerHelper('escape', function(variable) {
		 return variable.replace(/(['"])/g, '\\$1');
	});
	
	pagingControl = PagingControl.get('authListTable');
	
	if(initialSearchResult) {
		renderSearchResults(initialSearchResult);
	}
	
	$('#searchButton').click(function(e) {
		newSearch();
		e.preventDefault();
	});
	
	$('body').on('click', '#exportAuthorityListButton', function() {
		
		var authListTypeData = $(this).attr('data-authListType');
				
		confirmDialog.show({
			title: 'Export ' + authListTypeData.toUpperCase() + ' Authority List?',
			message: 'Are you sure you want to export the ' + authListTypeData.toUpperCase() + ' authority list? <br><br> Instructions for opening the exported file are in the Cataloger Resources, Opening an exported CSV file',
			buttons: {
				'Yes': function() {
					confirmDialog.hide();
					exportAuthorityList(authListTypeData);
				}
			}
		});
		
	});
});

/**
 * Method will fetch a CSV file for the authority list selected.
 * @param authorityListType
 * @returns
 */
function exportAuthorityList(authorityListType = "") {
	window.location = contextPath + '/catalogDatabase/authorityList/export/' + authorityListType.toUpperCase();
}

function sort(sortBy) {
	$('.sortedIndicator').remove();
	
	pagingControl.setSort(sortBy);
	authListSearch();
}

function newSearch() {
	pagingControl.setPage(0);
	pagingControl.setSort(null);
	authListSearch();
}

function authListSearch() {	
	
	var pagingData = pagingControl.getPagingData();	
	var authListType = $('#authListType').val();
	var searchString = ($('#searchString').val()).trim();	
	var url = '/catalogDatabase/authorityList/search';
	var defaultSort = authListType === 'TITLE' ? 'title' : 'name';	
	pagingData.sort = pagingData.sort ? pagingData.sort : defaultSort;
	
	var searchParams = {
		searchString: searchString,
		authListType: authListType
	};
	
	// titles aren't really part of an authority list, they're just an attribute of a reading_room_content object, but we need to be able to edit them with the auth lists because that's how the users picture them
	if(authListType === 'TITLE') {
		url = '/catalogDatabase/authorityList/search/title';
		searchParams = {searchString: searchString};		
	}
	
	var data = $.extend({}, pagingData, searchParams);
	
	$.ajax({
		url: contextPath + url,
		data: data,
		beforeSend: function() {
			showSpinner({element: $('#authListTable tbody')});
		},
		success: function(searchResult) {
			renderSearchResults(searchResult);
		}
	});
}

function renderSearchResults(searchResult) {
	pagingControl.updatePaging(searchResult);
	var pagingData = pagingControl.getPagingData();
	var $tableHeader = $('#authListTable thead');
	var titleList = searchResult && searchResult.titles;
	var resultList = titleList ? searchResult.titles : searchResult.authorityListObjects;
	var template = titleList ? titleSearchResultTemplate : searchResultTemplate;
	
	if(pagingData.sortBy) {
		var $sortedColumnLink = $tableHeader.find('th.' + pagingData.sortBy + ' a');
		var $sortIcon = $sortedColumnLink.find('span.glyphicon');
		var sortIconName = pagingData.direction === 'DESC' ? 'down' : 'up';
		var sortIconClass = 'glyphicon glyphicon-chevron-' + sortIconName;
		
		if($sortIcon.length) {
			$sortIcon.attr('class', sortIconClass);
		} else {
			var sortIcon = '<span class="sortedIndicator ' + sortIconClass+ '"/>';		
			var linkText = $sortedColumnLink.html();
			$sortedColumnLink.html(linkText + sortIcon);
		}		
	}	
	
	if(titleList) {
		$tableHeader.find('th').not('.titlesOnly').hide();
		$tableHeader.find('th.titlesOnly').show();		
	} else {
		$tableHeader.find('th').not('.titlesOnly').show();
		$tableHeader.find('th.titlesOnly').hide();
	}
	
	if(resultList && resultList.length) {
		var html = '';		
		
		for(var i = 0; i < resultList.length; i++) {			
			html += template(resultList[i]);			
		}
					
		$('#noResultsMessage').hide();
		$('#authListTable tbody').html(html);
		
		$('#authListTable').css('text-align', 'left').show();
	} else {
		$('#authListTable').hide();
		$('#noResultsMessage').show();
	}
};

function clearSearch() {
	document.getElementById('authListSearchForm').reset()
}

function getObjectReferences(id, name = '') {
	var $authListType = $('#authListType');
	
	$.ajax({
		url: contextPath + '/catalogDatabase/authorityList/references/' + $authListType.val() + '/' + id,
		method: 'GET',
		complete: function(response) {
			messageDialog.show({
				title: name,
				message: response.responseText,
				closeButtonLabel: 'OK'
			});
		}
	});
}

function deleteObject(id) {
	var confirmDialog = new Dialog();
	var $authListType = $('#authListType');
	var authListTypeDisplayName = $authListType.attr('data-display-name');
	
	confirmDialog.show({
		title: 'Remove ' + authListTypeDisplayName + '?',
		message: 'Are you sure you want to remove this ' + authListTypeDisplayName.toLowerCase() + '?',
		closeButtonLabel: 'No',
		buttons: {
			'Yes': function() {					
				$.ajax({
					url: contextPath + '/catalogDatabase/authorityList/delete/' + $authListType.val() + '/' + id,
					method: 'DELETE',
					success: function(response) {
						$('#' + id).remove();
						confirmDialog.hide();
						Messages.removeAll();
						Messages.addMessage({message: response, severity: 'SUCCESS'});						
					},
					error: function(response) {
						messageDialog.show({
							title: 'Delete Failed',
							message: response.responseText,
							closeButtonLabel: 'OK'
						});
					}					
				});				
			}
		}
	});		
}

function editObject(id) {	
	$.ajax({
		url: contextPath + '/catalogDatabase/authorityList/edit/' + $('#authListType').val() + '/' + id,
		success: function(object) {
			showEditDialog(object);
		}
	});		
}

function showEditDialog(object) {
	var newObject = object ? false : true;
	
	var editDialog = new Dialog({
		title: (newObject ? 'Add ' : 'Edit ') + $('#authListType').attr('data-display-name'),
		body: editObjectTemplate(object),
		buttons: {
			'Save': function() {						
				$.ajax({
					url: contextPath + '/catalogDatabase/authorityList/save',
					method: 'POST',
					data: $('#editObjectForm').serialize(),
					complete: function(response) {
						var responseObject = JSON.parse(response.responseText);
						
						if(newObject) {
							newSearch();							
						} else {
							var updatedRow = searchResultTemplate(responseObject.object);
							$('#' + responseObject.object.id)[0].outerHTML = updatedRow;
						}
						
						Messages.removeAll();
						Messages.showResponseMessage(response);
						editDialog.hide();
					}
				});
			}
		},
		buttonsCssClass: 'catalog-database'
	});
	
	editDialog.show();
}

function editTitle(contentId, title) {
	
	var editDialog = new Dialog({
		title: 'Edit Content Title',
		body: editTitleTemplate({contentId: contentId, title: title}),
		buttons: {
			'Save': function() {
				var data = {'contentId': $('#editTitleForm #contentId').val(), 'title': $('#editTitleForm #title').val()};
				
				$.ajax({
					url: contextPath + '/catalogDatabase/authorityList/save/title',
					method: 'POST',
					data: data,
					complete: function(response) {
						editDialog.hide();
						showSaveTitleResponse(response);
					}
				});
			}
		},
		buttonsCssClass: 'catalog-database'
	});
	
	editDialog.show();
}

function deleteTitle(contentId) {
	var confirmDialog = new Dialog();	
	
	confirmDialog.show({
		title: 'Remove Title?',
		message: 'Are you sure you want to remove this title ?',
		closeButtonLabel: 'No',
		buttons: {
			'Yes': function() {
				var data = {'contentId': contentId, 'title': ''};
				
				$.ajax({
					url: contextPath + '/catalogDatabase/authorityList/save/title',
					data: data,
					method: 'POST',
					complete: function(response) {
						confirmDialog.hide();
						showSaveTitleResponse(response);						
					}					
				});				
			}
		}
	});		
}

function showSaveTitleResponse(response) {
	var responseObject = JSON.parse(response.responseText);
	var updatedRow = titleSearchResultTemplate(responseObject.object);
	$('#' + responseObject.object.contentId)[0].outerHTML = updatedRow;
	Messages.removeAll();
	Messages.showResponseMessage(response);	
}