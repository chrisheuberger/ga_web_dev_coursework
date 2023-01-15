// Model
var Book = Backbone.Model.extend({
  defaults:{
    title: 'n/a',
    author: 'n/a'
  }
});

// View
var BookPainter = Backbone.View.extend({
  initialize: function(){
    this.listenTo(this.model, 'change', this.render);
  },
  tagName: 'span',
  template: _.template('<h2><%= title %></h2><h3><%= author %></h3>'),
  render: function(){
    this.$el.empty();
    this.$el.html( this.template( this.model.attributes ) )
    return this;
  }
});

var classicBook;
var classicBookPainter;

$(function(){
  classicBook = new Book({title: 'Lichard in the Rye', author: 'Lichard deGray'});
  // Painting on existing DOM element
  var classicBookPainter = new BookPainter({el: $('.book-sock'), model: classicBook});
  classicBookPainter.render();
})
