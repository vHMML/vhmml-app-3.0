var REQUIRED_FIELD_ERROR = 'Field requires a value.';
var NO_IMAGE_ERROR = 'Image is required.';
var DATE_FORMAT_ERROR = 'Date format is invalid.  Must be MM/DD/YYYY.';
var formData;

$(function() {
	// Initialize the CKEditor editors.
	initCkEditors();
	
	// Initialize the date picker.
	$('.date').datepicker();
	
	/**
	 * Handle the save button event.
	 */
	$('#news-item-save').click(function() {
		clearErrors();
		saveNewsItem();
	});
	
	/**
	 * Handle the delete button event.
	 */
	$('.news-item-delete-button').click(function() {
		var $this = $(this);
		var url = $this.attr('data-url');
		var title = $this.attr('data-news-item-title');
		
		showDialogForNewsItemDelete(title, url);
	});
});

/**
 * Method will display the modal dialog for when a user wants to delete a news item.
 * 
 * @param title
 * @param url
 * @returns
 */
function showDialogForNewsItemDelete(title, url) {
	   
	var dialog = new Dialog({
		type: 'confirm',				
		message: 'Are you sure you want to delete the news article, "' + $('<div/>').text(title).html() + '"?',			
		buttonsCssClass: 'news',
		showCloseIcon: false,
		closeButtonCssClass: 'btn-default',
		keyboard: false,
		moveable: true,
		closeButtonLabel: 'No',
		buttons: {
			'Yes': function() {
				removeNewsItem(url);
				dialog.hide();
			}
		}
	});
	
	dialog.show();
}

/**
 * Method will handle removing a news item via AJAX.
 * 
 * @param url
 * @returns
 */
function removeNewsItem(url) {
	$.ajax({
		url: url,
		method: 'POST',
		dataType: 'json',
		contentType: 'application/json',
		beforeSend: function() {
			Messages.removeAll();
		},
		complete: function(response) {
			Messages.showResponseMessage(response);
			
			// Send user back to the news homepage if the delete was successful.
			if (response.status === 200) {
				setTimeout(3000);
				
				window.location.href = context + "/news/";
			}
		}
	});
}

/**
 * Clear all errors from the page.
 * @returns
 */
function clearErrors() {
	$('.error').remove();
	$('input').removeClass('error-border');
	$('div').removeClass('error-border');
}

/**
 * Initialize our CKEditor editors.
 * @returns
 */
function initCkEditors() {
	$('.ckEditor').each(function() {			
		CKEDITOR.replace($(this).attr('name'));
		CKEDITOR.config.width = 550;
		CKEDITOR.config.height = 150;
		CKEDITOR.config.removePlugins = 'list, image, sourcearea';
		CKEDITOR.config.enterMode = CKEDITOR.ENTER_BR;
	});
}

/**
 * Process and save the block
 * @returns
 */
function saveNewsItem() {
	// If front-end validations are successful, then proceed to save
	// the news item.
	if (processFormData()) {
		$.ajax({
			url: $('#news-item-edit-form').attr('data-url'),
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
				if (response.status === 500) {
					Messages.showResponseMessage(response);	
				} else if (response.responseJSON && Object.keys(response.responseJSON).length > 0) {
					
					Messages.addMessage({message: 'Your changes have not been saved.  Please see errors below.', severity: 'ERROR'});
					
					$.each(response.responseJSON, function(key, value) {
						if (key == 'CONTENT') {
							displayErrorTextArea(key, value);
						} else {
							displayError(key, value);
						}
					});
					
					$('html, body').animate({
						scrollTop: $('.error:visible:first').offset().top - 245
					});
				} else {
					// Redirect user back to the news homepage.
					Messages.showResponseMessage(response);	
					
					setTimeout(5000);
					
					window.location.href = context + "/news/";
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
	formData.append('newsItemId', $('#news-item-id').val());
	
	// title/heading
	if (doesFieldValueExist($('#news-item-title'))) {
		formData.append('TITLE', $.trim($('#news-item-title').val()));
	} else {
		displayError('TITLE', REQUIRED_FIELD_ERROR);
		errors++;
	}
	
	// content
	if ($.trim(CKEDITOR.instances['news-item-content'].getData()) != '') {
		formData.append('CONTENT', $.trim(CKEDITOR.instances['news-item-content'].getData()));
	} else {
		displayErrorTextArea('CONTENT', REQUIRED_FIELD_ERROR);
		errors++;
	}
	
	// tooltip
	if (doesFieldValueExist($('#news-item-tooltip'))) {
		formData.append('TOOLTIP', $.trim($('#news-item-tooltip').val()));
	} else {
		displayError('TOOLTIP', REQUIRED_FIELD_ERROR);
		errors++;
	}
	
	// date
	if (doesFieldValueExist($('#news-item-date'))) {
		if (validateDate($('#news-item-date'))) {
			formData.append('DATE', $.trim($('#news-item-date').val()));
		} else {
			displayError('DATE', DATE_FORMAT_ERROR);
			errors++;
		}
	} else {
		displayError('DATE', REQUIRED_FIELD_ERROR);
		errors++;
	}
	
	// image
	if (doesFieldValueExist($('#news-item-image'))) {
		formData.append('IMAGE', $('#news-item-image')[0].files[0]);
	} else if (!doesFieldValueExist($('#news-item-current-image'))) {
		displayError('IMAGE', NO_IMAGE_ERROR);
		errors++;
	}
	
	// current image value
	formData.append('currentImage', $('#news-item-current-image').val());
	
	// image link
	formData.append('IMAGELINK', $.trim($('#news-item-image-link').val()));
	
	if (errors > 0) {
		$('html, body').animate({
			scrollTop: $('.error:visible:first').offset().top - 245
		});
		Messages.addMessage({message: 'Your changes have not been saved.  Please see errors below.', severity: 'ERROR'});
	}
	
	return errors === 0;
}

/**
 * Method will check the date field value to make sure it's valid and in the right format.
 * @param $field
 * @returns
 */
function validateDate($field) {
	return moment($field.val(), 'MM/DD/YYYY', true).isValid();
}

/**
 * Method will check to see if the field exists and if so, if there is a field value.
 * @param $field
 * @returns
 */
function doesFieldValueExist($field) {
	return $field.length > 0 && $.trim($field.val()) != '' && $field.val();
}

/**
 * Method will display the error message and highlight the field for input fields.
 * @param type
 * @param message
 * @returns
 */
function displayError(type, message) {
	$('div[data-part="' + type + '"]').append('<span class="error">' + message + '</span>');
	$('div[data-part="' + type + '"] input').addClass('error-border');
}

/**
 * Method will display the error message and highlight the textarea field, specifically the "content".
 * @param type
 * @param message
 * @returns
 */
function displayErrorTextArea(type, message) {
	$('div[data-part="' + type + '"]').append('<span class="error">' + message + '</span>');
	$('div[data-part="' + type + '"] > div').addClass('error-border');
}
