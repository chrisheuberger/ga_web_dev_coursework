// QuoteModel - QuoteView - QuoteCollection

//model
function QuoteModel(data){
  this.text  = data.text;
  this.attribution = data.attribution;
}

//view
function QuoteView(model){
  this.model  = model;
  this.el     = undefined;
};

QuoteView.prototype.render = function(){
  var $div = $('<div>').addClass('quote');
  var $quoteSpan = $('<div>').text(this.model.text).addClass('text').fadeIn( "slow" );
  var $attSpan = $('<div>').text(this.model.attribution).addClass('attribution').fadeIn( "slow" );
  $div.append($quoteSpan);
  $div.append($attSpan);
  this.el = $div
  return this;
};

//collection
function QuoteCollection(){
  this.models = [];
}

QuoteCollection.prototype.fetch = function(){
  var offset = this.models.length;
  var that = this;
  $.ajax({
    url: '/?offset='+offset,
    dataType: 'json',
    success: function(data){
      $.each(data, function(i, datum){
        var quoteModel = new QuoteModel(datum);
        that.models.push(quoteModel);
        var quoteView = new QuoteView(quoteModel);
        $('#container').append(quoteView.render().el);
      });
    }
  })
}
