function letThereBeLove(numHearts){

  for (var i = 0; i < numHearts; i++) {
    var newHeart = $("<p class='hearts'>&hearts;</p>");
    $('body').append(newHeart);
  };

  $('.hearts').each(function(idx, el){
    $(el).animate({
      top: ((Math.random()*200) - 50) + '%',
      left: ((Math.random()*200) - 50) + '%',
      opacity: 0
    }, 2000, 'linear', function(){ $(this).remove(); }
    );
  });

}

$(function(){

  setInterval(function(){
    letThereBeLove(5);
  }, 125)

})
