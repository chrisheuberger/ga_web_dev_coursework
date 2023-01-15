var GutenbergApp = GutenbergApp || { Models: {}, Views: {}, Collections: {} };

GutenbergApp.Views.BookView = Backbone.View.extend({
  initialize: function(){
    this.listenTo(this.model, 'all', this.render)
  },
  tagName:'li',
  template: _.template( $('#book-template').html() ),
  render: function(){
    this.$el.html( this.template( this.model.attributes ) );
    return this;
  }
})
