var Bananapp = Bananapp || { Models: {}, Collections: {}, Views: {} };

Bananapp.initialize = function(){

  var monkeys = new Bananapp.Collections.MonkeyCollection();
  var listView = new Bananapp.Views.MonkeyListView({
    el: $('.monkeys'),
    collection: monkeys
  });

  monkeys.fetch();

  $('form.monkey-form').on('submit', function(e){
    e.preventDefault();
    var nameField = $('form.monkey-form input');
    var newName = nameField.val();
    nameField.val('');
    monkeys.create({name: newName});
  })

};


$(function(){
  Bananapp.initialize();
})

