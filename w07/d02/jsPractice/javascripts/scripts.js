
function Person (name) {
  this.name = name;
  this.el = $('<li>').html(this.name);
}


$(function(){
  $('.submit-button').on('click', function() {
    var text = ($(this).val());
    var thePerson = new Person($('.text-input').val());
    $('.name-li').append(thePerson.el);
    });
});


