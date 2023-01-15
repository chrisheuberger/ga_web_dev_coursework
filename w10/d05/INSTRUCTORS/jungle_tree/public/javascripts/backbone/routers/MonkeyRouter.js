var Bananapp = Bananapp || { Routers: {}, Models: {}, Collections: {}, Views: {}, };


Bananapp.Routers.MonkeyRouter = Backbone.Router.extend({
    routes: {
        "":"index",
        "monkeys":"index",
        "named/:name": "show"
    },
    initialize: function(options){
      this.monkeys = new Bananapp.Collections.MonkeyCollection();
      var that = this;

      this.monkeyListView = new Bananapp.Views.MonkeyListView({
          collection: this.monkeys
      });

      this.monkeys.fetch({async: false});

      this.views = {
        listView: this.monkeyListView
      }

      this.body = $('.main-container');
      return this;
    },
    index: function(){
      this.clearViews();
      this.body.html( this.views.listView.render().el )
      return this;
    },
    show: function(name){
      this.clearViews();
      var monkey = this.monkeys.where({name: name});
      if (monkey.length>0){
        var monkeyView = new Bananapp.Views.MonkeyView({model: monkey[0]}).render().el;
        this.body.html( monkeyView );
      }else{
        this.navigate("/", true);
      }
      return this;
    },
    clearViews: function(){
      _.each(this.views, function(viewObj){
        viewObj.$el.empty();
      });
      return this;
    }

});

