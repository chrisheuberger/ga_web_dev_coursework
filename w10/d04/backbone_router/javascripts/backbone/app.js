var App = {
  Models: {},
  Collections: {},
  Views: {},
  Router: null,
  initialize: function(){
    this.viewManager = new App.Views.ViewManager({el: $('body')});
    this.router = new App.Router();
    Backbone.history.start();
  }
}

App.Router = Backbone.Router.extend({
  initialize: function(){
    this.collection = new App.Collections.ShapeCollection();
    seedCollection(1000, this.collection);
  },
  routes : {
    ''                : 'index',
    'shape/:type'     : 'filterByShape'
  },
  index: function(){
    console.log('this is really happening');
    var indexView = new App.Views.ShapeListView({collection: this.collection });
    App.viewManager.display(indexView);
  },
  filterByShape: function(type){
    var shapes = this.collection.where({type: type})
    var shapeCollection = new App.Collections.ShapeCollection(shapes);
    var shapeListView = new App.Views.ShapeListView({collection: shapeCollection});
    App.viewManager.display(shapeListView);
  }
})

App.Views.ViewManager = Backbone.View.extend({
  display: function(view){
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
  rendersquare: function(){
    this.$el.css('background-color', this.model.get('color'));
    return this;
  },
  rendercircle: function(){
    this.$el.css('background-color', this.model.get('color'));
    this.$el.css('border-radius', this.model.get('size')/2);
    return this;
  },
  rendertriangle: function(){
    this.$el.width(0);
    this.$el.height(0);
    this.$el.css('border-left', ((this.model.get('size'))/2)+"px solid transparent");
    this.$el.css('border-right', ((this.model.get('size'))/2)+"px solid transparent");
    this.$el.css('border-bottom', this.model.get('size')+"px solid "+this.model.get('color'));
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

// function randomColor(){
//   return _.sample(["yellow", "red", "blue"]);
// }

function randomShape(){
  return _.sample(["square", "triangle", "circle"])
}

function seedCollection(numShapes, collection){
  for (var i = 0; i < numShapes; i++){
    var shape = new App.Models.Shape({
      type: randomShape(),
      color: randomColor(),
      size: _.sample([ 50, 100, 150, 200])
    });
    collection.add(shape);
  }
  return collection;
}

$(function(){
  App.initialize();
})

