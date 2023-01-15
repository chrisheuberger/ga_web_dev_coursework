$(function(){
  var sheen = $('<img>').attr('src', 'http://placesheen.com/100/100')
        .addClass('sheen')
        .draggable();

  //$('#sheen-bin').append(sheen);
  sheen.appendTo($('#sheen-bin')).hide().fadeIn(3000);

  $('#fade').droppable({
    drop: function(e, dropped){
      $(this).animate({backgroundColor: 'red'}, 100)
        .animate({backgroundColor: 'blue'}, 500);
      dropped.draggable.fadeOut(100);
    }
  })

  $('#shrink').droppable({
    drop: function(e, dropped){
      $(dropped.draggable).animate({
        width: '-=10px',
        height: '-=10px'
      }, 1000)
    }
  })

  $('#embiggen').droppable({
    drop: function(e, dropped){
      $(dropped.draggable).animate({
        width: '+=100px',
        height: '+=100px'
      }, 1000)
    }
  })

$('#clone').droppable({
  drop: function(e, dropped){
    $(dropped.draggable).clone().draggable().appendTo('#sheen-bin');
  }
})


});