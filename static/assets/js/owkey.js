/**
 * owkey.js
 * Description: 
 *
 * 
 * 
 * 
 */
(function() {
	$('body').on('click', '.menu-btn', function(event) {
		var varthis = $(this);
	    varthis.toggleClass('open');
	    $('.nav-box').toggleClass('open');
	    $('body').toggleClass('nav-open');
	});
	$('.nav-box .menu-item-has-children').on('click', function(e) {  
		var varthis = $(this);            
	    if(e.target.tagName == "A")
	    {
	        if(e.target.attributes[0].nodeValue == "#")
	        {
	            e.preventDefault();
	            if(varthis.hasClass('show-bx'))
	            {
	                varthis.removeClass('show-bx');    
	            }
	            else
	            {
	                $(".nav-box .menu-item-has-children").removeClass("show-bx");  
	                varthis.addClass('show-bx');       
	            }
	        }
	    }
	    if(e.target.tagName != "A"){
	        e.preventDefault(); 
	        if(varthis.hasClass('show-bx'))
	        {
	            varthis.removeClass('show-bx');    
	        }
	        else
	        {
	            $(".nav-box .menu-item-has-children").removeClass("show-bx");  
	            varthis.addClass('show-bx');       
	        }
	    }
	});
	$(window).scroll(function () {
	    if ($(this).scrollTop() > 100) {
	        $('.scrollup').fadeIn();
	    } else {
	        $('.scrollup').fadeOut();
	    }
	});
	$('.scrollup').on('click', function () {
	    $("html, body").animate({
	        scrollTop: 0
	    }, 600);
	    return false;
	});   
	$('a.page-scroll').bind('click', function(event) {
	    var $anchor = $(this);
	    $('html, body').stop().animate({
	        scrollTop: $($anchor.attr('href')).offset().top
	    }, 2000, 'easeInOutExpo');
	    event.preventDefault();
	});
	$('.mils-slider').slick({
	    infinite: false,
	    speed: 300,
	    slidesToShow: 6,
	    slidesToScroll: 1,
	    autoplay: true,
	    autoplaySpeed: 2000,
	    responsive: [
	    {
	    breakpoint: 1024,
	    settings: {
	    slidesToShow: 3,
	    slidesToScroll: 3,
	    infinite: true,
	    dots: true
	    }
	    },
	    {
	    breakpoint: 600,
	    settings: {
	    slidesToShow: 2,
	    slidesToScroll: 2
	    }
	    },
	    {
	    breakpoint: 480,
	    settings: {
	    slidesToShow: 1,
	    slidesToScroll: 1
	    }
	    }
	    // You can unslick at a given breakpoint now by adding:
	    // settings: "unslick"
	    // instead of a settings object
	    ]
	});
	$('.team-slider').slick({
	    dots: true,
	    infinite: true,
	    speed: 300,
	    slidesToShow: 3,
	    slidesToScroll: 1,
	    autoplay: true,
	    autoplaySpeed: 2000,
	    arrows: false,
	    responsive: [
	    {
	    breakpoint: 1025,
	    settings: {
	    slidesToShow: 3
	    }
	    },
	    {
	    breakpoint: 1024,
	    settings: {
	    slidesToShow: 2
	    }
	    },
	    {
	    breakpoint: 640,
	    settings: {
	    slidesToShow: 1,
	    slidesToScroll: 1
	    }
	    }
	    // You can unslick at a given breakpoint now by adding:
	    // settings: "unslick"
	    // instead of a settings object
	    ]
	});  
	$('.testimonial-slider').slick({
	    infinite: false,
	    speed: 300,
	    slidesToShow: 1,
	    slidesToScroll: 1,
	    autoplay: true,
	    autoplaySpeed: 2000,
	    dots: true,        
	});
	$('.carousel-slider').slick({
	  infinite: true,
	  speed: 300,
	  slidesToShow: 1,
	  slidesToScroll: 1,
	  autoplay: true,
	  autoplaySpeed: 2000,
	});
	// init Isotope            
    $('.grid').imagesLoaded( function() {
        var $grid = $('.grid').isotope({
          itemSelector: '.element-item',
          layoutMode: 'fitRows'
        });
        $('.filters-button-group').on( 'click', 'button', function() {
          var filterValue = $( this ).attr('data-filter');
          // use filterFn if matches value
          filterValue = filterValue;
          $grid.isotope({ filter: filterValue });
        });
        // change is-checked class on buttons
        $('.button-group').each( function( i, buttonGroup ) {
          var $buttonGroup = $( buttonGroup );
          $buttonGroup.on( 'click', 'button', function() {
            $buttonGroup.find('.is-checked').removeClass('is-checked');
            $( this ).addClass('is-checked');
          });
        });
    });
	// bind filter button click 	
})();