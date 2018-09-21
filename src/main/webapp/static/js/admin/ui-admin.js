var HEX_CODE_ERROR = 'Color value is not in the correct format.';
var LIST_AMOUNT_ERROR = 'Value must be a whole number, greater than zero.';
var OPACITY_ERROR = 'Opacity value is not within range of 0 and 1.';
var FIELD_LINK_SEARCH_ERROR = 'Value is not valid.  Please check the format.';
var formData;

$(function() {
	$('#block-save').click(function() {
		clearErrors();
		saveBlock();
	});
});

function clearErrors() {
	$('.error').remove();
	$('input').removeClass('error-border');
}

function saveBlock() {
	if (processFormData()) {
		$.ajax({
			url: $('#block-edit-form').attr('data-url'),
			data: formData,
			method: 'POST',
			contentType: false,
			processData: false,
			beforeSend: function() {
				Messages.removeAll();
			},
			complete: function(response) {
				// Check if a response JSON was sent back, if so then check to see if there any keys.
				// This will indicate to us that there were validation errors in the backend and we
				// will need to display the error messages appropriately.
				if (response.status == 500) {
					Messages.showResponseMessage(response);
				} else if (response.responseJSON && Object.keys(response.responseJSON).length > 0) {
					
					Messages.addMessage({message: 'Your changes have not been saved.  Please see errors below.', severity: 'ERROR'});
					
					$.each(response.responseJSON, function(key, value) {
						$('div[data-block-type="' + key + '"]').append('<span class="error">' + value + '</span>');
						$('div[data-block-type="' + key + '"] input').addClass('error-border');
					});
					
					$('html, body').animate({
						scrollTop: $('.error:visible:first').offset().top - 245
					});
				} else {
					
					Messages.showResponseMessage(response);	
				}
			}
		});
	}
}

/**
 * Method will process the form data by making sure the field and values exist, then validating
 * the values before adding them to the form data object.
 * @returns
 */
