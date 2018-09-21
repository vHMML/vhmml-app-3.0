/**
 * Handle frontend functionality for the My List feature.
 */

$(function() {
	var $body = $('body');
	

	$body.on('click', '.tab-content .metadata-myList-save-icon', function() {
		var $saveButton = $(this);
		var isSaved = ($saveButton.attr('data-object-saved') == 'true');
		var $tabContentContainer = $saveButton.parent().parent();
		
		$tabContentContainer.find('.addMyListObjectButton').children('span').remove();
		
		if (isSaved) {
			$tabContentContainer.find('.addMyListObjectButton').append('<span class="glyphicon glyphicon-star-empty"></span>');
			removeListItem($saveButton.attr('data-object-id'));
		} else {
			$tabContentContainer.find('.addMyListObjectButton').append('<span class="glyphicon glyphicon-star"></span>');
			saveListItem($saveButton.attr('data-object-id'));
		}
		
		// Update the status of the object's save in the DOM.
		isSaved = !isSaved;
		
		updateListStatus($tabContentContainer, isSaved);
	});
	
	// Handle the event when the save button is clicked for objects to save them to
	// the "My List" page.
	$body.on('click', 'button.addMyListObjectButton', function() {
		var $saveButton = $(this);
		var isSaved = ($saveButton.attr('data-object-saved') == 'true');
		
		$saveButton.children('span').remove();
		
		// Toggle the icon depending on the state.
		if (isSaved) {
			$saveButton.append('<span class="glyphicon glyphicon-star-empty"></span>');
			removeListItem($saveButton.attr('data-object-id'));
		} else {
			$saveButton.append('<span class="glyphicon glyphicon-star"></span>');
			saveListItem($saveButton.attr('data-object-id'));
		}
		
		// Update the status of the object's save in the DOM.
		isSaved = !isSaved;
		
		$saveButton.attr('data-object-saved', isSaved);
	});
	
});

function updateListStatus($tabContentContainer, isSaved) {
	$tabContentContainer.find('.addMyListObjectButton').attr('data-object-saved', isSaved);
}

/**
 * This method will save the item to the session or database depending on if the user is logged in or not.
 * @param objectId
 * @returns
 */
function saveListItem(objectId) {
	$.ajax({
		url : contextPath + '/myList/add/' + objectId,
		error : function(response) {
			Messages.addMessage({
				message: "Could not add list item to your My List.",
				severity: 'ERROR'
			});
		},
		success : function(result) {
			$('#myListSaveCounter').text(result.myListSavesCounter).fadeToggle("slow").fadeToggle("slow");
		}
	});
}

/**
 * This method will remove the item from the session or database for My List.
 * @param objectId
 * @returns
 */
function removeListItem(objectId, refreshPage = false) {
	$.ajax({
		url: contextPath + '/myList/remove/' + objectId,
		error : function(response) {
			Messages.addMessage({
				message: "Could not remove list item from your My List.",
				severity: 'ERROR'
			});
		},
		success : function(result) {
			$('#myListSaveCounter').text(result.myListSavesCounter).fadeToggle("slow").fadeToggle("slow");
			
			if (refreshPage) {
				window.location.href= context + '/myList'
			}
		}
	});
}