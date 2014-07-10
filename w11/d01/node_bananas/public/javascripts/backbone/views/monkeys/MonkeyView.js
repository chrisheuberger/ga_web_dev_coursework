var Bananapp = Bananapp || { Models: {}, Collections: {}, Views: {}, }
Bananapp.Views.MonkeyView = Backbone.View.extend({
  tagName: 'li',
  template: _.template($('#monkey-template').html()),
  editFormTemplate: _.template($('#edit-monkey-template').html()),
  initialize: function() {
    this.listenTo(this.model, 'change', this.render);
    this.listenTo(this.model, 'destroy', this.remove);
  },
  render: function() {
    this.$el.html(this.template( this.model.attributes ));
    return this;
  },
  events: {
    'click [data-action="destroy"]' : 'destroyMonkey',
    'click [data-action="edit"]' : 'renderEditForm',
    'mouseover' : 'wiggle'
  },
  destroyMonkey: function(e){
    e.preventDefault();
    this.model.destroy();
    return this;
  },
  renderEditForm: function(){
    var that = this;
    this.$el.html(this.editFormTemplate( this.model.attributes ));
    this.$el.find('form').on('submit', function(e){
      e.preventDefault()
      var nameField = that.$el.find('input');
      newName = nameField.val();
      nameField.val('');
      that.model.set('name', newName);
      that.model.save();
    })
    return this;
  },
  wiggle: function(){
    var deg = (Math.random() * 2) - 1;
    this.$el.css('transform', 'rotate('+ deg +'deg)');
    return this;
  }

});
