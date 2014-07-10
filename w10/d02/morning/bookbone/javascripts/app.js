

var authorCollection;
var authorListView;
var lichard;

$(function(){

  authorCollection = new AuthorCollection();
  authorListView = new AuthorListView({
    collection: authorCollection,
    el: $('.street-side-table')
  });

  // lichard = new Author({name: 'Lichard DeGray'});
  // lichard.get('books').add({title: 'Count Bodula'});
  // lichard.get('books').add({title: 'The Lichard in the Rye'});
  // lichard.get('books').add({title: 'Bald Potter'});

  // authorCollection.add(lichard)


  $('.new-author').on('submit', function(e){
    e.preventDefault();
    var nameField =  $('.author-name');
    var authorName = nameField.val();
    nameField.val('')
    authorCollection.add({name: authorName});
  })

})
