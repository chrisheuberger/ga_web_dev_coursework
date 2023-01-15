ProtoView = Backbone.View.extend({
  intialize: function() {
    this.listenTo(this.model, 'all', this.render);
  },
  template: _.template($('#proto-template').html()),
  render: function() {
    this.$el.html(this.model.get('name'));
    return this;
  },
  events: {
    'click' : 'changeBackgroundColor'
  },
  changeBackgroundColor: function() {
    this.$el.css('background-color', randomColor())
  }

})

function randomColor() {
  return '#'+Math.floor(Math.random()*16777215).toString(16);
}
