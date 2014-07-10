
$(function(){
  $('.text-input').keyup(function() {
    var text = ($(this).val());
    $h1El = $('.h1');
    $h1El.text(text);
    $h1El.css('font-size', text.length+"px");
    });
});
