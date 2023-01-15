var Proto = Backbone.Model.extend({});

var ProtoCollection = Backbone.Collection.extend({
  model: Proto
});

var ProtoView  = Backbone.View.extend({
  render: function(){
    this.$el.html(this.model.get('name'));
    return this;
  },
  events: {
    'click' : 'changeColor'
  },
  changeColor: function(){
    this.$el.css('background-color', randomColor());
  }
});

function randomColor(){
  return '#'+Math.floor(Math.random()*16777215).toString(16);
}

var ProtoListView = Backbone.View.extend({
  render: function(){
    var that = this;
    _.each(this.collection.models, function(proto){
      var protoView = new ProtoView({model: proto});
      that.$el.append(protoView.render().el);
    });
  }
})





$(function(){
  protos = [
    'Nessa Nguyen',
    'Jeff Winkler',
    'John Murphy',
    'Jeff Drakos',
    'Rebecca Strong',
    'Gardner Lonsberry' ,
    'Jonathan Gean',
    'Nathaniel Tuvera',
    'Tim Hannes',
    'Aziz Hasanov',
    'Chris Heuberger',
    'Dmitry Shamis' ,
    'Corey Leveen',
    'Paul Hiam',
    'Steven Doran',
    'Ben Karl',
    'Kristen Tonga',
    'Wake Lankard',
    'Carlos Pichardo' ,
    'Paul Gasberra',
    'Andrea Trapp',
    'Heidi Williams-Foy'
  ]

  var collection = new ProtoCollection();

  _.each(protos, function(name){
    var model = new Proto({name: name});
    collection.add(model);
  })
  var listView = new ProtoListView({collection: collection, el: $('body')});
  listView.render();
})












