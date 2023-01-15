
//  ************** AUTHOR **************


//  ******* Model *******
var Author = Backbone.Model.extend({
  initialize: function(){
    this.set('books', new BookCollection());
  },
  defaults:{
    name: '',
  }
});


//  ******* Collection *******
var AuthorCollection = Backbone.Collection.extend({
  model: Author
});


//  ******* View *******
var AuthorView = Backbone.View.extend({
  initialize: function(){
    this.listenTo(this.model, 'all', this.render)
  },
  tagName: 'li',
  template: _.template( $('#author-template').html() ),
  render: function(){
    var that = this;
    this.$el.empty();

    this.$el.html( this.template( this.model.attributes ) )

    var listView = new BookListView({collection: this.model.get('books'), el: this.$el.find('.books')})
    listView.render();

    this.$el.find('form').on('submit', function(e){
      e.preventDefault();
      var titleField = that.$el.find('input[name="title"]');
      var title = titleField.val();
      titleField.val('');
      that.model.get('books').add({title: title})
    })

    return this;
  }
});

var AuthorListView = Backbone.View.extend({
  initialize: function(){
    this.listenTo(this.collection, 'all', this.render);
  },
  render: function(){
    var that = this;
    this.$el.empty();
    _.each(this.collection.models, function(ele){
      var authorView = new AuthorView({model: ele});
      that.$el.append( authorView.render().el )
    })
    return this;
  }
});

