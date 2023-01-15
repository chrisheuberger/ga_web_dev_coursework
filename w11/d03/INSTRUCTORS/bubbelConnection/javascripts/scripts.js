
Array.prototype.sample = function() {
  var idx = Math.floor(this.length * Math.random());
  return this[idx]
};


function projectData(data){

  // Select Entire SVG
  var svg = d3.select('svg');

  // Need new circle?  If so... build them!
  var circles = svg.selectAll('circle')
                    .data(data)
                    .enter()
                    .append('circle');

  // Update visualization with new data
   var circles = svg.selectAll('circle')
                  .data(data)
                  .transition()
                    .duration(500)
                      .attr('r', function(d){ return d*2+'px'})
                      .attr('cx', function(){ return (Math.random()*100) + '%'})
                      .attr('cy', function(){ return (Math.random()*100) + '%'})
                      .style('opacity', function(){ return Math.random() })
                      .style('fill', function(){ return crayola.sample().hex });


    // remove unnneeded circles
    svg.selectAll('circle')
        .data(data)
          .exit()
          .remove();

}

window.onload = function(){

  d3.select('svg')
    .attr('width', '100%')
    .attr('height', '75%')
    .style('border', '1px solid black');

    setInterval(function(){
      projectData([5, 10, 15])
    }, 500)

}


