function buildSvg(data){
  var margin = {top: 100, right: 100, bottom: 100, left: 100},
      width = 1600 - margin.right - margin.left,
      height = 1000 - margin.top - margin.bottom;

  var maxGoalsFor = d3.max(data, function(team){
    return team.goals_for;
  });

  var minGoalsFor = d3.min(data, function(team){
    return team.goals_for;
  });

  var maxGoalsAgainst = d3.max(data, function(team){
    return team.goals_against;
  });

  var minGoalsAgainst = d3.min(data, function(team){
    return team.goals_against;
  });

  window.xAxisScale = d3.scale.linear().domain([0, maxGoalsAgainst + 2]).range([width, 0]);
  window.yAxisScale = d3.scale.linear().domain([0, maxGoalsFor + 2]).range([height, 0]);

  window.svg = d3.select('body')
        .append('svg')
          .attr('width', width + margin.right + margin.left)
          .attr('height', height + margin.top + margin.bottom)
        .append('g')
          .attr('height', height)
          .attr('width', width)
          .attr('class', 'graph')
          .attr('transform', 'translate(' + margin.left + ',' + margin.top + ')');

  var xAxis = d3.svg.axis()
      .scale(window.xAxisScale)
      .orient('bottom');

  var yAxis = d3.svg.axis()
      .scale(window.yAxisScale)
      .orient('left');

  window.svg.append('g')
    .attr('class', 'x-axis')
    .attr('transform',  'translate(0, ' + height + ')')
    .call(xAxis);

  window.svg.append('g')
    .attr('class', 'y-axis')
    .call(yAxis);

}

function project(data){
  var image = svg.selectAll('image').data(data);
  image.enter()
    .append('image')
    .attr('xlink:href', function(d){
      return 'http://www.placekitten.com/100/100'
    })
    .attr('width', 25)
    .attr('height', 25)
    .attr('x', 0)
    .attr('y', 0)
    .attr('opacity', 0)
    .transition().duration(1000)
    .attr('x', function(d){
      return xAxisScale(d.goals_against);
    })
    .attr('y', function(d){
      return yAxisScale(d.goals_for);
    })
    .attr('opacity', 0.75)
  }

function getCode(name){
  var countryArr = country_codes.filter(function(d, i){
    return d.name === name;
  })
  return countryArr[0].code;
}

data = [];
function selectData(){
  var team = window.teamResults.pop()
  data.push(team);
  project(data);
}

$(function(){
  $('body').html('loading...')
  $.ajax({
    url: '/teams',
    method: 'GET',
    dataType: 'json',
    success: function(data){
      $('body').empty();
      window.teamResults = data;
      buildSvg(data);
      window.timer = setInterval(selectData, 1000);
    }
  })
})
