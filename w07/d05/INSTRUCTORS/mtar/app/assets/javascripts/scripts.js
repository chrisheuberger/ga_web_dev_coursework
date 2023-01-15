
console.log('Let Us Put Stuff Here')


var mta = {
  networkData: {},
  getLineData: function( lineName, callback){
    var that = this;
    var url = '/lines/' + lineName;

    // Code will go here to make ajax request and place the info into the mta's networkData
    $.ajax({
      url: url,
      dataType: 'json',
      success: function(data){
        that.networkData[lineName] = data;
        callback()  // After that is complete... evaluate the callback
      }
    })

    //  Should anything go here to allow for method chaining?
    return this;

  }
};

function displayStationList(lineName, listCssSelector){
  var $lineStationList = $(listCssSelector);
  $lineStationList.html('');
  var lineData = mta.networkData[lineName];
  $(lineData.stations).each(function(idx, ele){
    var $newLi = $('<li>').html(ele.address);
    $lineStationList.append($newLi);
  })
}


$(function(){

  $('.line').on('click', function(e){

    // Obtain the line's name
    var lineName = e.target.innerText;

    mta.getLineData(lineName, function(){
      displayStationList(lineName, '.stations-list')
    })
  })


  $('.line').each(function(idx, element){
    var color = $(element).data('color');
    $(element).css('opacity', 0);
    $(element).css('backgroundColor', color);
    $(element).animate({
      opacity: 1,
    }, 5000)
  })


})



