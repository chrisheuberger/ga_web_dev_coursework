function PaletteModel(data){
  this.title  = data.title;
  this.colors = data.colors;
}

function PaletteView(model){
  this.model  = model;
  this.el     = undefined;
}

PaletteView.prototype.render = function(){
  var $div  = $('<div>').addClass('palette');
  var $span = $('<span>').text(this.model.title).addClass('title');
  $div.append($span);
  $.each(this.model.colors, function(i, color){
    var $colorDiv = $('<div>').text('#'+color).css('background-color', '#'+color);
    $div.append($colorDiv);
  })
  this.el = $div
  return this;
}

function PaletteCollection(){
  this.models = [];
}


PaletteCollection.prototype.fetch = function(){
  var offset = this.models.length;
  var that = this;
  $.ajax({
    url: 'palettes/?offset='+offset,
    dataType: 'json',
    //async: false,
    success: function(data){
      $.each(data, function(i, datum){
        var paletteModel = new PaletteModel(datum);
        that.models.push(paletteModel);
        var paletteView = new PaletteView(paletteModel);
        $('#palettes').append(paletteView.render().el);
      });
    }
  })
}





















