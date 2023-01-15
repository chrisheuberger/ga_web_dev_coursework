

console.log('Great work.  Here we go.')



// ************ Model *************
function Person(personJSON){
  this.name = personJSON.name;
  this.email = personJSON.email;
  this.id = personJSON.id;
}



// ************ View *************
function PersonView(model){
  this.model = model;
  this.el = undefined;
}

PersonView.prototype.render = function(){
  var newElement = $('<li>').html(this.model.name);
  this.el = newElement;
  return this;
};



// ************ Collection *************
function PeopleCollection(){
  this.models = {};
}

PeopleCollection.prototype.add = function(personJSON){
  var newPerson = new Person(personJSON);
  this.models[personJSON.id] = newPerson;
  $(this).trigger('addFlare');     // shoot up in the air that add flare
  return this;
}

PeopleCollection.prototype.create = function(paramObject){
  var that = this;
   $.ajax({
    url: '/people',
    method: 'post',
    dataType: 'json',
    data: {person: paramObject},
    success: function(data){
      that.add(data);
    }
   })
}

PeopleCollection.prototype.fetch = function(){
  var that = this;
  $.ajax({
    url: '/people',
    dataType: 'json',
    success: function(data){
      for (idx in data){
        that.add(data[idx]);
      }
    }
  })
};





function clearAndDisplayPeopleList(){

  $('.people').html('');

  for(idx in peopleCollection.models){
    var person = peopleCollection.models[idx];
    var personView = new PersonView(person);
    $('.people').append(personView.render().el);
  }
}

var peopleCollection = new PeopleCollection();

$(function(){

  peopleCollection.fetch();

  // If you see the 'addFlare' shot in the sky!!!!
  $(peopleCollection).on('addFlare', function(){
    clearAndDisplayPeopleList();
  });


  $('.name-form').on('submit', function(e){
    e.preventDefault();
    var newName = $('.name-form input[name="name"]').val();
    $('.name-form input[name="name"]').val('');
    peopleCollection.create({name: newName});
  })

})

