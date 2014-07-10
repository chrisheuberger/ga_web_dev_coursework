//  ************** BOOK **************

//  ******* Model *******
var Book = Backbone.Model.extend({
  defaults:{
    title: '',
  }
});

//  ******* Collection *******
var BookCollection = Backbone.Collection.extend({
  model: Book
});

//  ******* View *******
var BookView = Backbone.View.extend({
  initialize: function(){
    this.listenTo(this.model, 'all', this.render)
    this.listenTo(this.model, 'destroy', this.remove)
  },
  tagName: 'li',
  template: _.template( $('#book-template').html() ),
  render: function(){
    this.$el.empty();
    this.$el.html( this.template( this.model.attributes ) )
    return this;
  },
  events: {
    'click button[name="free"]': 'removeBook'
  },
  removeBook: function(){
    this.model.destroy();
    return this;
  }
});

var BookListView = Backbone.View.extend({
  initialize: function(){
    this.listenTo(this.collection, 'all', this.render);
  },
  render: function(){
    var that = this;
    this.$el.empty();
    _.each(this.collection.models, function(ele){
      var bookView = new BookView({model: ele});
      that.$el.append( bookView.render().el );
    })
    return this;
  }
});
