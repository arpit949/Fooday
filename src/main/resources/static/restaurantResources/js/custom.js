$(document).ready(function(){
	$(".et-preloader").fadeOut("slow");
	//-------------------------------
	// Mobile Nav Menu
	//-------------------------------
	if($("#et-mobile-nav").length) {
		$('#et-mobile-nav').hcOffcanvasNav({
			maxWidth: 768
		});
	}

	//-------------------------------
	// Google Maps Initialization
	//-------------------------------
	if ($('#loadmaps').length) {
		var singleMap   =   false;
		if($('#loadmaps').hasClass('single-map')) {
			singleMap   =   true;
		}
		loadMap(singleMap);
	}

	//-------------------------------
	// Moving background particles
	//-------------------------------
	if ($('#howitworks').length) {
	// Some random colors
	const colors = ["#3CC157", "#2AA7FF", "#ffffff", "#FCBC0F", "#F85F36"];

	const numBalls = 50;
	const balls = [];

	for (let i = 0; i < numBalls; i++) {
		let ball = document.createElement("div");
		ball.classList.add("ball");
		ball.style.background = colors[Math.floor(Math.random() * colors.length)];
		ball.style.left = `${Math.floor(Math.random() * 100)}vw`;
		ball.style.top = `${Math.floor(Math.random() * 100)}vh`;
		ball.style.transform = `scale(${Math.random()})`;
		ball.style.width = `${Math.random()}em`;
		ball.style.height = ball.style.width;

		balls.push(ball);
		document.getElementById('howitworks').append(ball);
	}

// Keyframes
balls.forEach((el, i, ra) => {
	let to = {
		x: Math.random() * (i % 2 === 0 ? -11 : 11),
		y: Math.random() * 12
	};

	let anim = el.animate(
		[
		{ transform: "translate(0, 0)" },
		{ transform: `translate(${to.x}rem, ${to.y}rem)` }
		],
		{
      duration: (Math.random() + 1) * 2000, // random duration
      direction: "alternate",
      fill: "both",
      iterations: Infinity,
      easing: "ease-in-out"
  }
  );
});	
}


	//-------------------------------
	// Toggle Events list/grid view
	//-------------------------------
	if($(".search-result").length) {
		$(".search-result.list-view").hide();
		$('#event-grid-view').on("click", function(){
			$(".search-result.grid-view").show();
			$(".search-result.list-view").hide();
			$(this).addClass("active");
			$("#event-list-view").removeClass("active");
		})
		$('#event-list-view').on("click", function(){
			$(".search-result.list-view").show();
			$(".search-result.grid-view").hide();
			$(this).addClass("active");
			$("#event-grid-view").removeClass("active");
		})
	}
	
	//-------------------------------
	// Toggle Switcher
	//-------------------------------
	if($(".m_switch_check").length) {
		$(".m_switch_check:checkbox").mSwitch();
	}
	
	//-------------------------------
	// Add/Remove Image
	//-------------------------------
	if($(".addgallery").length) {
		$('.file-upload input').change(function(event){
			var imageHTML = '';

			$(event.target.files).each(function(index){
				var tmppath = URL.createObjectURL(event.target.files[index]);
				// imageHTML += '<div class="image-box no-hover position-relative"><img src="'+tmppath+'" alt="img"><span class="badge badge-primary ml-auto mt-3 pointer border-0 font-weight-normal remove-image position-absolute" data-targetimg="'+ index +'"><i class="fas fa-trash"></i></span></div>';
				imageHTML += '<div class="mt-3 gallery-img video-box bg-white p-4 shadow-box pointer position-relative"><i class="remove-content rounded-pill fas fa-times bg-danger text-white shadow position-absolute"></i><img src="'+tmppath+'" alt="img" class="img-fluid"><span class="make-featured">Set as featured image</span></div>';
			});

			$('.append-gallery').html(imageHTML);
			event.preventDefault();
		});

		$(".video-box .remove-content").on("click", function(){
			$(this).closest(".video-box").remove();
		});
	}


	
	//-------------------------------
	// Toggle Search Map
	//-------------------------------
	if($(".search-map").length) {
		$("#toggle_map").on("click", function(){
			$(".search-map").toggle("show");
			$(".map-wrapper").toggleClass("mb-5");
		})
	}
	
	//-------------------------------
	// Toggle Pricing Plans
	//-------------------------------
	if($("#toggle_plans").length) {
		$("#toggle_plans").on("click", function(){
			if($(this).is(':checked')){
				$("#monthly_plans").show();
				$("#yearly_plans").hide();
			}else{
				$("#monthly_plans").hide();
				$("#yearly_plans").show();
			}
		})
	}
	
	//-------------------------------
	// Add/Remove Chef
	//-------------------------------
	if($(".addchef").length) {
		$(".addchef table .remove-chef").on("click", function(){
			if((".chefs-record tbody tr").length === 1){
				$(".chefs-record").remove();
				alert('hi');
			}
			$(this).closest("tr").remove();
		});
		$(".remove-chef").on("click", function(){
			if((".chefs-record tbody tr").length === 1){
				$(".chefs-record").remove();
				alert('hi');
			}
			$(this).closest("tr").remove();
		});
		$(".create-chef").on("click", function(){
			var r_chef_name = document.getElementById("r_chef_name").value;
			var r_chef_email = document.getElementById("r_chef_email").value;
			var r_chef_contact = document.getElementById("r_chef_contact").value;
			var r_chef_photo = document.getElementById("r_chef_photo").value;
			
			$(".chefs-record tbody").append('<tr><td>'+r_chef_name+'</td><td><p class="description">'+r_chef_email+'</p></td><td><p class="description">'+r_chef_contact+'</p></td><td><div class="position-relative text-center speaker-avatar"><img src="'+r_chef_photo+'" class="img-fluid" alt="img"></div></td><td><input type="button" class="badge bg-danger text-white remove-chef ml-3 mt-3 pointer border-0 font-weight-normal position-absolute" onclick="deleteData(this)" /><i class="fas fa-trash"></i></td></tr>');
		});
	}
	
	//-------------------------------
	// Add/Remove Coupon
	//-------------------------------
	if($(".coupon-record").length) {
		$(".coupon-record .remove-coupon").on("click", function(){
			if((".coupon-record tbody tr").length === 1){
				$(".coupon-record").remove();
				alert();
			}
			$(this).closest("tr").remove();
		});
		$(".create-coupon").on("click", function(){
			$(".coupon-record tbody").append('<tr><td>19/12/2020</td><td><p class="description">30%</p></td><td>12/12/2020</td><td><p class="description">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.</p></td><td><span class="badge bg-danger text-white remove-coupon ml-3 mt-3 pointer border-0 font-weight-normal"><i class="fas fa-trash"></i></span></td></tr>');
		});
	}
	
	//-------------------------------
	// Add/Remove Coupon
	//-------------------------------
	if($(".special-recipe-record").length) {
		$(".special-recipe-record .remove-recipe").on("click", function(){
			if((".special-recipe-record tbody tr").length === 1){
				$(".special-recipe-record").remove();
				alert();
			}
			$(this).closest("tr").remove();
		});
		$(".create-recipe").on("click", function(){
			$(".special-recipe-record tbody").append('<tr><td>Cheese cake</td><td><p class="description">$99.99</p></td><td></td><td><p class="description">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.</p></td><td><span class="badge bg-danger text-white remove-recipe ml-3 mt-3 pointer border-0 font-weight-normal"><i class="fas fa-trash"></i></span></td></tr>');
		});
	}
	
	//-------------------------------
	// Stepper
	//-------------------------------
	if($('.et-stepper').length){
		$('.et-stepper > a').on("click", function(){
			$(this).addClass("current").siblings('a').removeClass("current");
		})
	}

	//-------------------------------
	// Generic Smooth Scroll on Anchor
	//-------------------------------
	$(document).on('click', 'a[href^="#"]:not(.nav-link)', function (event) {
		event.preventDefault();
		$(this).addClass("active").siblings().removeClass("active");
		$('html, body').animate({
			scrollTop: $($.attr(this, 'href')).offset().top-75
		}, 500);
	});

	//-------------------------------
	// Vertical Accordion
	//-------------------------------
	if ($('.accordion').length) {
		var horizontalAccordions = $(".accordion.width"); 
		horizontalAccordions.each(function() { 
			var accordion = $(this); 
			var collapse = accordion.find(".collapse"); 
			var bodies = collapse.find("> *"); 
			accordion.height(accordion.height()); 
			bodies.width(bodies.eq(0).width()); 
			collapse.not(".show").each(function() { 
				$(this).parent().find("[data-toggle='collapse']") 
				.addClass("collapsed"); 
			}); 
		}); 
	}

	//-------------------------------
	// jQuery Select2
	//-------------------------------
	if ($('.select2').length) {
		$('.select2').select2({
			minimumResultsForSearch: Infinity
		});
	}


	//-------------------------------
	// Lightbox
	//-------------------------------
	if($("a.lightbox").length) {
		$("a.lightbox").fancybox();
	}

	//-------------------------------
	// Custom Scrollbar
	//-------------------------------
	if($(".scrollbar-inner").length) {
		jQuery('.scrollbar-inner').scrollbar();
	}



	//-------------------------------
	// Range Slider
	//-------------------------------
	if($(".js-range-slider").length) {
		$(".js-range-slider").ionRangeSlider({
			skin: "big"
		});
	}

	
	//-------------------------------
	// Bootstrap DateTimePicker
	//-------------------------------
	if($(".form_datetime").length) {
		$(".form_datetime").datetimepicker({format: 'yyyy-mm-dd hh:ii'});
	}

	
	//-------------------------------
	// Initiliaze Tooltip
	//-------------------------------
	if($('[data-toggle="tooltip"]').length) {
		$(function () {
			$('[data-toggle="tooltip"]').tooltip({
				// Pass options here
			})
		})
	}
	
	/*
	  =======================================================================
  		Back to top
	  =======================================================================
	  */
	  $(window).scroll(function() {
	  	if ($(this).scrollTop()) {
	  		$('#backTop').fadeIn();
	  	} else {
	  		$('#backTop').fadeOut();
	  	}
	  });
	  $("#backTop").on('click', function() {
	  	$("html, body").animate({
	  		scrollTop: 0
	  	}, 980);
	  });

	});


	//-------------------------------
	// Featured Restaurants
	//-------------------------------
	if($('.et-featured-list').length) {
		$('.et-featured-list .owl-carousel').owlCarousel({
			loop:true,
			padding:30,
			items: 3,
			responsive:{
				0:{
					items:1,
					nav:true
				},
				768:{
					items:2,
					nav:false
				},
				992:{
					items:3,
					nav:true,
					loop:false
				}
			}
		})
	}

	//-------------------------------
	// Promo Card
	//-------------------------------
	if($('.promo-card').length) {
		$(".promo-card").on("click", function(){
			$(this).toggleClass("active");
		})
	}

	//-------------------------------
	// Find by Cuisines
	//-------------------------------
	if($('.et-cuisines').length) {
		$('.et-cuisines .owl-carousel').owlCarousel({
			loop:true,
			items: 3,
			responsive:{
				0:{
					items:1,
					nav:true
				},
				768:{
					items:2,
					nav:false
				},
				992:{
					items:3,
					nav:true,
					loop:false
				}
			}
		})
	}

	//-------------------------------
	// Find by Location
	//-------------------------------
	if($('.et-location').length) {
		$('.et-location .owl-carousel').owlCarousel({
			loop:true,
			items: 4,
			responsive:{
				0:{
					items:1,
					nav:true
				},
				768:{
					items:3,
					nav:false
				},
				992:{
					items:4,
					nav:true,
					loop:false
				}
			}
		})
	}
	
	
    /*==== Testimonial Slider ====*/
    if ($(".testimonialSlider").length) {
        $('.testimonialSlider').slick({
            infinite: true,
            slidesToShow: 2,
            slidesToScroll: 2,
            speed: 1500,
            autoplay: true,
            responsive: [{
                breakpoint: 576,
                settings: {
                    slidesToShow: 1,
                    slidesToScroll: 1
                }
            }]
        });
    };
	
	 /*==== Monthly Deals Slider ====*/
    if ($(".monthly-deals-slider").length) {
        $('.monthly-deals-slider').slick({
            infinite: true,
            slidesToShow: 1,
            slidesToScroll: 1,
            speed: 1500,
            autoplay: true,
            appendArrows: $(".monthly-deals-slider .slideCaption"),
            prevArrow: '<i class="icon-next prev slick-prev"></i>',
            nextArrow: '<i class="icon-next next slick-next"></i>'
        });
    };
	
	 /*==== Special Recipes Slider ====*/
    if ($(".specialRecipes").length) {
        $('.specialRecipes').slick({
            infinite: false,
            slidesToShow: 4,
            speed: 1500,
            autoplay: true,
            arrows: false,
            responsive: [{
                    breakpoint: 1401,
                    settings: {
                        slidesToShow: 3,
                        slidesToScroll: 3
                    }
                },
                {
                    breakpoint: 1200,
                    settings: {
                        slidesToShow: 2,
                        slidesToScroll: 2
                    }
                },
                {
                    breakpoint: 768,
                    settings: {
                        slidesToShow: 1,
                        slidesToScroll: 1
                    }
                }
            ]
        });
    };

	//-------------------------------
	// Blog Home Horizontal
	//-------------------------------
	if($('.et-news').length) {
		$('.et-news .owl-carousel.h').owlCarousel({
			loop:true,
			items: 3,
			margin: 20,
			responsive:{
				0:{
					items:1,
					nav:true
				},
				768:{
					items:3,
					nav:false
				}
			}
		})
	}
	
	//-------------------------------
	// Blog Home Vertical
	//-------------------------------
	if($('.et-news').length) {
		$('.et-news .owl-carousel.v').owlCarousel({
			loop:true,
			autoplay:true,
			items: 1,
			margin: 20
		})
	}

	//-------------------------------
	// Star Rating
	//-------------------------------

	if($('.stars').length){

		/* 1. Visualizing things on Hover - See next part for action on click */
		$('.stars li').on('mouseover', function(){
			var onStar = parseInt($(this).data('value'), 10); // The star currently mouse on

			// Now highlight all the stars that's not after the current hovered star
			$(this).parent().children('li.star').each(function(e){
				if (e < onStar) {
					$(this).addClass('hover');
				}
				else {
					$(this).removeClass('hover');
				}
			});

		}).on('mouseout', function(){
			$(this).parent().children('li.star').each(function(e){
				$(this).removeClass('hover');
			});
		});

		/* 2. Action to perform on click */
		$('.stars li').on('click', function(){
			var onStar = parseInt($(this).data('value'), 10); // The star currently selected
			var stars = $(this).parent().children('li.star');

			for (i = 0; i < stars.length; i++) {
				$(stars[i]).removeClass('selected');
			}

			for (i = 0; i < onStar; i++) {
				$(stars[i]).addClass('selected');
			}

			// JUST RESPONSE (Not needed)
			var ratingValue = parseInt($('.stars li.selected').last().data('value'), 10);
			var msg = "";
			if (ratingValue > 1) {
				msg = "You rated " + ratingValue + " stars.";
			}
			else {
				msg = "You rated " + ratingValue + " stars.";
			}
			responseMessage(msg);

		});
		function responseMessage(msg) {
			$('.rate-result').fadeIn(200);
			$('.rate-result').text(msg);
		}
	}


	//-------------------------------
	// Lightbox
	//-------------------------------
	if($(".fancybox").length) {
		$(".fancybox").fancybox();
	}


