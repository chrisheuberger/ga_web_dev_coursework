Array.prototype.sample = function(){
  var idx = Math.floor(this.length * Math.random());
  return this[idx]
};

function projectData(data){

  var svg = d3.select('svg');

  var circles = svg.selectAll('circle')
                    .data(data)
                    .enter()
                    .append('circle');

  var circles = svg.selectAll('circle')
                    .data(data)
                    .transition()
                      .duration(500)
                        .attr('r', function(d){return d +'px'})
                        .attr('cx', function(){return (Math.random()*100)+'%'})
                        .attr('cy', function(){return (Math.random()*100)+'%'})
                        .style('opacity', function(){ return Math.random() })
                        .style('fill', function(){return crayola.sample().hex});

  svg.selectAll('circle')
     .data(data)
     .exit()
     .remove();

}

window.onload = function(){

  d3.select('svg')
    .attr('width', '100%')
    .attr('height', '100%')

  setInterval(function(){
    projectData([10, 40, 60, 30, 50, 80, 90, 100, 120, 140, 160, 180, 200, 220, 240, 260, 280, 300, 320, 340, 360, 380, 400])
  }, 500)

}
