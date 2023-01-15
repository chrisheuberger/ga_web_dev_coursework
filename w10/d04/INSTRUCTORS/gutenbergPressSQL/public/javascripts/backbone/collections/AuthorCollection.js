var GutenbergApp = GutenbergApp || { Models: {}, Views: {}, Collections: {} };

GutenbergApp.Collections.AuthorCollection = Backbone.Collection.extend({
  model: GutenbergApp.Models.Author,
  url: '/authors'
});
