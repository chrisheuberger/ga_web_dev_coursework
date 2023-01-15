var Bananapp = Bananapp || { Routers: {}, Models: {}, Collections: {}, Views: {}, };

Bananapp.Collections.MonkeyCollection = Backbone.Collection.extend({
  model: Bananapp.Models.Monkey,
  url: '/monkeys'
});
