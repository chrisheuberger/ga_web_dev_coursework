

function projectData(data){

  // Select Entire Campsite
  var campsite = d3.select('.campsite');

  // Need new tents?  If so... build them!
  var tents = campsite.selectAll('li')
                    .data(data)
                    .enter()
                    .append('li');

  // Fill tents!
  var tents = campsite.selectAll('li')
                    .data(data)
                    .text(function(camper){
                      return camper + ' sleeps here'
                    });


    // Any empty tents?  Remove them!
    tents.exit().remove();

}

