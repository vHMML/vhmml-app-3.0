$(function() {
	var $body = $('body');

	// disable context menu on mirador viewer so users can't easily save images
	$body.on('contextmenu', '#viewer, .rr-thumbnail, #thumbnail-viewer img', function(e) {
		return false;
	});
	
	$body.on('mousedown', '#viewer, .rr-thumbnail', function(e) {
		// only allow mouse down on the add item link & manifest select screen, not on main Mirador image viewer
		if(!$('a.addItemLink').is(e.target) && !$('#manifest-select-menu').has(e.target)) {
			return false;
		}
	});
	
	$('#viewer').on('dragstart', 'img', function() {
        return false;
    });
});