
// ** Model **
var Book = Backbone.Model.extend({
  defaults:{
    title: 'n/a',
    author: 'n/a'
  }
});


//  ** View **
var BookPainter = Backbone.View.extend({
  initialize: function(){
    this.listenTo(this.model, 'change', this.render);
  },
  tagName: 'span',
  template: _.template('<h2><%= title %></h2><h3><%= author %></h3>'),
  render: function(){
    this.$el.empty();

    // var titleH2 = $('<h2>').html(this.model.get('title'));
    // var authorH3 = $('<h3>').html(this.model.get('author'));
    // this.$el.append(titleH2);
    // this.$el.append(authorH3);

    // $el's html should have the
    //              result of the templating function when
    //                            passed the model's attribtues
    this.$el.html( this.template( this.model.attributes ) )

    return this;
  }
});


var classicBook;
var classicBookPainter;

$(function(){

  classicBook = new Book({title: 'The Lichard in the Rye', author: 'Lichard DeGray'});

  // Painting on existing DOM element
  classicBookPainter = new BookPainter({el: $('.book-sock'), model: classicBook});
  classicBookPainter.render();

})
