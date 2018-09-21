$(function() {	
	
	$('.ckEditor').each(function() {
		
		CKEDITOR.replace($(this).attr('name'), {
			toolbar: [
				{name: 'clipboard', items: ['Cut', 'Copy', 'Paste', 'PasteText', 'PasteFromWord', '-', 'Undo', 'Redo']},
				{name: 'editing', items: ['Scayt']},
				{name: 'links', items: ['Link', 'Unlink']},
				{name: 'insert', items: ['SpecialChar']},
				{name: 'tools', items: ['Maximize']},
				{name: 'document', items: ['Source']},
				{name: 'basicstyles', items: ['Bold', 'Italic', 'Strike', '-', 'Superscript', 'Subscript']},
				{name: 'paragraph', items: ['-', 'BidiLtr', 'BidiRtl' ]}
			]
		});
		
		CKEDITOR.config.width = 550;
		CKEDITOR.config.height = 100;
		CKEDITOR.config.removePlugins = 'list, image';	
	});						
	
	initTagsInput($('#relatedTerms'), 'relatedTerms', 'Add Term');		
	initTagsInput($('#contributors'), 'contributors', 'Add Contributor');
	
	$('button.deleteButton').click(function() {
		deleteTerm();
	});
	
	$('button.cancelButton').click(function() {
		returnToLexiconHome();
	});
	
	$('button.saveAndCloseButton').click(function() {
		saveTerm(true);
	});
	
	$('button.saveButton').click(function() {
		saveTerm();
	});
});

function deleteTerm() {
	var confirmDialog = new Dialog();
	var id = $('#lexiconTermId').val();
	var term = $('#term').val();
	
	confirmDialog.show({
		title: 'Delete ' + term + '?',
		message: 'Are you sure you want to delete ' + term + ' from Lexicon?',
		buttons: {
			'Delete': function() {
				$.ajax({
					url: contextPath + '/lexicon/admin/remove/' + id,
					method: 'PUT',
					success: function() {
						returnToLexiconHome();
					},
					complete: function(response, textStatus) {
						Messages.showResponseMessage(response);
						confirmDialog.hide();
					}					
				});
			}
		}
	});		
}

function saveTerm(close) {
	
	for (instance in CKEDITOR.instances) {
	    CKEDITOR.instances[instance].updateElement();
	}
	
	var $form = $('#editTermForm');
	
	$.ajax({
		url: $form.attr('action'),
		method: 'POST',
		data: $form.serialize(),
		complete: function(response) {
			if(close) {
				returnToLexiconHome();	
			} else {
				$('#lexiconTermId').val(response.responseJSON.id);
				Messages.removeAll();
				Messages.showResponseMessage(response);
			}			
		}
	});
}

function returnToLexiconHome() {
	window.location.href = contextPath + '/lexicon?searchText=' + searchText + '&startsWithLetter=' + startsWithLetter + '&selectedPage=' + selectedPage;
}

function initTagsInput($element, inputName, addLabel) {
	$element.tagsInput({
		autocomplete_url: contextPath + '/lexicon/admin/getAutoCompleteList?listType=' + inputName,
		removeWithBackspace: false,
		defaultText: addLabel,
		'height':'200px',
		'width':'400px',
		'delimiter': '|'
	});		
}