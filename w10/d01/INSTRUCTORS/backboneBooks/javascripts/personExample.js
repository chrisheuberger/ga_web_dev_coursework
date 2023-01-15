var Person = Backbone.Model.extend({});

var PersonView = Backbone.View.extend({
  template: _.template('<div><h1><%= name %></h1><h2><%= age %></h2></div>'),
  render: function(){

    var modelAttributes = this.model.attributes;
    var renderedTemplate = this.template( modelAttributes );
    this.$el.html( renderedTemplate );

    // this.$el.html( this.template( this.model.attributes ) )
    return this
  }
})


var bod = new Person({name: 'Kathew Bod', age: 3});
var bodPainter = new PersonView(model: bod);
