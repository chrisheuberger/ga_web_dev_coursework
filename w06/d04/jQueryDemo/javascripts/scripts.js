
function randomColor(){
  var maxColor = 16777215;
  var hexColor = Math.floor(Math.random() * maxColor).toString(16);
  return "#" + hexColor;
}

$(function(){

  $('#text-field').on('keyup', function(){
    var text = $('#text-field').val();
    var newNode = $('<li>').html(text);
    $('#text-list').prepend(newNode);
  })

  $('#disco-button').on('click', function(){
    var handle = setInterval(function(){
      $('body').css('backgroundColor', randomColor())
    }, 50);
    // var stopPlease = $('<button>');
    // stopPlease.on('click', function(){
    //   clearInterval(handle);
    // })
    // $('body').append(stopPlease);
  })

  $('#clear-button').on('click', function(){
    $('#text-list').html('');
  })

})
