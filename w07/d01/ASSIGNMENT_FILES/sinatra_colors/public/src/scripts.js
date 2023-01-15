
function setEventHandlers(){
  var button = $('.random-palettes')[0];
  $(button).click(function(){console.log("something is happenging");});
}

$(function(){
  setEventHandlers();
});