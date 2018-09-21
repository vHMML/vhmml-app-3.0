$(function() {	
	$('#exportButtons').on('click', '.dropdown-menu li a', function() {
		var confirmDialog = new Dialog();
		var $exportLink = $(this);
		var $exportButton = $exportLink.parent().parent().siblings('.exportButton');
		var exportToken = new Date().getTime();
		var exportTitle = $exportLink.text();
		var exportTypeTitle = $exportButton.text();
		var exportOption = $exportLink.attr('data-option').toLowerCase();
		var message = '';
		var collectionName = $('#collectionName').val() !== 'undefined' ? $('#collectionName').val() : '';
		
		// Conjure the correct message for the confirmation dialog.
		switch (exportOption) {
			case 'all':
				message = 'Are you sure you want to export all for "' + exportTypeTitle.trim() + '"?';
				break;
			case 'active':
				message = 'Are you sure you want to export only actives for "' + exportTypeTitle.trim() + '"?';
				break;
			case 'inactive':
				message = 'Are you sure you want to export only inactives for "' + exportTypeTitle.trim() + '"?';
				break;
		}
		
		
		confirmDialog.show({
			title: 'Export "' + exportTitle + '"?',
			message: message,
			buttons: {
				'Yes': function() {
					confirmDialog.hide();
					disableExportButton($exportButton, exportToken);
		    			var exportLink = $exportButton.hasClass('exportLinks') ? 'exportLinks' : 'exportObjects';
		    			window.location = contextPath + '/catalogDatabase/' + exportLink 
		    					+ '?collectionName=' + collectionName
		    					+ '&exportToken=' + exportToken
		    					+ '&exportOption=' + exportOption;
				}
			}
		});
		
    		
	});
});

function disableExportButton($button, exportToken) {
    
	var $exportButtonWrapper = $button.parent().parent('.exportButtonWrapper');
	var exportWrapperHtml = $exportButtonWrapper.html();
	
	showSpinner({
		element: $exportButtonWrapper,
		css: {'height': 'auto', 'display': 'inline-block'} 
	});
	
    fileDownloadCheckTimer = window.setInterval(function () {
    	var cookieValue = $.cookie('exportToken');
      
    	if (cookieValue == exportToken) {
    		window.clearInterval(fileDownloadCheckTimer);
			$.removeCookie('exportToken');
    		$exportButtonWrapper.html(exportWrapperHtml);			
    	}    	  
    }, 1000);
}
