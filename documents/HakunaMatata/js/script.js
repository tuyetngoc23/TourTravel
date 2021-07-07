
//CounterUp
$(document).ready(function(){
    $(".counter").counterUp({
        delay: 10,
        time: 1200
    });
});

//owl Carousel

$(document).ready(function () {
    $("#owl-one").owlCarousel({
        items: 3,
        navigation: true,
        navigationText: ["", ""],
        autoPlay: true,
        responsive:{
          0:{
              items:1
          },
          768:{
              items:2
          },            
          1024:{
              items:3
          }
      }
    });
    $("#owl-two").owlCarousel({
      items: 3,
      navigation: true,
      navigationText: ["", ""],
      autoPlay: true,
      responsive:{
        0:{
            items:1
        },
        768:{
            items:2
        },            
        1024:{
            items:3
        }
    }
  });
});

//back top top
var btn = $('.back-to-top');

$(window).scroll(function() {
  if ($(window).scrollTop() > 300) {
    btn.addClass('show');
  } else {
    btn.removeClass('show');
  }
});

btn.on('click', function(e) {
  e.preventDefault();
  $('html, body').animate({scrollTop:0}, '300');
});
