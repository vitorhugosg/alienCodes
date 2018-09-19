/**
 * owkey.js
 * Description: 
 *
 * 
 * 
 * 
 */
(function() {
	var tpj=jQuery;         
	var revapi113;
	tpj(document).ready(function() {
	    tpj('#rev_slider_113_1').find('li').each(function() {
	        var li = jQuery(this),
	            o = new Object();
	        o = jQuery.extend(o,li.data());
	        li.data('saved',o);
	    });

	    if(tpj("#rev_slider_113_1").revolution == undefined){
	        revslider_showDoubleJqueryError("#rev_slider_113_1");
	    }else{
	        revapi113 = tpj("#rev_slider_113_1").show().revolution({
	            sliderType:"standard",
	            jsFileLocation:"../../revolution/js/",
	            sliderLayout:"auto",
	            dottedOverlay:"none",
	            delay:9000,
	            navigation: {
	                keyboardNavigation:"off",
	                keyboard_direction: "horizontal",
	                mouseScrollNavigation:"off",
	                onHoverStop:"off",
	                arrows: {
	                    style:"uranus",
	                    enable:true,
	                    hide_onmobile:true,
	                    hide_under:778,
	                    hide_onleave:true,
	                    hide_delay:200,
	                    hide_delay_mobile:1200,
	                    tmp:'',
	                    left: {
	                        h_align:"left",
	                        v_align:"center",
	                        h_offset:20,
	                        v_offset:0
	                    },
	                    right: {
	                        h_align:"right",
	                        v_align:"center",
	                        h_offset:20,
	                        v_offset:0
	                    }
	                }
	            },
	            gridwidth:1230,
	            gridheight:892,
	            lazyType:"single",
	            shadow:0,
	            spinner:"off",
	            stopLoop:"on",
	            stopAfterLoops:0,
	            stopAtSlide:1,
	            shuffle:"off",
	            autoHeight:"off",
	            disableProgressBar:"on",
	            hideThumbsOnMobile:"on",
	            hideSliderAtLimit:0,
	            hideCaptionAtLimit:0,
	            hideAllCaptionAtLilmit:0,
	            debugMode:false,
	            fallbacks: {
	                simplifyAll:"off",
	                nextSlideOnWindowFocus:"off",
	                disableFocusListener:false,
	            }
	        });
	    }
	});
})();