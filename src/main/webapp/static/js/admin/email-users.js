$(function() {
	new EmailUsersForm();
});

function EmailUsersForm() {
	initCkEditors();
	$('#sendButton').click(function() {
		sendMessage();
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
	
	function sendMessage() {		
		
		// have to update the underlying textarea for CKEditors
		for (instance in CKEDITOR.instances) {
		    CKEDITOR.instances[instance].updateElement();
		}
		
		var $form = $('#emailUsersForm');
		
		if($form.valid() && $('#message').val()) {
			$.ajax({
				url: contextPath + '/admin/emailUsers',
				method: 'POST',
				data: $form.serialize(),			
				complete: function(response) {
					Messages.showResponseMessage(response);
				}
			});
		} else {
			// we do a message here because our field validation doesn't currently show errors on CK Editor fields and we don't have time to implement that
			Messages.removeAll();
			Messages.addMessage({
				severity: 'ERROR',
				message: 'Missing required data, please enter a subject and a message to send an email.'
			});
		}		
	}
}