var Bananapp = Bananapp || { Models: {}, Collections: {}, Views: {}, };

Bananapp.Collections.MonkeyCollection = Backbone.Collection.extend({
  model: Bananapp.Models.Monkey,
  url: '/api/monkeys'
});
