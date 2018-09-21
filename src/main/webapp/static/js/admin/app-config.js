$(function() {
	new ConfigAdmin();
});

function ConfigAdmin() {
	initCkEditors();
	$('#saveConfigButton').click(function() {
		if (validateFields()) {
			saveConfigValues();
		} else {
			// Scroll to the first error message.
			$('html,body').scrollTop($('.error').offset().top - 175);
		}
	});
	
	function initCkEditors() {
		$('.ckEditor').each(function() {			
			CKEDITOR.replace($(this).attr('name'));
			CKEDITOR.config.width = 550;
			CKEDITOR.config.height = 150;
			CKEDITOR.config.removePlugins = 'list, image, sourcearea';
			CKEDITOR.config.enterMode = CKEDITOR.ENTER_BR;
		});
	}
	
	function validateFields() {
		var noErrors = true;
		
		// Clear any error messages before validating.
		if ($('.error').length > 0) {
			$('.error').remove();
		}
		
		// validate data.portal.max.data.listing
		if (parseInt($('tr[data-config-key="data.portal.max.data.listing"]').find('input').val()) > 10000) {
			$('tr[data-config-key="data.portal.max.data.listing"]').find('.appConfigValue').append('<div class="error">Value needs to be 10000 or less.</div>');
			noErrors = false;
		}
		
		// validate data.portal.max.data.full
		if (parseInt($('tr[data-config-key="data.portal.max.data.full"]').find('input').val()) > 10000) {
			$('tr[data-config-key="data.portal.max.data.full"]').find('.appConfigValue').append('<div class="error">Value needs to be 10000 or less.</div>');
			noErrors = false;
		}
		
		return noErrors;
	}
	
	function saveConfigValues() {
		var configData = [];
		
		$('#appConfigForm tbody tr').each(function(index) {
			var $row = $(this);
			var configValueKey = $row.attr('data-config-key');
			var ckEditor = CKEDITOR.instances['configValue_' + configValueKey];
			var $input = $row.find('.configValue');
			var value = $input.val();
			
			if(ckEditor) {
				value = ckEditor.getData();
			} else if($input.attr('type') == 'checkbox') {
				value = $input.is(':checked') ? 'true' : 'false'; 
			} 
				
			configData[index] = {
				key: configValueKey,
				inputType: $row.attr('data-config-type'),
				value: value
			};
		});
		
		$.ajax({
			url: contextPath + '/admin/config',
			method: 'POST',
			data: JSON.stringify(configData),
			contentType: 'application/json',			
			complete: function(response) {
				Messages.showResponseMessage(response);
			}
		});
	}
}

