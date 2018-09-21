$(function() {
	$('.reindexButtonWrapper').on('click', '.reindexButton', function() {
		var $this = $(this);
		var imageCss = $this.is('a') ? {'height': '18px', 'padding': '0 18px'} : {};
		var confirmDialog = new Dialog();
		
		confirmDialog.show({
			title: 'Re-index?',
			message: 'Are you sure you want to perform a re-index?',
			buttons: {
				'Yes': function() {
					confirmDialog.hide();
					reindex($this.attr('data-url'), imageCss);
				}
			}
		});
	});
	
	$('.clearCacheButtonWrapper').on('click', '.clearCacheButton', function() {
		var $this = $(this);
		var imageCss = $this.is('a') ? {'height': '18px', 'padding': '0 18px'} : {};
		var confirmDialog = new Dialog();
		var message = 'Are you sure you want to clear the cache? WARNING: Clearing the cache will downgrade performance while it rebuilds over time again. ' +
				'It is recommended to clear the cache when the site is expected to have low traffic.';
		
		confirmDialog.show({
			title: 'Clear the cache?',
			message: message,
			buttons: {
				'Yes': function() {
					confirmDialog.hide();
					clearCache($this.attr('data-url'), imageCss);
				}
			}
		});
	});

});

function clearCache(url, imageCss) {
	var $clearCacheButtonWrapper = $('.clearCacheButtonWrapper');
	var buttonHtml = $clearCacheButtonWrapper.html();
	
	$.ajax({
		url: contextPath + url,
		method: 'POST',
		beforeSend: function() {
			showSpinner({
				element: $clearCacheButtonWrapper,
				css: {'height': 'auto', 'display': 'inline-block'},
				imageCss: imageCss
			});
			Messages.removeAll();
			Messages.addMessage({message: 'Clearing the cache...', severity: 'INFO'});
		},
		complete: function(response) {
			$clearCacheButtonWrapper.html(buttonHtml);
			Messages.removeAll();
			Messages.showResponseMessage(response);			
		}
	});
}


function reindex(url, imageCss) {
	var $reindexButtonWrapper = $('.reindexButtonWrapper');
	var buttonHtml = $reindexButtonWrapper.html();
	
	$.ajax({
		url: contextPath + url,
		beforeSend: function() {
			showSpinner({
				element: $reindexButtonWrapper,
				css: {'height': 'auto', 'display': 'inline-block'},
				imageCss: imageCss
			});
			Messages.removeAll();
			Messages.addMessage({message: 'Re-indexing...', severity: 'INFO'});
		},
		complete: function(response) {
			$reindexButtonWrapper.html(buttonHtml);
			Messages.removeAll();
			Messages.showResponseMessage(response);			
		}
	});
}