function processFormData() {
	var errors = 0;
	formData = new FormData();
	
	// Check and validate the form fields
	// id
	formData.append('blockId', $('#block-id').val());
	
	// heading
	if ($('#block-heading').length > 0) {
		formData.append('HEADING', $('#block-heading').val());
	}
	
	// heading color
	if (doesFieldValueExist($('#block-heading-color'))) {
		
		if (validateColorField($('#block-heading-color').val())) {
			formData.append('HEADINGCOLOR', $('#block-heading-color').val());
		} else {
			displayError('HEADINGCOLOR', HEX_CODE_ERROR);
			errors++;
		}
	}
	
	// content
	if ($('#block-content').length > 0) {
		formData.append('CONTENT', $('#block-content').val());
	}
	
	// content color
	if (doesFieldValueExist($('#block-content-color'))) {
		
		if (validateColorField($('#block-content-color').val())) {
			formData.append('CONTENTCOLOR', $('#block-content-color').val());
		} else {
			displayError('CONTENTCOLOR', HEX_CODE_ERROR);
			errors++;
		}	
	}
	
	// hero image use
	formData.append('useImage', $('input:radio[name="block-hero-switch"]:checked').val());
	
	// hero image
	if (doesFieldValueExist($('#block-hero-image'))) {
		formData.append('IMAGE', $('#block-hero-image')[0].files[0]);
	}
	
	formData.append('currentImage', $('#block-hero-image-current').val());
	
	// hover color
	if (doesFieldValueExist($('#block-hover-color'))) {
		
		if (validateColorField($('#block-hover-color').val())) {
			formData.append('HOVERCOLOR', $('#block-hover-color').val());
		} else {
			displayError('HOVERCOLOR', HEX_CODE_ERROR);
			errors++;
		}	
	}
	
	// overlay color
	if (doesFieldValueExist($('#block-overlay-color'))) {
		
		if (validateColorField($('#block-overlay-color').val())) {
			formData.append('OVERLAYCOLOR', $('#block-overlay-color').val());
		} else {
			displayError('OVERLAYCOLOR', HEX_CODE_ERROR);
			errors++;
		}	
	}
	
	// overlay opacity
	if (doesFieldValueExist($('#block-overlay-opacity'))) {
		
		if (validateOpacityField($('#block-overlay-opacity').val())) {
			formData.append('OVERLAYOPACITY', $('#block-overlay-opacity').val());
		} else {
			displayError('OVERLAYOPACITY', OPACITY_ERROR);
			errors++;
		}	
	}
	
	// background color
	if (doesFieldValueExist($('#block-background-color'))) {
		if (validateColorField($('#block-background-color').val())) {
			formData.append('BACKGROUNDCOLOR', $('#block-background-color').val());
		} else {
			displayError('BACKGROUNDCOLOR', HEX_CODE_ERROR);
			errors++;
		}	
	}
	
	// list amount
	if (doesFieldValueExist($('#block-list-amount'))) {
		if (validateListAmountField($('#block-list-amount').val())) {
			formData.append('LISTAMOUNT', $('#block-list-amount').val());
		} else {
			displayError('LISTAMOUNT', LIST_AMOUNT_ERROR);
			errors++;
		}
	}
	
	// url
	if ($('#block-url').length > 0) {
		formData.append('URL', $('#block-url').val());
	}
	
	// field link search
	if ($('#block-field-link-search').length > 0) {
		if (($('#block-field-link-search').val() && isJSON($('#block-field-link-search').val()))
				|| (!$('#block-field-link-search').val())) {
			formData.append('FIELDLINKSEARCH', $('#block-field-link-search').val());
		} else if ($('#block-field-link-search').val() && !isJSON($('#block-field-link-search').val())) {
			displayError('FIELDLINKSEARCH', FIELD_LINK_SEARCH_ERROR);
			errors++;
		}
	}
		
	// active link
	formData.append('useFieldLinkSearch', $('input:radio[name="block-link-switch"]:checked').val());
	
	// If there are errors, then scroll the browser window to the 1st occurence.
	if (errors > 0) {
		$('html, body').animate({
			scrollTop: $('.error:visible:first').offset().top - 245
		});
		Messages.addMessage({message: 'Your changes have not been saved.  Please see errors below.', severity: 'ERROR'});
	}
	
	return errors === 0;
}

/**
 * Method will check is the passed in data is a valid JSON string or not.
 * @param data
 * @returns
 */
function isJSON(data) {
	var status = true;
	
	try {
		JSON.parse(data);
	} catch(exception) {
		status = false;
	}
	
	return status;
}

/**
 * Method will check to see if the field exists and if so, if there is a field value.
 * @param $field
 * @returns
 */
function doesFieldValueExist($field) {
	return $field.length > 0 && $field.val();
}

/**
 * Method will display the error message and highlight the field.
 * @param type
 * @param message
 * @returns
 */
function displayError(type, message) {
	$('div[data-block-type="' + type + '"]').append('<span class="error">' + message + '</span>');
	$('div[data-block-type="' + type + '"] input').addClass('error-border');
}

function validateListAmountField(value) {
	if (isNaN(value)) {
		return false;
	}
	
	if (value > 0 && Number.isInteger(parseInt(value))) {
		return true;
	}
	
	return false;
}

/**
 * Method will validate the color field value per the regex for hex code.
 * @param value
 * @returns
 */
function validateColorField(value) {
	var regex = '^#([A-Fa-f0-9]{6}|[A-Fa-f0-9]{3})$';
	
	return value.match(regex) != null;
}

/**
 * Method will validate the opacity field value.
 * @param value
 * @returns
 */
function validateOpacityField(value) {
	if (isNaN(value)) {
		return false;
	}
	
	var opacity = parseFloat(value);
	
	if (opacity >= 0.0 && opacity <= 1.0) {
		return true;
	}
	
	return false;
}