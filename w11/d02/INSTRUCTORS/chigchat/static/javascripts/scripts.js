
$(function(){

  var socket = io.connect('/');

  $('form').on('submit', function(e){
    e.preventDefault();
    var inputField = $(this).find('input');
    var textMessage = inputField.val();
    inputField.val('');
    socket.emit('chatSent', {message: textMessage});
  })

  socket.on('chatUpdate', function(data){
    var newMessage = $('<li>').text(data.message)
    $('.messages').append(newMessage);
  })

})
