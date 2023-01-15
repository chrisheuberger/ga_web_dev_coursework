ProtoListView = Backbone.View.extend({
  render: function() {
    var that = this;
    this.$el.empty();
    _.each(this.collection.models, function(proto) {
      var protoView = new ProtoView({model: proto});
      that.$el.append(protoView.render().el);
    })
    return this;
  }
})
