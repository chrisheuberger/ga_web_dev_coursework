
// ************** BOOK ***************

//  ***** Model *****
var Book = Backbone.Model.extend({
  defaults: {
    title: '',
  }
})

//  ***** Collection *****
var BookCollection = Backbone.Collection.extend({
  model: Book
})

//  ***** Model View *****
var BookView = Backbone.View.extend({
  tagName: 'li',
  template: _.template($('#book-template').html()),
  render: function(){
    this.$el.empty();
    var renderedHTML = this.template( this.model.attributes );
    this.$el.html( renderedHTML );
    return this;
  }
})

//  ***** List View *****
var BookListView = Backbone.View.extend({
  initialize: function(){
    this.listenTo(this.collection, 'all', this.render);
  },
  render: function(){
    var that = this;
    this.$el.empty();
    _.each(this.collection.models, function(book){
      var bookView = new BookView({model: book});
      that.$el.append( bookView.render().el );
    })
    return this;
  }
});
