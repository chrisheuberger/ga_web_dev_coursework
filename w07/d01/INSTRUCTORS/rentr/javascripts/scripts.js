
var omdbApi = {
  search: function(title, callback){
    this.request(title, 's', callback);
    return this;
  },
  lookup: function(imdbID, callback){
    this.request(imdbID, 'i', callback);
    return this;
  },
  url: function(query, parameter){
      return  'http://www.omdbapi.com/?' + parameter + '=' + query;
  },
  request: function(query, parameter, callback){
    var callback = callback || function(data){console.log(data)};
    var url = this.url(query, parameter)
    $.ajax({
      url: url,
      dataType: 'json',
      success: callback
    })
    return this;
  }
}

// omdbApi.search('star wars', function(data){console.log(data)})
// omdbApi.search('star wars')




var inputManager = {
  takeTextInput: function(textCssSelector){
    var userInput = $(textCssSelector);
    var text = userInput.val();
    userInput.val('');
    return text;
  }
};

function updatePoster(movieData){
  $('.poster-image').attr('src', movieData.Poster);
}

function displaySearchResults(data){
  var movieArray = data.Search;
  $('.search-results').html('')    // optional... to clear the displayed results
  for (var i = 0; i < movieArray.length; i++) {
    var movieLi = $('<li>').html(movieArray[i].Title).addClass('film').data('imdbID', movieArray[i].imdbID);
    movieLi.on('click', function(e){
      var imdbID = $(e.target).data('imdbID');
      omdbApi.lookup(imdbID, updatePoster)
    })
    $('.search-results').append(movieLi);
  };
}

$(function(){
  $('.movies .search').on('submit', function(e){
    e.preventDefault();
    var query = inputManager.takeTextInput('.movies .search input[name="movie-search"]')
    omdbApi.search(query, displaySearchResults);
  })
})
