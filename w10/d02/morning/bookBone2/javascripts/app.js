// single model functions

var Author = Backbone.Model.extend({
  defaults:{
    name: "Anonymous"
  }
});

var AuthorView = Backbone.View.extend({
  initialize: function(){
    this.listenTo(this.model, 'all', this.render);
  },
  tagName: 'li',
  template: _.template($('#author-template').html()),
  render: function(){
    var html = this.template( this.model.attributes );
    this.$el.html(html);
    return this;
  },
  events:{
    'click button[name="free-button"]': 'removeAuthor'
  },
  removeAuthor: function(){
    this.model.destroy();
    this.remove();
  }
});

// collection functions

var AuthorCollection = Backbone.Collection.extend({
  model: Author
});

var AuthorListView = Backbone.View.extend({
  initialize: function(){
    this.listenTo(this.collection, 'all', this.render);
  },
  tagName: 'ul',
  render: function(){
    this.$el.empty();
    var that = this;
    _.each( this.collection.models, function(author){
      var authorView = new AuthorView({model: author});
      that.$el.append(authorView.render().el);
    });
    return this;
  }
});

// book models and views

var Book = Backbone.Model.extend({
  defautls:{
    title: "n/a"
  }
});

var BookView = Backbone.View.extend({
  initialize: function(){
    this.listenTo(this.model, 'all', this.render);
  },
  tagName: 'li',
  template: _.template($('#book-template').html()),
  render: function(){
    this.$el.empty();
    var elHTML = this.template( this.model.attributes );
    this.$el.html(elHTML);
    return this;
  },
  events:{
    'click button[name="free-book-button"]': 'removeBook'
  },
  removeBook: function(){
    this.model.destroy();
    this.remove();
  }
});

var BookCollection = Backbone.Collection.extend({
  model: Book
});

var BookCollectionView = Backbone.View.extend({
  initialize: function(){
    this.listenTo( this.collection, 'all', this.render );
  },
  tagName: 'ul',
  render: function(){
    this.$el.empty();
    var that = this;
    _.each( this.collection.models, function(book){
      var newBookView = new BookView({model: book});
      that.$el.append(newBookView.render().el);
    })
    return this;
  }
});

// doc ready and variables

var authorCollection;
var authorListView
var jungleBook = new Book({title: "The Jungle Book"});
var bookView = new BookView({model: jungleBook});

$(function(){
  authorCollection = new AuthorCollection();
  authorListView = new AuthorListView({
    collection: authorCollection,
    el: $('.street-side-table')
  });

  $('.add-author-form').submit(function(event){
    event.preventDefault();
    authorCollection.add({name: this.firstElementChild.value});
    this.firstElementChild.value = '';
  });
})
