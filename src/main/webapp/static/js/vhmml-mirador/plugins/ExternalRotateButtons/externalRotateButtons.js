/**
 * This Mirador plugin will add rotation buttons to the Window object of Mirador so users do not need to open the image manipulation tool to rotate the image in OSD.
 */
var ExternalRotateButtons = {

    template: Mirador.Handlebars.compile([
        '<a href="javascript:;" class="mirador-btn mirador-osd-external-rotate-right" title="{{t "rotateRightTooltip"}}" aria-label="{{t "rotateRightTooltip"}}">',
        '<i class="fa fa-lg fa-rotate-right"></i>',
        '</a>',
        '<a href="javascript:;" class="mirador-btn mirador-osd-external-rotate-left" title="{{t "rotateLeftTooltip"}}" aria-label="{{t "rotateRightTooltip"}}">',
        '<i class="fa fa-lg fa-rotate-left"></i>',
        '</a>',
    ].join('')),

    init: function() {
        var self = this;
        
        /*
         * Mirador
         */
        (function($) {

            /* Declare variables for the constructor and any methods that we'll override. */
            var oldToggleImageView = $.Window.prototype.toggleImageView;
            var oldToggleThumbnails = $.Window.prototype.toggleThumbnails;
            var oldToggleBookView = $.Window.prototype.toggleBookView;
            
            /**
             * Add on to the toggleImageView function for the Window object of Mirador to add the rotation controls to the window frame
             * whenever the Image view is toggled.
             */
            $.Window.prototype.toggleImageView = function(canvasId) {
            	var _this = this;
            	oldToggleImageView.apply(this, arguments);
        
            	var focusedOsd = _this.focusModules.ImageView.osd;
            	
            	if (this.element.find('.window-manifest-navigation .mirador-osd-external-rotate-left').length === 0 
            			&& this.element.find('.window-manifest-navigation .mirador-osd-external-rotate-right').length === 0) {
            		
            		// add buttons (the compiled template) to the DOM
            		this.element.find('.window-manifest-navigation').prepend(self.template());
               	
            		// add click handler for the new buttons
	                this.element.find('.mirador-osd-external-rotate-right').on('click', function() {
	                    if (focusedOsd) {
	                    	var currentRotation = focusedOsd.viewport.getRotation();
	                    	focusedOsd.viewport.setRotation(currentRotation + 90);
	                    }
	                });
	
	                this.element.find('.mirador-osd-external-rotate-left').on('click', function() {
	                    if (focusedOsd) {
	                      var currentRotation = focusedOsd.viewport.getRotation();
	                      focusedOsd.viewport.setRotation(currentRotation - 90);
	                    }
	                });
            	}
            }
            
            /**
             * Hide the rotation buttons in the window if the Thumbnails/Gallery view is toggled.
             */
            $.Window.prototype.toggleThumbnails = function(canvasId) {
            	oldToggleThumbnails.apply(this, arguments);
            	
            	if (this.element.find('.window-manifest-navigation .mirador-osd-external-rotate-left').length > 0 
            			&& this.element.find('.window-manifest-navigation .mirador-osd-external-rotate-right').length > 0) {
            		this.element.find('.window-manifest-navigation .mirador-osd-external-rotate-left').remove();
            		this.element.find('.window-manifest-navigation .mirador-osd-external-rotate-right').remove();
            	}
            }
            
            /**
             * Hide the rotation buttons in the window if the Book view is toggled.
             */
            $.Window.prototype.toggleBookView = function(canvasId) {
            	oldToggleBookView.apply(this, arguments);
            	
            	if (this.element.find('.window-manifest-navigation .mirador-osd-external-rotate-left').length > 0 
            			&& this.element.find('.window-manifest-navigation .mirador-osd-external-rotate-right').length > 0) {
            		this.element.find('.window-manifest-navigation .mirador-osd-external-rotate-left').remove();
            		this.element.find('.window-manifest-navigation .mirador-osd-external-rotate-right').remove();
            	}
            }

        })(Mirador);
    }
};

$(document).ready(function() {
	ExternalRotateButtons.init();
});