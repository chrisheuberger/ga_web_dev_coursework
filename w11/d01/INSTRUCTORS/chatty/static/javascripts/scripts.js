
$(function(){

  var socket = io.connect('/');


  var inputBox = $('.wdi-chat-input-box');

  inputBox.find('form').on('submit', function(e){
    e.preventDefault();
    var inputField = inputBox.find('input');
    var message = inputField.val();
    inputField.val('');
    socket.emit('chatSent', { message: message })
  })

  socket.on('chatUpdate', function (data) {
    var newMessage = $('<li>').text(data.message);
    $('.chat-log').append(newMessage);
  });

})
