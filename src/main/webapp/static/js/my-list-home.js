	var pagingControl = null;
	var initialSortBy;
	var selectedSaves = Array();
	var userSaves = Array();
	var selectAllStatus = false;
	var listOfMyListItems;
	
	if(initialSortBy) {
		pagingControl.setSort(initialSortBy);
	}
	
	$(function() {
		var $body = $('body');
		
		pagingControl = PagingControl.get('myListContents');
		
		// On page load, get the saves for the user's My List.
		initMyListSaves();
		
		// When the "select all items" box is checked, then
		// check all visible checkboxes.
		$body.on('change', '#myList-select-all', function() {
			selectAllStatus = $(this).prop('checked');
			
			// If the "select all" checkbox is selected, then also check all the individual checkboxes for items.
			// But if the "select all" checkbox is unselected, then reset the individual checkboxes for items.
			if (selectAllStatus) {
				$('.myList-single').prop('checked', true);
				selectedSaves = userSaves;
			} else {
				resetSelect();
			}
		});
		
		// When a checkbox is checked, add the object id of that save to
		// an array for further processing.
		$body.on('change', '.myList-single', function() {
			var checkedStatus = $(this).prop('checked');
			var objectId = parseFloat($(this).attr('data-object-id'));

			// If an item is selected, add that to our JS array of selected saves.
			if (checkedStatus) {
				selectedSaves.push(objectId);
			} else {
				// If the item is unselected, we want to make sure that the "select all" checkbox is set back to false for "checked"
				// and that the global variable, selectAllStatus, is set back to false.  Then also remove that item from our array of
				// selected saves.
				$('#myList-select-all').prop('checked',false);
				selectAllStatus = false;
				removeItem(selectedSaves, objectId);
			}
		});
		
		// Handle the delete button for each individual save.
		$body.on('click', '.myList-delete-btn', function() {
			var objectId = parseFloat($(this).attr('data-object-id'));
			
			showDialogForDeletingIndividualMyListItem(objectId);
		});
		
		// Handle the delete button for removing select or all items.
		$body.on('click', '#myList-delete-select-btn', function(event) {
			var selectAllStatus = $('#myList-select-all').prop('checked');
			
			// If the "select all" status is true when we click on the white delete button,
			// then display the modal dialog box for the user along with the amount of saves that is
			// going to be deleted.
			if (selectAllStatus) {
				// amountOfSaves is a global JS variable that sits in myList.jsp
				showDialogForDeleteAll(amountOfSaves);
			} else if (selectedSaves.length > 0) {
				// Or else if the array of selected saves has 1 or more items in it, then show the dialog for that.
				showDialogForDeleteSelect(selectedSaves.length);
			} else {
				// Or else show a dialog to the user that they have not selected anything for deletion.
				showDialogForNoSelect('removed');
			}
			
		});
		
		// Handle the export button for exporting select or all items.
		$body.on('click', '#myList-export-select-btn', function(event) {
			var selectAllStatus = $('#myList-select-all').prop('checked');

			if (selectAllStatus) {
				showDialogForExportAllMyListItems(amountOfSaves);
			} else if (selectedSaves.length > 0) {
				showDialogForExportSelectedMyListItems(selectedSaves.length);
			} else {
				showDialogForNoSelect('exported');
			}
		});
		
		// Handle the individual email buttons when clicked.
		$body.on('click', '.myList-email-individual-btn', function(event) {
			emailIndividualMyListItem(parseFloat($(this).attr('data-object-id')));
		});
		
	});
	
	/**
	 * This method will return an array of the selected items from the My List page.
	 * 
	 * @param currentItemList
	 * @returns
	 */
	function getListOfSelectedItems(currentItemList = Array()) {
		var selectedItemList = Array();
		
		for (var i = 0; i < currentItemList.length; i++) {
			var currentObjectId = currentItemList[i].objectOverview.id;

			if ($.inArray(currentObjectId, selectedSaves) !== -1) {
				selectedItemList.push(currentItemList[i]);
			}
		}
		
		return selectedItemList;
	}
	
	/**
	 * This method will send an email for an individual My List item when the email button is clicked on that item.
	 * 
	 * @param objectId
	 * @returns
	 */
	function emailIndividualMyListItem(objectId) {
	
		for (var i = 0; i < listOfMyListItems.length; i++) {
			var currentObjectId = parseFloat(listOfMyListItems[i].objectOverview.id);

			if (currentObjectId === objectId) {
				sendVhmmlIndividualMyListEmail('Saved item from My List in vHMML, HMML project number: ' + listOfMyListItems[i].objectOverview.hmmlProjectNumber, listOfMyListItems[i], permalinkUrl);
				break;
			}
		}
	}
	
	/**
	 * This method will reset the checkboxes when the "select all" checkbox is unchecked.
	 * @returns
	 */
	function resetSelect() {
		selectedSaves = Array();
		selectAllStatus = false;
		$('.myList-single').prop('checked', false);
		$('#myList-select-all').prop('checked', false);
	}
	
	/**
	 * This method will remove an element from an array.
	 * 
	 * @param array
	 * @param element
	 * @returns
	 */
	function removeItem(array, element) {
	    const index = array.indexOf(element);
	    
	    if (index !== -1) {
	        array.splice(index, 1);
	    }
	}
	
	/**
	 * This method will display a modal dialog when email or delete is clicked when no selection is made.
	 * 
	 * @param action
	 * @returns
	 */
	function showDialogForNoSelect(action) {
		var dialog = new Dialog({
			type: 'message',				
			message: 'You have not selected anything to be ' + action + '.',			
			buttonsCssClass: 'my-list',
			showCloseIcon: false,
			closeButtonCssClass: 'btn-default',
			keyboard: false,
			moveable: true,
			closeButtonLabel: 'OK',
		});
		
		dialog.show();
	}
	
	function showDialogForExportSelectedMyListItems(amountOfSelectedSaves) {
		
		var dialog = new Dialog({
			title: 'Export the selected save(s)?',
			type: 'confirm',				
			message: 'Are you sure you want to export the selected ' + amountOfSelectedSaves + ' save(s) from your My List as a plain text file?',			
			buttonsCssClass: 'my-list',
			showCloseIcon: false,
			closeButtonCssClass: 'btn-default',
			keyboard: false,
			moveable: true,
			buttons: {
				'Export': function() {
					// Export selected saves from the session.
					$('#myListSelectedSaves').attr('value',selectedSaves);
					
					if ($('#myListSelectedSaves').attr('value').length) {
						$('#myListExportSelectedSavesForm').submit();
					}
					
					dialog.hide();
				}
			},
		});
		
		dialog.show();
	}
	
	/**
	 * This method will display a dialog modal for exporting all saved items.
	 * 
	 * @param amountOfExports
	 * @returns
	 */
	function showDialogForExportAllMyListItems(amountOfExports) {
		
		var dialog = new Dialog({
			title: 'Export all ' + amountOfExports + ' save(s)?',
			type: 'confirm',				
			message: 'Are you sure you want to export all ' + amountOfExports + ' save(s) from your My List as a plain text file?',			
			buttonsCssClass: 'my-list',
			showCloseIcon: false,
			closeButtonCssClass: 'btn-default',
			keyboard: false,
			moveable: true,
			buttons: {
				'Export': function() {
					window.location = contextPath + '/myList/all/export';
					dialog.hide();
				}
			},
		});
		
		dialog.show();
	}
	
	/**
	 * This method will display a dialog modal for deleting selected items.
	 * 
	 * @param amountOfDeletes
	 * @returns
	 */
	function showDialogForDeleteSelect(amountOfDeletes) {
		var data = { selectedSaves : JSON.stringify(selectedSaves) };
		var url = contextPath + '/myList/select/remove';
		
		var dialog = new Dialog({
			title: 'Remove the selected save(s)?',
			type: 'confirm',				
			message: 'Are you sure you want to remove the selected ' + amountOfDeletes + ' save(s) from your My List?',			
			buttonsCssClass: 'my-list',
			showCloseIcon: false,
			closeButtonCssClass: 'btn-default',
			keyboard: false,
			moveable: true,
			buttons: {
				'Remove': function() {
					// Remove selected saves from the session.
					$.ajax({
						url: url,
						data: data,
						success: function() {
							dialog.hide();
							window.location.href = context + '/myList';
						},
						error: function() {
							Messages.addMessage({
								message: "Error removing selected items from your My List.",
								severity: 'ERROR'
							});
						}
					});
				}
			},
		});
		
		dialog.show();
	}
	
	/**
	 * This method will display a dialog modal for deleting all items.
	 * 
	 * @param amountOfSaves
	 * @returns
	 */
	function showDialogForDeleteAll(amountOfSaves) {
		var dialog = new Dialog({
			title: 'Remove all ' + amountOfSaves + ' save(s)?',
			type: 'confirm',				
			message: 'Are you sure you want to remove all ' + amountOfSaves + ' save(s) from your My List?',			
			buttonsCssClass: 'my-list',
			showCloseIcon: false,
			closeButtonCssClass: 'btn-default',
			keyboard: false,
			moveable: true,
			buttons: {
				'Remove': function() {
					// Remove all saves from the session.
					$.ajax({
						url: contextPath + '/myList/all/remove',
						success: function() {
							dialog.hide();	
							window.location.href = context + '/myList';
						},
						error: function() {
							Messages.addMessage({
								message: "Error removing all your items from your My List.",
								severity: 'ERROR'
							});
						}
					});
				}
			},
		});
		
		dialog.show();
	}
	
	/**
	 * This method will display a dialog modal when the red delete button is clicked on an individual saved item.
	 * 
	 * @param objectId
	 * @returns
	 */
	function showDialogForDeletingIndividualMyListItem(objectId) {
		var dialog = new Dialog({
			title: 'Remove this save?',
			type: 'confirm',				
			message: 'Are you sure you want to remove this save?',			
			buttonsCssClass: 'my-list',
			showCloseIcon: false,
			closeButtonCssClass: 'btn-default',
			keyboard: false,
			moveable: true,
			buttons: {
				'Remove': function() {
					removeItem(selectedSaves, objectId);
					removeListItem(objectId, true);
				}
			},
		});
		
		dialog.show();
	}
	
	/**
	 * Method that is called when the page is first loaded to get the list of saves for a user's My List.
	 * 
	 * @returns
	 */
	function initMyListSaves() {
		pagingControl.setPage(0);
		pagingControl.setSort(initialSortBy);
		myListSearch();
	}
		
	/**
	 * Method that will perform the "search" for all the saves for a user in their My List.
	 * 
	 * This is a required method by the paging-controls tag file, so that it knows what method to call when 
	 * the sort controls are used.
	 * 
	 * @param selectedPage
	 * @returns
	 */
	function myListSearch(selectedPage) {
		var pagingData = pagingControl.getPagingData();
		
		$.ajax({
			url: contextPath + '/myList/all',
			data: pagingData,
			beforeSend: function() {
				$('#myListContents').html('');
				showSpinner({element: $('#myListContents')});
			},
			success: function(result) {		
				if (result && result.searchHits && result.searchHits.length > 0) {
					$('#myListWrapper').show();
					refreshMyList(result);
				} else {
					$('#myListWrapper').hide();
					$('#myListSaveCounter').text(0);
					$('#myListSaveCounterHeading').text(0);
					$('#myListContents').html('<div class="panel panel-default text-center">You currently do not have any saved items.</div>');
				}
			}
		});	
	}

	/**
	 * Method to refresh the result for My List, usually for when a sort is used.
	 * 
	 * @param result
	 * @returns
	 */
	function refreshMyList(result) {
		resetSelect();
		renderResults(result);
	}
		
	/**
	 * Method to render the results for My List.
	 * 
	 * @param result
	 * @returns
	 */
	function renderResults(result) {
		if(result && result.searchHits && result.searchHits.length) {	
			listOfMyListItems = result.searchHits;
			displayMyList(result.searchHits);
			pagingControl.updatePaging(result);
		}
	}

	/**
	 * Method will build the different rows of object information before displaying it.
	 * 
	 * @param myListSaves
	 * @returns
	 */
	function displayMyList(myListSaves) {
		var html = '';
		
		// Loop through all the saves and build our HTML.
		for (var i = 0; i < myListSaves.length; i++) {
			var myListSave = myListSaves[i];
			userSaves.push(myListSave.objectOverview.id);
			
			html += '<div class="searchHit">';
			html += '<div class="row row-eq-height">';
			html += '<div class="myList-checkbox-container"><input type="checkbox" class="myList-single" data-object-id="' + myListSave.objectOverview.id + '"/></div>';
			html += '<div class="rr-thumbnail" onmousedown="return false">';
			
			html += getIconImage(myListSave.objectOverview);
			
			html += '</div>';
				
			html += myListTemplate(myListSave.objectOverview);
			
			html += '</div></div>';
		}
		
		// Insert our built HTML code into the DOM.
		$('#myListContents').html(html);
	}
		
	/**
	 * Method for retrieving the icon image if one exists or else the placeholder image.
	 * 
	 * @param myListSave
	 * @returns
	 */
	function getIconImage(myListSave) {
		var hasImages = myListSave.iconName;
		var iconHtml;
		var link = contextPath + '/readingRoom/view/' + myListSave.id;
		
		if(hasImages) {
			iconHtml = '<a href="'+ link +'" title="Go to the object description."><img src="' + getIconUrl(myListSave) + '" class="viewImagesLink" data-object-id="' + myListSave.id + '" data-access="' + myListSave.accessRestriction + '"/></a>';
		} else {
			var $placeholderImage = $(getPlaceholderImage(myListSave, link));
			$placeholderImage.addClass('viewDescription');
			$placeholderImage.attr('data-object-id', myListSave.id);
			iconHtml = $placeholderImage[0].outerHTML;
		}
		
		return iconHtml;
	}
		
	/**
	 * Method for retrieving the placeholder image.
	 * 
	 * @param myListSave
	 * @param link
	 * @returns HTML string with the placeholder image
	 */
	function getPlaceholderImage(myListSave, link) {
		var cssClass = 'text-center';
		// default to green-icon with open book (digital objects)
		var icon = '<i class="card-icon green-icon icon-open-book"></i>';
		var online = myListSave.accessRestriction.name !== 'ON_SITE_ONLY' && myListSave.accessRestriction.name !== 'ON_SITE_ONLY_ORDER_SCAN';
		
		switch (myListSave.format) {
			// for microfilm we show the film reel
			case 'Microform':
			case 'Scanned Microform':
				cssClass += ' image-placeholder light-blue-bg';
				icon = '<i class="card-icon blue-icon icon-film-reel"></i>';														
				break;
			default: 
				cssClass += ' image-placeholder light-green-bg';
		}
		
		var placeholderImage = '';
		
			if(link) {
				placeholderImage += '<a href="' + link + '" title="Go to the object description."><div class="' + cssClass + '">' + icon + '</div></a>';
			} else {
				placeholderImage += '<div class="' + cssClass + '">' + icon + '</div>';	
			}
		
		return placeholderImage;
	}
		
	/**
	 * Method for putting together the icon URL is one exists for the object.
	 * 
	 * @param myListSave
	 * @returns Url string for image icon
	 */
	function getIconUrl(myListSave) {
		var url = contextPath;
		var online = myListSave.accessRestriction !== 'ON_SITE_ONLY_ORDER_SCAN' && myListSave.accessRestriction !== 'ON_SITE_ONLY';		
		
		// if they've selected an icon and the images are available online
		if(myListSave.iconName && online) {
			// the projectNumber could have html if it was the result of a search hit that's got highlight formatting
			// we may want to completely separate the search hit atts from actual object attribute values at some point
			var projectNumber = stripHtml(myListSave.hmmlProjectNumber);
			url += '/image/thumbnail/READING_ROOM/' + projectNumber + '/' + myListSave.iconName; 	
		} 
		
		return url;
	}
		
	/**
	 * Method is required for the paging controls functionality for My List.
	 * 
	 * The option values correspond to the Elastic Search fields.
	 * 
	 * @returns String of HTML options.
	 */
	function getMyListSortByOptions() {
		var html = '';
		html += '<option value="country">Country</option>';
		html += '<option value="city">City</option>';
		html += '<option value="repository">Repository</option>';
		html += '<option value="hmmlProjectNumber">HMML Project Number</option>';
		
		return html;
	}