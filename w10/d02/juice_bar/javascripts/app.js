var Ingredient = Backbone.Model.extend({});

var IngredientView = Backbone.View.extend({
  tagName: 'li',
  template: _.template($('#ingredient_template').html()),
  render: function() {
    this.$el.html(this.template({ingredient: this.model.toJSON()}));
    return this;
  }
});

var Recipe = Backbone.Collection.extend({
  model: Ingredient
});

var RecipeView = Backbone.View.extend({
  initialize: function() {
    this.listenTo(this.collection, 'all', this.render);
  },
  tagName: 'ul',
  render: function(){
    var that = this;
    this.$el.empty();
    _.each(this.collection.models, function(ingredient) {
      var ingredientView = new IngredientView({model: ingredient});
      that.$el.append(ingredientView.render().el);
    });
    return this;
  }
});

var Juice = Backbone.Model.extend({
  initialize: function() {
    this.set('recipe', new Recipe());
  }
});

var JuiceCollection = Backbone.Collection.extend({
  model: Juice
});

var JuiceView = Backbone.View.extend({
  template: _.template($('#juice_template').html()),
  render: function() {
    var that = this;
    this.$el.html(this.template({juice: this.model.toJSON()}));
    var currRecipeView = new RecipeView({collection: this.model.get('recipe'), el: this.$el.find('ul')});
    currRecipeView.render();

    this.$el.find('form').on('submit', function(e) {
      e.preventDefault();
      that.model.get('recipe').add({name: that.$el.find('input.ingred').val(),
                                    amount: that.$el.find('input.amount').val()});
      that.$el.find('input').val('');
      that.$el.find('input.amount').val('');
      return false;

    });
    return this;
  },
  events: {
    'click button.drink_button': 'drinkJuice'
  },
  drinkJuice: function() {
    this.model.destroy();
    this.remove();
  }
});


var JuiceListView = Backbone.View.extend({
  initialize: function() {
    this.listenTo(this.collection, 'all', this.render);
  },
  tagName: 'ul',
  render: function(){
    var that = this;
    this.$el.empty();
    _.each(this.collection.models, function(juice) {
      var juiceView = new JuiceView({model: juice});
      that.$el.append(juiceView.render().el);
    });
    return this;
  }
});

$(function(){
  juiceCollection = new JuiceCollection();
  juiceListView = new JuiceListView({collection: juiceCollection,
    el: $('#juices')
  });
  $('#juice_button').on('click', function(){
    juiceCollection.add({name: $('#juice_input').val()});
    $('#juice_input').val('');
    return false;
  });
});
