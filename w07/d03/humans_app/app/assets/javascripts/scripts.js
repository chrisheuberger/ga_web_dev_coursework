
// model
function Human(humanJSON){
  this.name = humanJSON.name;
  this.email = humanJSON.email;
  this.id = humanJSON.id;
}

// view
function HumanView(model){
  this.model = model;
  this.el = undefined;
}

HumanView.prototype.render = function(){
  var newElement = $('<li>').html(this.model.name);
  this.el = newElement;
  return this;
};

// collection
function HumansCollection(){
  this.models = {};
};

HumansCollection.prototype.add = function(humanJSON){
  var newHuman = new Human(humanJSON);
  this.models[humanJSON.id] = newHuman;
  $(this).trigger('addFlare');
  return this;
}

HumansCollection.prototype.create = function(paramObject){
  var that = this;
   $.ajax({
    url: '/humans',
    method: 'post',
    dataType: 'json',
    data: {human: paramObject},
    success: function(data){
      that.add(data);
    }
   })
}

HumansCollection.prototype.fetch = function(){
  var that = this;
  $.ajax({
    url: '/humans',
    dataType: 'json',
    success: function(data){
      for (idx in data){
        that.add(data[idx]);
      }
    }
  })
};

function clearAndDisplayHumansList(){

  $('.humans').html('');

  for(idx in humansCollection.models){
    var human = humansCollection.models[idx];
    var humanView = new HumanView(human);
    $('.humans').append(humanView.render().el);
  }
}

var humansCollection = new HumansCollection();

$(function(){

  humansCollection.fetch();

  $(humansCollection).on('addFlare', function(){
    clearAndDisplayHumansList();
  });


  $('.name-form').on('submit', function(e){
    e.preventDefault();
    var newName = $('.name-form input[name="name"]').val();
    $('.name-form input[name="name"]').val('');
    humansCollection.create({name: newName});
  })

})




