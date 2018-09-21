$(function() {
	$('select.logLevel').change(function() {
		var $this = $(this);
		
		$.ajax({
			url: contextPath + '/admin/logging/setLogLevel/' + $this.attr('data-logger') + '/' + $this.val(),
			method: 'POST',
			beforeSend: function() {
				Messages.removeAll();
			},
			complete: function(response) {				
				Messages.showResponseMessage(response);
			}
		});			
	});
});