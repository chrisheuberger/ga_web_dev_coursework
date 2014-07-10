var GutenbergApp = GutenbergApp || { Models: {}, Views: {}, Collections: {} };

GutenbergApp.Collections.BookCollection = Backbone.Collection.extend({
  model: GutenbergApp.Models.Book,
  // url: '/authors/:id/books'
});
