
console.log('I am a js file the asset pipeline')

// ***** model *****
function Person(id, name, email){
  this.id = id;
  this.name = name;
  this.email = email;
  this.el = undefined;
}

Person.prototype.render = function(){
  var newLi = $('<li>').html(this.name);
  this.el = newLi;
  return this;
};


// ***** collection *****
function PeopleCollection(){
  this.models = {};
};

PeopleCollection.prototype.fetch = function(){
  var that = this;

  $.ajax({
    url: '/people',
    dataType: 'json',
    success: function(data){
      $(data).each(function(idx, ele){
        var newPerson = new Person(ele.id, ele.name, ele.email);
        that.models[ele.id] = newPerson;
      })
    }
  })

};




var peopleCollection = new PeopleCollection();

$(function(){

  console.log('Before fetch', peopleCollection.models)

  setTimeout(function(){
    peopleCollection.fetch();
  }, 1000)

  setTimeout(function(){
    console.log('After fetch', peopleCollection.models)
  }, 2000)

  setTimeout(function(){
    $('.people').html('')
    for(idx in peopleCollection.models){
      var model = peopleCollection.models[idx];
      var newEle = model.render().el;
      $('.people').append(newEle);
    }

  }, 3000)


  setTimeout(function(){
    $.ajax({
      url: '/people',
      method: 'post',
      data: {person: {name: 'Kathew Bod'}}
    })
  }, 4000)

  setTimeout(function(){
    peopleCollection.fetch();
  }, 5000)

  setTimeout(function(){
    $('.people').html('')
    for(idx in peopleCollection.models){
      var model = peopleCollection.models[idx];
      var newEle = model.render().el;
      $('.people').append(newEle);
    }
  }, 6000)


})
