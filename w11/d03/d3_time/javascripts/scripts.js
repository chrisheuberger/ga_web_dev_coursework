function projectData(data){

  //Select Entire Campsite
  var campsite = d3.select('.campsite');

  //Build new tents...
  var tents = campsite.selectAll('li')
                      .data(data)
                      .enter()
                      .append('li');

  //Fill the tents
  var tents = campsite.selectAll('li')
                      .data(data)
                      .text(function(d){
                        return d + ' sleeps here'
                      });

  //
  tents.exit().remove()
}
