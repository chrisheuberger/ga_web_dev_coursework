var authorCollection;
var authorListView;
var lichard;

$(function(){

  authorCollection = new AuthorCollection();
  authorListView = new AuthorListView({
    collection: authorCollection,
    el: $('.street-side-table')
  });

  $('.new-author').on('submit', function(e){
    e.preventDefault();
    var nameField =  $('.author-name');
    var authorName = nameField.val();
    nameField.val('')
    authorCollection.add({name: authorName});
  })

})
