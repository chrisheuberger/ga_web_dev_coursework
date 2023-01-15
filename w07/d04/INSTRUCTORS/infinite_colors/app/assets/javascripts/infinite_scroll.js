var $window  = $(window),
    $document = $(document);

function scrollHandler(collection){
  if ($window.height() + $window.scrollTop() >= $document.height()-200){
    collection.fetch();
  }
}

$(function(){
  var paletteCollection = new PaletteCollection();
  paletteCollection.fetch();
  //$window.on('scroll', function(){})
  $window.scroll(function(){
    scrollHandler(paletteCollection);
  });

  $window.change(function(){
    console.log("window scrolltop", window.scrollTop());
    console.log("windowheight", window.height());
  })

})