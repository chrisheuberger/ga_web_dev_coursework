var Router = Backbone.Router.extend({
  initialize: function(){
    this.$body = $('body');
  },
  routes: {
    ''                : 'index',
    // url is router_calculator/index.html#hello/chris
    'hello/:name'     : 'hello',
    // url is router_calculator/index.html#add/3/5
    'add/:x/:y'       : 'add',
    'subtract/:x/:y'  : 'subtract',
    'multiply/:x/:y'  : 'multiply',
    'divide/:x/:y'    : 'divide'
  },
  index: function(){
    this.$body.html('welcome');
  },
  hello: function(name){
    this.$body.html('hello' + name);
  },
  add: function(x, y){
    this.$body.html(parseInt(x)+parseInt(y));
  },
  subtract: function(x, y){
    this.$body.html(parseInt(x)-parseInt(y));
  },
  multiply: function(x, y){
    this.$body.html(parseInt(x)*parseInt(y));
  },
  divide: function(x, y){
    this.$body.html(parseInt(x)/parseInt(y));
  }
});

$(function(){
  var router = new Router ();
  Backbone.history.start();
});
