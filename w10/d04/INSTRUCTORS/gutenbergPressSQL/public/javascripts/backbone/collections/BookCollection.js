var GutenbergApp = GutenbergApp || { Models: {}, Views: {}, Collections: {} };

GutenbergApp.Collections.BookCollection = Backbone.Collection.extend({
  model: GutenbergApp.Models.Book,
  // url: '/authors/:id/books'
  //  I want to place a url attriubtes here...
  //  ... but the url is different for each author!
  //  ... There for the url is set when the object is created
});
