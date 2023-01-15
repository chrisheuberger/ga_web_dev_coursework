function projectData(data){

  // selects entire campsite
  var campsite = d3.select('.campsite');

  //need new tents? if so, build them.
  var tents = campsite.selectAll('li')
                      .data(data)
                      .enter('li')
                      .append('li');

  var tents = campsite.selectAll('li')
                      .data(data)
                      .text(function(d){
                        return d + ' sleeps here'
                      });

  //any empty tents? remove them.
  tents.exit().remove();

}
