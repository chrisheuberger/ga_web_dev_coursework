console.log("Meooooooow");

function Kitten(url) {
  this.url = url
}

Kitten.prototype.create = function(paramObject){
  var that = this;
  $.ajax({
    url: '/kittens',
    method: 'post',
    dataType: 'json',
    data: {kitten: paramObject},
    success: function(data) {
      console.log(data);
    }
  })
}

function getKitten() {
  $('#kitten.img').html('');
  var number = Math.floor(Math.random() * (1000 - 100 + 1)) + 100;
  var url = "http://placekitten.com/"+ number + "/" + number
  var kitten = $('<img>').attr('src', url)
  .addClass('kitten')
  .draggable()
  .appendTo($('#kitten'));
}

$(function () {
  getKitten();

  $('#not-meow').droppable({
    drop: function(e, dropped) {
      dropped.draggable.fadeOut(1000);
      getKitten()
    }
  })

  $('#meow').droppable({
    drop: function(e, dropped) {
      $(this).animate({backgroundColor: 'fuchsia'}, 300).animate({backgroundColor: 'red'}, 300);
      var newKittenUrl = dropped.draggable[0].src;
      var newKitten = new Kitten(newKittenUrl);
      newKitten.create({url: newKittenUrl})
      dropped.draggable.fadeOut(2000);
      getKitten();
    }
  })
})
