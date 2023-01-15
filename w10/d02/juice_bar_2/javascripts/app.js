var Ingredient = Backbone.Model.extend({
  defaults: {
    title: '',
  }
});

var IngredientCollection = Backbone.Collection.extend({
  model: Ingredient
});

var IngredientView = Backbone.View.extend({
  initialize: function(){
    this.listenTo(this.model, 'all', this.render())
  },
  tagName: 'li',
  template: _.template($('#ingredient-template').html()),
  render: function(){
    var that = this
    this.$el.empty();
    this.$el.html(this.template({ingredient: this.model.toJSON()}));
    this.$el.find('.delete-button').on('click', function(){
      that.model.destroy();
      that.$el.remove()
    })
    return this;
  }
})

var ingredients;
var strawberry;
var listView;

var IngredientListView = Backbone.View.extend({
  initialize: function(){
    this.listenTo(this.collection, 'all', this.render);
  },
  render: function(){
    var that = this
    this.$el.empty()
    _.each(this.collection.models, function(ingredient){
      var ingredientView = new IngredientView({model: ingredient});
      that.$el.append(ingredientView.render().el);
    });
    return this;
  }
});

var Juice = Backbone.Model.extend({
  initialize: function(){
  this.set('ingredients', new IngredientCollection());
  },
  defaults: {
    name: 'Mystery Juice'
  }
});

var JuiceCollection = Backbone.Collection.extend({
  model: Juice
});

var JuiceView = Backbone.View.extend({
  initialize: function(){
    this.listenTo( this.model, 'all', this.render)
  },
  tagName: 'li',
  template: _.template($('#juice-template').html()),
  render: function(){
    var that = this
    this.$el.html(this.template({juice: this.model.toJSON()}))
    var ingredientList = new IngredientListView({
      collection: this.model.get('ingredients'),
      el: this.$el.find('.juice-ingredients')
    })
    ingredientList.render()

    this.$el.find('form').on('submit', function(e){
      e.preventDefault();
      that.model.get('ingredients').add({
        name: that.$el.find(".ingredient").val(),
        amount: that.$el.find(".ingredient-amount").val()});
    });
    return this;
  },
  events: {
    "click button[name='forget-button']": 'removeJuice'
  },
  removeJuice: function(){
    this.model.destroy();
    this.remove();
  }
});

var JuiceListView = Backbone.View.extend({
  initialize: function(){
    this.listenTo(this.collection, 'all', this.render);
  },
  tagName: 'ul',
  render: function(){
    var that = this
    this.$el.empty();
    _.each(this.collection.models, function(juice){
      var newJuice = new JuiceView({model: juice})
      that.$el.append(newJuice.render().el);
    });
    return this;
  },
})

$(function(){
  juicecollection = new JuiceCollection();

  juicelistview = new JuiceListView({
    collection: juicecollection,
    el: $('#juice-list')
  });

  $('.new-juice').on('submit', function(e){
    e.preventDefault()
    juicecollection.add({name: $('.juice-name').val()})
  });
});