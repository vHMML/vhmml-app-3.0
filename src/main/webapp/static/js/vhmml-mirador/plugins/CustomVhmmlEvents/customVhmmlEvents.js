/**
 * This plugin can only be used with vHMML because some events are custom tailored to the vHMML application code.
 */
var CustomVhmmlEvents = {
		
	setupMiradorOpenSeadragonForVhmml: function() {
		
		/*
         * Mirador
         */
        (function($) {
        	/**
             * Completely override the OpenSeadragon object in Mirador.
             */
            $.OpenSeadragon = function(options) {
            	var osd = OpenSeadragon(

            		      jQuery.extend({
            		    	preserveViewport: true,
              		        visibilityRatio:  0.5,
              		        minZoomLevel:     0,
              		        defaultZoomLevel: 0,
              		        blendTime:        0.1,
              		        alwaysBlend:      false,
              		        showNavigationControl: false
            		      }, options)

            	);
            	
            	return osd;
            }
        })(Mirador);
		
	},
	
	// Register the event to resize Mirador in vHMML.
	registerResizeVhmmlMiradorEvent: function() {
		// Set the original bind events from Mirador.Workspace.prototype.bindEvents into a local variable...
		var originalBindEvents = Mirador.Workspace.prototype.bindEvents;
		var miradorObj;
		
		function init() {
			var oldInit = Mirador.Workspace.prototype.init;
			
			Mirador.Workspace.prototype.init = function(event) {
				oldInit.apply(this);
				miradorObj = this;
			}
		}
				
		// Override bindEvents with the new stuff...
		Mirador.Workspace.prototype.bindEvents = function() {
			// Call apply(), passing this to it.
			originalBindEvents.apply(this);
			var this_ = this;
			
			// Register our resize event for metadata panels.
			$(document).on('resizeVhmmlMirador', function(event) {
				// Call the method to calculate the layout of the Mirador workspace.
				miradorObj.calculateLayout();
			});
			
		};
		
		init();
	},
	
	// Initialize all of our functions for this plugin.
	init: function() {
		this.setupMiradorOpenSeadragonForVhmml();
		this.registerResizeVhmmlMiradorEvent();
	}
	
}

$(document).ready(function(){
	CustomVhmmlEvents.init();
});