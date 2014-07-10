var Ingredient = Backbone.Model.extend({});

var IngredientCollection = Backbone.Collection.extend({
  model: Ingredient
});

var IngredientView = Backbone.View.extend({
  tagName: 'li',
  template: _.template($('#ingredient-template').html()),
  render: function(){
    this.$el.html(this.template({ ingredient: this.model.toJSON()}));
    return this;
  }
})

var IngredientListView = Backbone.View.extend({
  initialize: function(){
    this.listenTo(this.collection, 'add', this.render);
    this.listenTo(this.collection, 'remove', this.render);
  },
  render: function(){
    var that = this
    this.$el.empty();
    _.each(this.collection.models, function(ingredient){
      var ingredientView = new IngredientView({model: ingredient});
      that.$el.append(ingredientView.render().el);
    });
    return this;
  }
})

// IngredientCollection will be an attribute of Juice Model
var Juice = Backbone.Model.extend({});

// Juice Model will be bounded by JuiceCollection
var JuiceCollection = Backbone.Collection.extend({
  model: Juice
});

// JuiceView is a div with name in an h1 and ingredient collection as list inside it
JuiceView = Backbone.View.extend({
  tagName: 'li',
  template: _.template($('#juice-template').html()),
  render: function(){
    this.$el.html(this.template({ juice: this.model.toJSON()}));
    return this;
  }
})

JuiceListView = Backbone.View.extend({
  initialize: function(){
    this.listenTo(this.collection, 'add', this.renderJuice);
    this.listenTo(this.collection, 'remove', this.render);
  },
  render: function(){
    var that = this
    this.$el.empty();
    _.each(this.collection.models, function(juice){
      var juiceView = new JuiceView({model: juice});
      that.$el.append(juiceView.render().el);
    });
    return this;
  // renderJuice: function(model){
  //   model.view = new JuiceView({model: model});
  //   this.$el.prepend(model.view.render().el);
  // }
}
})

// new JuiceView({el: $('#juice'), model: new Juice({name: 'detox', ingredients: 'test'}) }).render().el

$(function(){
  var ingredients = new IngredientCollection();
  var strawberry = new Ingredient({name: 'strawberry', amount: 13});
  // ingredients.on('add', function(){console.log("something was added")});
  ingredients.add(strawberry);
  // ingredients.on('remove', function(){console.log("insuffient micronutrient content")});
  // ingredients.remove(strawberry);
  var cabbage = new Ingredient({name: 'cabbage', amount: 1});
  ingredients.add(cabbage);
  var listView = new IngredientListView({
    collection: ingredients,
    el: $('#ingredient-list')
  });
  var turmeric = new Ingredient({name: 'turmeric', amount: 30});
  listView.collection.add(turmeric);
  listView.collection.remove(turmeric);

  var juices = new JuiceCollection();
  var juiceListView = new JuiceListView({
    collection: juices,
    el: $('#juices')
  });
  var detox = new Juice({name: 'detox', ingredients: 'test'});
  juiceListView.collection.add(detox);
})

// $( "li#juices" ).find( "li" ).css( "background-color", "red" );
