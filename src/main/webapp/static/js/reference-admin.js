var confirmDialog = new Dialog();

$(function() {
	var $form = $('#referenceEntryForm');
	
	$form.on('click', 'button.addField', function() {
		addRepeatableField($(this).parents('div.repeatableField'));
	});
	
	$form.on('click', 'button.removeField', function() {
		deleteRepeatableField($(this).parents('div.repeatableFieldGroup'));
	});
	
	$('button.deleteButton').click(function() {
		deleteReferenceEntry(this);
	});
	
	$('button.cancelButton').click(function() {
		cancel();		
	});
	
	$('button.saveAndCloseButton').click(function() {
		saveReferenceEntry(true);
	});
	
	$('button.saveButton').click(function() {
		saveReferenceEntry();
	});
	

	$('#tags').tagsInput({
		autocomplete_url: contextPath + '/reference/admin/searchTags',
		removeWithBackspace: false,
		defaultText: 'Add Tag',
		'height':'200px',
		'width':'400px',
		'delimiter': '|'
	});
});

function addRepeatableField($repeatableField) {	
	var $originalField = $repeatableField.find('input');
	var $repeatableFieldGroups = $repeatableField.children('div.repeatableFieldGroup');
	var $repeatableFieldGroupHtml = $($repeatableFieldGroups[0].outerHTML);		
	
	// if the inputs belong to a list, increment the list index on the new fields (tt-hint is an input inserted by twitter bootstrap typeahead)
	var $inputs = $repeatableField.find('input, select');	
	var listName = null;
	var listIndex = null;
	
	for(var i = $inputs.length - 1; i >= 0; i--) {
		var $input = $($inputs[i]);
		listName = $input.attr('data-list-name');
		listIndex = $input.attr('data-list-index');
		
		if(listName && listIndex) {
			break;
		}
	}
	
	if(listName && listIndex) {
		setFieldListIndex($repeatableFieldGroupHtml, listName, ++listIndex, true);
	}
	
	$repeatableField.append($repeatableFieldGroupHtml);
}

function setFieldListIndex($parentElement, listName, listIndex, newFields) {
	// make a reg ex that will match on listName[x] 
	var escapedFieldName = listName.replace(/\[/g, '\\[').replace(/\]/g, '\\]');
	var fieldNameRegEx = new RegExp(escapedFieldName + '\[[0-9]+\]');
	
	// for each input & select list, increment list indexes on references to the list we're adding to
	// for example, the following is the HTML for the itemNumber field on the second content object of the second part
	// <input id="parts1.contents1.itemNumber" name="parts[1].contents[1].itemNumber" data-list-name="parts[1].contents" data-list-index="1" data-field="itemNumber">
	// if we're adding a content item, the HTML for the last content item is copied and we need to increment attributes that reference the contents list,
	// so things like name="parts[1].contents[1].itemNumber" become name="parts[1].contents[2].itemNumber"
	// NOTE: tt-hint are inputs dynamically inserted by Twitter Bootstrap Typeahead
	$parentElement.find('input, select, textarea').each(function() {			
		var $this = $(this);		
		var fieldListName = $this.data('list-name');
		var fieldName = $this.attr('name');
		
		if(fieldName && fieldListName) {
			var updatedFieldName = fieldName.replace(fieldNameRegEx, listName + '[' + listIndex + ']');
			$this.attr('name', updatedFieldName);
			$this.attr('value', '');
			// the ids are the same as the name without brackets, this is just how the Spring form tags render the HTML
			$this.attr('id', updatedFieldName.replace(/\[/g, '').replace(/\]/g, ''));
			
			// if the field maps to the list we're updating, update it's list index attribute 
			// e.g. we're adding an item to the parts list so fields like parts[0].partNumber need data-list-index incremented
			if(fieldListName == listName) {
				$this.attr('data-list-index', listIndex);
			} else {
				// the field maps to a sub-list, e.g. parts[0].contents[0].itemNumber so increment the data-list-name attribute
				$this.attr('data-list-name', fieldListName.replace(fieldNameRegEx, listName + '[' + listIndex + ']'));
			}	
		}
		
		if($this.is(':checkbox')) {
			// checkboxes created by the Spring tag have a generated hidden field and a special id with a "1" on the end 
			// hidden field also needs to be copied, id needs to be updated correctly and values kept the way Spring expects
			$this.attr('id', $this.attr('id') + '1');
			$this.next('input[type="hidden"]').attr('name', '_' + updatedFieldName);
		} else if(newFields && !$this.hasClass('keepValueOnRepeat')) {
			$this.val('');
		}				
	});
}

function deleteRepeatableField($fieldGroup) {
	
	confirmDialog.show({
		title: 'Delete?',
		message: 'Are you sure you want to delete this field?',
		closeButtonLabel: 'No',
		buttons: {
			'Yes': function() {					
				$fieldGroup.remove();
				confirmDialog.hide();
			}
		}
	});
}

function deleteReferenceEntry(deleteButton) {
	var confirmDialog = new Dialog();
	var $deleteButton = $(deleteButton);
	var id = $deleteButton.attr('data-entry-id');
	
	confirmDialog.show({
		title: 'Delete Reference Entry?',
		message: 'Are you sure you want to delete this reference entry?',
		buttons: {
			'Delete': function() {
				$.ajax({
					url: contextPath + '/reference/admin/delete/' + id,
					method: 'DELETE',
					beforeSend: function() {
						$deleteButton.removeClass('btn-danger');
						showSpinner({
							element: $deleteButton,
							css: {'height': '36px', 'display': 'inline-block'},
						});
						Messages.removeAll();
						confirmDialog.hide();
					},
					success: function() {
						returnToReferenceHome();
					},
					complete: function(response, textStatus) {
						Messages.showResponseMessage(response);						
					}					
				});
			}
		}
	});		
}

function saveReferenceEntry(close) {
	var $form = $('#referenceEntryForm');
	
	if($form.valid()) {
		$.ajax({
			url: $form.attr('action'),
			method: 'POST',
			data: $form.serialize(),
			success: function(response) {				
				if(close) {					
					returnToReferenceHome();			
				} else {
					$('#id').val(response.referenceEntryId);
					$('button.deleteButton').attr('data-entry-id', response.referenceEntryId).removeClass('hide');
					Messages.removeAll();
					Messages.addMessage({severity: 'SUCCESS', message: response.message});
				}			
			},
			error: function(response) {
				Messages.removeAll();
				
				if(response.status === 400) {
					Messages.addMessage({severity: 'ERROR', message: 'Please provide values for the missing required fields.'});
					Validation.showFieldValidationMessages(response.responseJSON);
				} else {
					Messages.addMessage({severity: 'ERROR', message: response.responseText});
				}	
			}
		});
	}
}

function cancel() {
	confirmDialog.show({
		title: 'Cancel without saving?',
		message: 'Are you sure you want to cancel without saving?',
		buttons: {
			'Yes': function() {
				returnToReferenceHome();				
			}
		},
	});
}

function returnToReferenceHome() {
	window.location.href = contextPath + '/reference';
}