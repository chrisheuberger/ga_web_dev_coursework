$(function(){
  var kittenBin = $('.kitten-container');
  fadeInKitten();

  $('.meow').droppable({
    drop: function(e, dropped){
      $(this).animate({backgroundColor: 'white'}, 1000)
      .animate({backgroundColor: 'green'}, 1000);
      dropped.draggable.fadeOut(1000);
      var kittenUrl = dropped.draggable[0].src
      var newKitten = new Kitten(kittenUrl);
      newKitten.meowThisKitten(newKitten.url);
      setTimeout(function(){
        fadeInKitten();
      }, 1600);
    }
  })

  $('.not-meow').droppable({
    drop: function(e, dropped){
      $(this).animate({backgroundColor: 'white'}, 1000)
      .animate({backgroundColor: 'pink'}, 1000);
      dropped.draggable.fadeOut(1000);
      setTimeout(function(){
        fadeInKitten();
      }, 1600);
    }
  })
});

function Kitten(url){
  this.url = url;
};

Kitten.prototype.meowThisKitten = function(url){
  var that = this;
  $.ajax({
    url: '/kittens',
    method: 'post',
    dataType: 'json',
    data: { kitten: {url: url } },
    success: function(data){
      console.log('kitten with url "' + data.url + '" was added to the database.');
    }
  });
}

function fadeInKitten(){
  var newImg = $('<img>');
  var kittenImg = newImg.attr('src', randomKittenUrl());
  kittenImg.addClass('kitten').draggable();
  $('.kitten-container').append(kittenImg).hide().fadeIn(1000)
}

function randomKittenUrl(){
  var url = 'http://placekitten.com/';
  var height = (Math.floor(Math.random() * (500 - 200 + 1)) + 200).toString();
  var width = (Math.floor(Math.random() * (500 - 200 + 1)) + 200).toString();
  return url + width + '/' + height;
};