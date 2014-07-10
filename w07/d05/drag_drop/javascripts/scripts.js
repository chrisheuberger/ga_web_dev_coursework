$(function(){
  var sheen = $('<img>').attr('src', 'http://placesheen.com/100/100')
    .addClass('sheen')
    .draggable();

  sheen.appendTo($('#sheen-bin')).hide().fadeIn(3000);

  $('#fade').droppable({
    drop: function(e, dropped){
      $(this).animate({backgroundColor: 'green'}, 500);
      dropped.draggable.fadeOut(500);
    }
  })

  $('#shrink').droppable({
    drop: function(e, dropped){
      $(this).animate({backgroundColor: 'blue'}, 500);
      $(dropped.draggable).animate({
        width: '-=100px',
        height: '-=100px'
      }, 1000)
    }
  })

  $('#enlarge').droppable({
    drop: function(e, dropped){
      $(this).animate({backgroundColor: 'purple'}, 500);
      $(dropped.draggable).animate({
        width: '+=50px',
        height: '+=50px'
      }, 1000)
    }
  })

})
