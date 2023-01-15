function randomUrl(){
  var width  = Math.floor(Math.random()*200+100);
  var height = Math.floor(Math.random()*200+100);
  return "http://placekitten.com/"+width+"/"+height;
}

function KittenModel(url){
  this.url = url || randomUrl();
}

function KittenView(model){
  this.model  = model;
  this.el     = undefined;
}

KittenView.prototype.render = function (){
  var img = $('<img>').attr('src', this.model.url)
                      .addClass('kitten');
  this.el = img;
  return this;
}

function KittenCollection(){
  this.kittens = {}
}

KittenCollection.prototype.add = function(kitten){

}