function CardModel(jsonData){
  this.name = jsonData.name;
  this.suit = jsonData.suit;
}

function CardView(model){
  this.model  = model;
  this.el     = undefined;
}

CardView.prototype.render = function(){
  var $div = $('<div>').addClass('card').addClass(this.model.suit);
  if (this.model.suit === "diamonds"){
    var $topLeft = $('<div>').addClass('top left').html("&diams;"+" "+this.model.name);
    var $bottomRight = $('<div>').addClass('bottom right').html("&diams;"+" "+this.model.name);
  } else {
    var $topLeft = $('<div>').addClass('top left').html("&"+this.model.suit+";"+" "+this.model.name);
    var $bottomRight = $('<div>').addClass('bottom right').html("&"+this.model.suit+";"+" "+this.model.name);
  }
  $div.append($topLeft, $bottomRight);
  this.el = $div;
  return this;
}

function CardCollection(){
  this.models = [];
}

CardCollection.prototype.fetch = function(){
  var that = this;
  $.ajax({
    url: '/cards',
    dataType: 'json',
    success: function(data){
      $.each(data, function(i, datum){
        var cardModel = new CardModel(datum);
        that.models.push(cardModel);
        var cardView  = new CardView(cardModel);
        $('#cards').append(cardView.render().el);
      });
    }
  })
}

$(function(){
  var collection = new CardCollection();
  $('#show-cards').click(function(){
    collection.fetch();
  });
})
