
console.log('great work')

//---model---

function Person(personJSON){
  this.name = personJSON.name;
  this.weather = personJSON.weather;
  this.id = personJSON.id;

}


//--------view-----
function PersonView(model){
  this.model = model;
  this.el = undefined;
}

PersonView.prototype.render = function(){
  var newElement = $('<div>').html(this.model.name +" "+ this.model.weather);
  this.el = newElement;
  return this;
}

//---collection---

function PeopleCollection(){
  this.models = {};
}

PeopleCollection.prototype.add = function(personJSON){
  var newPerson = new Person(personJSON);
  this.models[personJSON.id] = newPerson;
  $(this).trigger('modelAdded');
  return this;
}

PeopleCollection.prototype.create = function(paramObject){
  var that = this;
  $.ajax({
    url: '/people',
    method: 'post',
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
}
function clearAndDisplayPeopleList(){

    $('.people').html(''); //clears out each reload
    for(idx in peopleCollection.models){
      var person = peopleCollection.models[idx];
      var personView = new PersonView(person);
      $('.people').append(personView.render().el)
    }
}

var peopleCollection = new PeopleCollection()

$(function(){
  peopleCollection.fetch();

    $(peopleCollection).on('modelAdded', function(){
          clearAndDisplayPeopleList();
    })

})
// //-----model------
// function Person(id, name, weather){
//   this.id = id;
//   this.name = name;
//   this.weather = weather;
//   this.el = undefined;
// }

// Person.prototype.render = function(){
//   var newLi = $('<li>').html(this.name);
//   this.el = newLi;
//   return this
// }


// //------colllection-------

// function People(){
//   this.models = {};
// };

// People.prototype.fetch = function(){
//   var that = this;
//   $.ajax({
//     url: '/people',
//     dataType: 'json',
//     success: function(data){
//       $(data).each(function(idx, ele){
//         var newPerson = new Person(ele.id, ele.name, ele.weather);
//         that.models[ele.id] = newPerson;
//       })
//     console.log(data);
//     }
//   })
// }
// People.fetch()
