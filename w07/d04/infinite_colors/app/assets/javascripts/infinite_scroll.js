var $window = $(window),
    $document = $(document);

function scrollHandler(collection){
  if ($window.height() + $window.scrollTop() >= $document.height()-200){
    collection.fetch();
  }
}

$(function(){
  var paletteCollection = new PaletteCollection();
  paletteCollection.fetch;
  $window.scroll(function(){
    scrollHandler(paletteCollection);
  });
})
