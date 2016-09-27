// =========================== >>
/* Colorbox resize function */
// =========================== >>
(function($){
    // src: http://stackoverflow.com/questions/24389115/how-can-i-detect-when-an-iframe-goes-fullscreen
    var fullscreenchange = 0;
    function changeHandler(e) {
       fullscreenchange = 1;
    }
    document.addEventListener("fullscreenchange", changeHandler, false);
    document.addEventListener("webkitfullscreenchange", changeHandler, false);
    document.addEventListener("mozfullscreenchange", changeHandler, false);
    document.addEventListener("msfullscreenchange", changeHandler, false);
    
	var resizeTimerColorbox;
	function resizeColorBox()
	{
	    if (resizeTimerColorbox) clearTimeout(resizeTimerColorbox);
	    resizeTimerColorbox = setTimeout(function() {
            if(fullscreenchange == 0)
            {
                if ($('#cboxOverlay').is(':visible')) 
                {
                    $.colorbox.reload();
                }
            }
            else
            {
                fullscreenchange = 0;
            }
	    }, 300)
	}

	// Resize Colorbox when resizing window or changing mobile device orientation
	$(window).resize(resizeColorBox);
	window.addEventListener("orientationchange", resizeColorBox, false);
})(jQuery);