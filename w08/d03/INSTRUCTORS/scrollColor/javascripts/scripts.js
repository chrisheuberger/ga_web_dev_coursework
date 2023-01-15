

function fadeBackgroundColor(){
  var scrollTop = $(window).scrollTop();
  console.log('scrollTop: ', scrollTop);
  var documentHeigth = $(document).height();
  console.log('documentHeigth: ', documentHeigth);
  var scrollRatio = scrollTop/documentHeigth;
  $('body').css('backgroundColor', 'rgba(200, 200, 255, '+ scrollRatio +')');
}


function updateBannerImagePosition(){

  var scrollTop = $(window).scrollTop();
  $('.para-image').each(function(idx, ele){

    var imageBanner = $(ele).parent();
    var imageStart = imageBanner.position().top;
    var newTop = .9*(scrollTop - imageStart);

    $(ele).css('top', newTop)
  })

}


$(window).on('scroll', function(){

  fadeBackgroundColor();

   updateBannerImagePosition()

  var scrollTop = $(window).scrollTop();

  $('.flying-image').css('left', scrollTop);


})
