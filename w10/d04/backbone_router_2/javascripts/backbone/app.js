var App = {
  Models: {},
  Collections: {},
  Views: {},
  Router: null,
  initialize: function(){
    this.viewManager = new App.Views.ViewManager({el: $('body')});
    this.Router = new App.Router();
    Backbone.history.start();
  }
}

App.Router = Backbone.Router.extend({
  initialize: function() {
    this.collection = new App.Collections.ShapeCollection();
    seedCollection(10000, this.collection);
  },
  routes: {
    ''                        : 'index',
    'shape/:type'             : 'filterByShape',
    'size/:size'              : 'filterBySize',
    'shape/:type/size/:size'  : 'filterShapeBySize',
    'shapes/:id'              : 'filterById'
  },
  index: function() {
    var indexView = new App.Views.ShapeListView({
      collection: this.collection
    });
    App.viewManager.display(indexView);
  },
  filterByShape: function(type) {
    var shapes = this.collection.where({type: type});
    var shapeCollection = new App.Collections.ShapeCollection(shapes);
    var shapeListView = new App.Views.ShapeListView({collection: shapeCollection});
    App.viewManager.display(shapeListView);
  },
  filterBySize: function(size) {
    var shapes = this.collection.where({size: parseInt(size)});
    var shapeCollection = new App.Collections.ShapeCollection(shapes);
    var shapeListView = new App.Views.ShapeListView({collection: shapeCollection});
    App.viewManager.display(shapeListView);
  },
  filterShapeBySize: function(type, size) {
   var shapes = this.collection.where({size: parseInt(size), type: type});
   var shapeCollection = new App.Collections.ShapeCollection(shapes);
   var shapeListView = new App.Views.ShapeListView({collection: shapeCollection});
   App.viewManager.display(shapeListView);
 },
 filterById: function(id) {
  var shape = this.collection.get('c'+id);
  var shapeView = new App.Views.ShapeView({model: shape});
  App.viewManager.display(shapeView);
 }
})

App.Views.ViewManager = Backbone.View.extend({
  display: function(view) {
    var previousView = this.currentView || null
    var nextView = view;
    if (previousView) {
      previousView.remove();
    }
    nextView.render().$el.hide().appendTo(this.$el).fadeIn();
    this.currentView = nextView;
  }
})

App.Models.Shape = Backbone.Model.extend({});

App.Collections.ShapeCollection = Backbone.Collection.extend({
  model: App.Models.Shape
});

App.Views.ShapeView = Backbone.View.extend({
  className: 'shape',
  render: function(){
    this.$el.width(this.model.get('size'));
    this.$el.height(this.model.get('size'));
    var fn = this['render'+this.model.get('type')];
    return fn.call(this);
  },
  events: {
    'mouseover' : 'wiggle',
    'click' : 'changeBackgroundColor',
  },
    wiggle: function() {
    var deg = Math.random()*360 -1;
    this.$el.css('transform', 'rotate('+deg+'deg)')
    return this;
  },
  changeBackgroundColor: function() {
    this.$el.css('background-color', randomColor)
  },
  rendersquare: function(){
    this.$el.css('background-color', this.model.get('color'));
    return this;
  },
  rendercircle: function(){
    this.$el.css('background-color', this.model.get('color'));
    this.$el.css('border-radius', this.model.get('size')/2);
    return this;
  },
  rendertriangleup: function(){
    this.$el.width(0);
    this.$el.height(0);
    this.$el.css('border-left', ((this.model.get('size'))/2)+"px solid transparent");
    this.$el.css('border-right', ((this.model.get('size'))/2)+"px solid transparent");
    this.$el.css('border-bottom', this.model.get('size')+"px solid "+this.model.get('color'));
    return this;
  },
    rendertriangledown: function(){
    this.$el.width(0);
    this.$el.height(0);
    this.$el.css('border-left', ((this.model.get('size'))/2)+"px solid transparent");
    this.$el.css('border-right', ((this.model.get('size'))/2)+"px solid transparent");
    this.$el.css('border-top', this.model.get('size')+"px solid "+this.model.get('color'));
    return this;
  },
  renderpacman: function() {
    this.$el.width(0);
    this.$el.height(0);
    this.$el.css('border-right', ((this.model.get('size')+"px solid transparent")));
    this.$el.css('border-top', ((this.model.get('size')+"px solid yellow")));
    this.$el.css('border-left', ((this.model.get('size')+"px solid yellow")));
    this.$el.css('border-bottom', ((this.model.get('size')+"px solid yellow")));
    this.$el.css('border-top-left-radius', this.model.get('size'));
    this.$el.css('border-top-right-radius', this.model.get('size'));
    this.$el.css('border-bottom-left-radius', this.model.get('size'));
    this.$el.css('border-bottom-right-radius', this.model.get('size'));
    return this;
  }
})

App.Views.ShapeListView = Backbone.View.extend({
  initialize: function(){
    this.listenTo(this.collection, "change", this.render)
  },
  render: function(){
    var that = this;
    _.each(this.collection.models, function(shape){
      var shapeView = new App.Views.ShapeView({model: shape});
      that.$el.append(shapeView.render().el);
    })
    return this;
  }
})

function randomColor(){
  return '#'+Math.floor(Math.random()*16777215).toString(16);
}

function randomShape(){
  return _.sample(["square", "triangleup", "triangledown", "circle", "pacman"])
}

function seedCollection(numShapes, collection){
  for (var i = 0; i < numShapes; i++){
    var shape = new App.Models.Shape({
      type: randomShape(),
      color: randomColor(),
      size: _.sample([50, 60, 70, 80, 90, 100])
    });
    collection.add(shape);
  }
  return collection;
}

$(function(){
  App.initialize();
});
