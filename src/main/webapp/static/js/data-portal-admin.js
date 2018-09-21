var confirmDialog = new Dialog();

$(function() {
	// Handle the click event for the export of all data for the resultset.
	$('.generateButtonWrapper').on('click', '#generateDatasetButton', function() {
		var $this = $(this);
		var imageCss = $this.is('a') ? {'height': '18px', 'padding': '0 18px'} : {};
		var message = 'Are you sure you want to manually generate the dataset files for the Data Portal?  This may take a few minutes or hours depending on the amount of Reading Room records. '
				+ 'There is an automated job that generates the dataset files nightly, so please only perform this action if it is absolutely necessary.';
			
		confirmDialog.show({
			title: 'Generate dataset files for the Data Portal?',
			message: message,
			buttons: {
				'Yes': function() {
					generateDatasetFiles($this.attr('data-url'), imageCss);
					confirmDialog.hide();
				}
			}
		});
			
	});
});

function generateDatasetFiles(url, imageCss) {
	var $generateButtonWrapper = $('.generateButtonWrapper');
	var buttonHtml = $generateButtonWrapper.html();
	
	$.ajax({
		url: url,
		beforeSend: function() {
			showSpinner({
				element: $generateButtonWrapper,
				css: {'height': 'auto', 'display': 'inline-block'},
				imageCss: imageCss
			});
			Messages.removeAll();
			Messages.addMessage({message: 'Generating dataset files...', severity: 'INFO'});
		},
		complete: function(response) {
			$generateButtonWrapper.html(buttonHtml);
			Messages.removeAll();
			Messages.showResponseMessage(response);			
		}
	});
}