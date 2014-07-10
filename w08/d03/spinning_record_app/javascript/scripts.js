


$(window).on("scroll", function(){

  var d = $(window).scrollTop()/$(window).height() * 360;

  $(".record").css({
    'transform': 'rotate('+d+'deg)'
  });


})
