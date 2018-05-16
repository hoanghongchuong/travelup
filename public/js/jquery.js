jQuery(document).ready(function($){
	$('.menubtn').click(function(){
		$(this).toggleClass('is-active');
	});

  $('.pdetail-content').after().click(function(event) {
    /* Act on the event */
    $(this).toggleClass('auto');
  });

    if($('[data-fancybox="video"]').length) {
        $('[data-fancybox="video"]').fancybox({
            type: 'iframe'
        });
    }
    if($('header.top').length){
      $(window).scroll(function(){
        /*var anchor = $('header.top').offset().top;*/
        var anchor = $('header.top').offset().top;
        /*console.log(anchor);*/
        if(anchor >= 330){
            $('header.top').addClass('cmenu');
        }
        else{
            $('header.top').removeClass('cmenu');
        }
      });
    }
    

    new WOW().init();
    /*$('.to-top').on('click',function(event){
        event.preventDefault();
    $('body, html').stop().animate({scrollTop:0},800)});
    $(window).scroll(function(){
        var anchor=$('.to-top').offset().top;
        if(anchor>1000){
            $('.to-top').css('opacity','1')
        }
        else{
            $('.to-top').css('opacity','0')
        }
    });*/
    
    $(".chk-pay-method:not(:first)").hide();
    $(".cart-pay-choice").on('click', function() {
        event.preventDefault();
        $('.cart-pay-choice').removeClass('active');
        $(this).addClass('active');
        $(this).closest('.cart-pay-choice').find('input [type="radio"]').prop('checked', 'true');
        $accordion = $(this).next();
        if ($accordion.is(':hidden') === true) {
            $(".chk-pay-method").slideUp();
            $accordion.slideDown();
        } 
        else {
            $accordion.slideUp();
        }
    });

    $('.search-open').on('click', function(event) {
        event.preventDefault();
        /* Act on the event */
        $('.search').toggleClass('open');
    });
    $('.search-close').on('click', function(event) {
        event.preventDefault();
        /* Act on the event */
        $('.search').removeClass('open');
    });
    $('.add').on('click',function(){
        var $qty=$(this).closest('.pdetail-quan-wrap').find('.qty');
        var currentVal = parseInt($qty.val());
        if (!isNaN(currentVal)) {
            $qty.val(currentVal + 1);
        }
    });
    $('.minus').on('click',function(){
        var $qty=$(this).closest('.pdetail-quan-wrap').find('.qty');
        var currentVal = parseInt($qty.val());
        if (!isNaN(currentVal) && currentVal > 0) {
            $qty.val(currentVal - 1);
        }
    });
    $("#menu").mmenu({
        // options
        /*"offCanvas": {
                "position": "right"
            }*/
    }, {
        // configuration
        clone: true
    });

    //Tooltip
    $('[data-toggle="tooltip"]').tooltip();

    $('.count').on('click', function(event) {
        event.preventDefault();
        /* Act on the event */
        var number = parseInt($('.qty').val());
        var price = parseInt($('.price').text().replace(".", ""));
        $('.sumtotal').text(price * number + ' VNĐ');
    });

     /* nivoSlider */ 
    $(".slider-area").slick({
      dots: true,
      arrows: true,
      fade: false,
      autoplay:true,
      pauseOnHover:true,
      nextArrow: '<button type="button" class="slick-next"><img src="public/images/index/left.png" title="" alt=""></button>',
      prevArrow: '<button type="button" class="slick-prev"><img src="public/images/index/right.png" title="" alt=""></button>'
    });



    //Del item 
    $('.cart-del').on('click', function(event) {
        event.preventDefault();
        var parent = $(this).parents('.cart-row').html();
        /*console.log(parent);*/
        /* Act on the event */
        $(this).parents('.cart-row').remove();
    });


    $('.cate-slider').slick({
      dots: false,
      arrows: false,
      speed: 500,
      autoplaySpeed: 1000,
      autoplay: true,
      slidesToShow: 3,
      slidesToScroll: 1,
      responsive: [
        {
          breakpoint: 1024,
          settings: {
            slidesToShow: 3
          }
        },
        {
          breakpoint: 992,
          settings: {
            slidesToShow: 2
          }
        },
        {
          breakpoint: 490,
          settings: {
            slidesToShow: 1
          }
        }
        // You can unslick at a given breakpoint now by adding:
        // settings: "unslick"
        // instead of a settings object
      ]
    });

    $('.tour-slider').slick({
      slidesToShow: 4,
      slidesToScroll: 2,
      dots: true,
      arrows: false,
      speed: 500,
      autoplaySpeed: 1000,
      autoplay: true,
      responsive: [
        {
          breakpoint: 1024,
          settings: {
            slidesToShow: 3
          }
        },
        {
          breakpoint: 992,
          settings: {
            slidesToShow: 2
          }
        },
        {
          breakpoint: 490,
          settings: {
            slidesToShow: 1
          }
        }
        // You can unslick at a given breakpoint now by adding:
        // settings: "unslick"
        // instead of a settings object
      ]
    });
    $('.guide-slider').slick({
      slidesToShow: 4,
      slidesToScroll: 2,
      dots: true,
      arrows: false,
      speed: 500,
      autoplaySpeed: 1000,
      autoplay: true,
      responsive: [
        {
          breakpoint: 1024,
          settings: {
            slidesToShow: 3
          }
        },
        {
          breakpoint: 992,
          settings: {
            slidesToShow: 2
          }
        },
        {
          breakpoint: 490,
          settings: {
            slidesToShow: 1
          }
        }
        // You can unslick at a given breakpoint now by adding:
        // settings: "unslick"
        // instead of a settings object
      ]
    });

    $('.team-slider').slick({
      slidesToShow: 1,
      slidesToScroll: 1,
      dots: false,
      arrows: true,
      speed: 500,
      autoplaySpeed: 1000,
      autoplay: false,
      adaptiveHeight:true,
      responsive: [
        {
          breakpoint: 1024,
          settings: {
            slidesToShow: 1
          }
        },
        {
          breakpoint: 992,
          settings: {
            slidesToShow: 1
          }
        },
        {
          breakpoint: 490,
          settings: {
            slidesToShow: 1
          }
        }
        // You can unslick at a given breakpoint now by adding:
        // settings: "unslick"
        // instead of a settings object
      ]
    });

    $('.about-slider').slick({
      slidesToShow: 5,
      slidesToScroll: 1,
      dots: false,
      arrows: false,
      speed: 500,
      autoplaySpeed: 1000,
      autoplay: true,
      responsive: [
        {
          breakpoint: 1024,
          settings: {
            slidesToShow: 4
          }
        },
        {
          breakpoint: 992,
          settings: {
            slidesToShow: 3
          }
        },
        {
          breakpoint: 490,
          settings: {
            slidesToShow: 1
          }
        }
        // You can unslick at a given breakpoint now by adding:
        // settings: "unslick"
        // instead of a settings object
      ]
    });

    $('.cus-slider').slick({
      slidesToShow: 2,
      slidesToScroll: 1,
      dots: false,
      arrows: true,
      speed: 500,
      autoplaySpeed: 1000,
      autoplay: true,
      responsive: [
        {
          breakpoint: 1024,
          settings: {
            slidesToShow: 2
          }
        },
        {
          breakpoint: 992,
          settings: {
            slidesToShow: 2
          }
        },
        {
          breakpoint: 490,
          settings: {
            slidesToShow: 1
          }
        }
        // You can unslick at a given breakpoint now by adding:
        // settings: "unslick"
        // instead of a settings object
      ]
    });

    $('.blog-slider').slick({
      slidesToShow: 3,
      slidesToScroll: 1,
      dots: true,
      arrows: false,
      speed: 500,
      autoplaySpeed: 1000,
      autoplay: true,
      responsive: [
        {
          breakpoint: 1024,
          settings: {
            slidesToShow: 3
          }
        },
        {
          breakpoint: 992,
          settings: {
            slidesToShow: 2
          }
        },
        {
          breakpoint: 490,
          settings: {
            slidesToShow: 1
          }
        }
        // You can unslick at a given breakpoint now by adding:
        // settings: "unslick"
        // instead of a settings object
      ]
    });

    $('.slider-qv').slick({
      slidesToShow: 1,
      slidesToScroll: 1,
      arrows: false,
      fade: false,
      adaptiveHeight:true,
      /*autoplay:true,*/
      autoplaySpeed:1000,
      lazyLoad:'progressive',
      pauseOnHover:true,
      asNavFor: '.slider-navqv'
    });
    $('.slider-navqv').slick({
      slidesToShow: 5,
      slidesToScroll: 1,
      asNavFor: '.slider-qv',
      dots: false,
      centerMode: true,
      centerPadding: '0',
      /*vertical: false,*/
      focusOnSelect: true
    });

    $('.toure-slider').slick({
      slidesToShow: 4,
      slidesToScroll: 2,
      dots: false,
      arrows: false,
      speed: 500,
      autoplaySpeed: 1000,
      autoplay: true,
      responsive: [
        {
          breakpoint: 1024,
          settings: {
            slidesToShow: 3
          }
        },
        {
          breakpoint: 992,
          settings: {
            slidesToShow: 2
          }
        },
        {
          breakpoint: 490,
          settings: {
            slidesToShow: 1
          }
        }
        // You can unslick at a given breakpoint now by adding:
        // settings: "unslick"
        // instead of a settings object
      ]
    });

    // $('.regis-link').click(function(e){
    //     e.preventDefault();
    //     $('.on').removeClass('on');
    //     el = $(this);
    //     name = el.attr('href');
    //     if($(window).width() >= 992) {
    //         pos = $(name).position().top;
    //     }
    //     else {
    //         pos = $(name).position().top + 80;
    //     }
    //     el.addClass('on');
    //     $('html,body').stop().animate({scrollTop:pos},600);
    //     return false;
    // });
});