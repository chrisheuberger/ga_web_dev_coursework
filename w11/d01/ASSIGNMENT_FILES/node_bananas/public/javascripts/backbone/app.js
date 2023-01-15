var Bananapp = Bananapp || { Models: {}, Collections: {}, Views: {}, };


Bananapp.initialize =  function(){

  var collection = new Bananapp.Collections.MonkeyCollection();

  var listView = new Bananapp.Views.MonkeyListView({
    collection: collection,
    el: $('.monkey-list')
  });

  collection.fetch();

  $('.monkeys').find('form').on('submit', function(e){
    e.preventDefault();
    var monkeyName = $('input').val();
    $('input').val('');
    collection.create({name: monkeyName})
  })

}


$(function(){
  $('body').hide();
  Bananapp.initialize();
  $('body').fadeIn(1500);
});