//-------------------------------
// Google Maps
//-------------------------------
function loadMap(singleMap) {
	var docWidth    =   $(document).width();
	if(singleMap) {
		var mapZoom     =   13,
		mapCenter   =   [-33.9169667, 151.2345321]
		var lsitingLocations = [
		['Maroubra Beach', -33.9169667, 151.2345321, 1]
		];

		var listingContents =   [
		'<div class="listing-map-window"><div class="pr-3"><img src="img/restaurant-logo-3.png" class="thumbnail" alt="img"><div class="rating small text-center position-absolute"><i class="fas fa-star text-yellow"></i><i class="fas fa-star text-yellow"></i><i class="fas fa-star text-yellow"></i><i class="fas fa-star"></i><i class="fas fa-star"></i></div></div><div class="pl-1"><h5 class="text-uppercase">Food Festival</h5><span class="meta mb-2 d-block pr-1 pl-1" title="Max. delivery time"><i class="rounded-pill mr-1 icon-bg bg-white"><img src="img/icons/scooter.png" class="f-icon" alt="img"></i><label class="align-bottom bit-bold">Max 30 min.</label></span><span class="meta d-block pr-1 pl-1" title="Contact number"><i class="rounded-pill mr-1 icon-bg bg-white"><img src="img/icons/phone.png" class="f-icon" alt="img"></i><label class="align-bottom text-yellow bit-bold">+22 123 456 7</label></span></div></div>',
		]
	} else {

		var mapZoom     =   16;
		if($('.sidebar-map-fixed').length && docWidth > 980){
			var footerHeight    =   $('.et-copyright-bar').height(),
			windowHeight    =   $(window).height(),
			mapTop          =   $('.sidebar-map-fixed').offset().top,
			mapHeight       =   parseInt(windowHeight-(mapTop+footerHeight));


			$('.sidebar-map-fixed').css('height', mapHeight+'px');
			mapZoom     =   14;
		}
		if(jQuery('section.et-maps-banner-wrapper').length) {
			mapZoom	=	15;
		}


		if(docWidth > 319 && docWidth < 980) {
			mapZoom =   14
		}
		var mapCenter   =   [-33.91722, 151.23064];
		var lsitingLocations = [
		['Bondi Beach', -33.9148339, 151.2404048, 4],
		['new beach', -33.9169667, 151.2345321, 3],
		['new beach', -33.9158827, 151.2314457, 2],
		['new beach', -33.9175679, 151.2255712, 1],
		];

		var listingContents =   [
		'<div class="listing-map-window"><div class="pr-3"><img src="img/restaurant-logo-3.png" class="thumbnail" alt="img"><div class="rating small text-center position-absolute"><i class="fas fa-star text-yellow"></i><i class="fas fa-star text-yellow"></i><i class="fas fa-star text-yellow"></i><i class="fas fa-star"></i><i class="fas fa-star"></i></div></div><div class="pl-1"><h5 class="text-uppercase">Food Festival</h5><span class="meta mb-2 d-block pr-1 pl-1" title="Max. delivery time"><i class="rounded-pill mr-1 icon-bg bg-white"><img src="img/icons/scooter.png" class="f-icon" alt="img"></i><label class="align-bottom bit-bold">Max 30 min.</label></span><span class="meta d-block pr-1 pl-1" title="Contact number"><i class="rounded-pill mr-1 icon-bg bg-white"><img src="img/icons/phone.png" class="f-icon" alt="img"></i><label class="align-bottom text-yellow bit-bold">+22 123 456 7</label></span></div></div>',
		]
	}


	var map = new google.maps.Map(document.getElementById('loadmaps'), {
		zoom: mapZoom,
		center: new google.maps.LatLng(mapCenter[0], mapCenter[1]),
		mapTypeId: google.maps.MapTypeId.TERRAIN
	});

	var infowindow = new google.maps.InfoWindow();

	var marker, i;

	for (i = 0; i < lsitingLocations.length; i++) {
		marker = new google.maps.Marker({
			position: new google.maps.LatLng(lsitingLocations[i][1], lsitingLocations[i][2]),
			map: map,
			icon: 'restaurantResources/image/marker.png'
		});
		if(docWidth > 767) {
			google.maps.event.addListener(marker, 'click', (function(marker, i) {
				return function() {
					infowindow.setContent(listingContents[0]);
					infowindow.open(map, marker);
				}
			})(marker, i));
		}
	}
}
