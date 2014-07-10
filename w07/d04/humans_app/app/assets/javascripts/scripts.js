
// model
function Human(id, name, email){
  this.id = id;
  this.name = name;
  this.email = email;
  this.el = undefined;
}

Human.prototype.render = function(){
  var newLi = $('<li>').html(this.name);
  this.el = newLi;
  return this;
};

// collection
function HumansCollection(){
  this.models = {};
};

HumansCollection.prototype.fetch = function(){
  var that = this;

  $.ajax({
    url: '/humans',
    dataType: 'json',
    success: function(data){
      $(data).each(function(idx, ele){
        var newHuman = new Human(ele.id, ele.name, ele.email);
        that.models[ele.id] = newHuman;
      })
    }
  })

};

var humansCollection = new HumansCollection();




