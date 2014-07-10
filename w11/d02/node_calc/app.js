var express = require('express');
var app = express();

app.get('/:whatever', function(req, res){
  res.send('I love this thing '+req.params.whatever);
})

app.listen(8000, function(){
  console.log('app is listening on port 8000');
})

calculator = {}
calculator.add = function(x,y){
  return x + y;
}
calculator.subtract = function(x,y){
  return x - y;
}
calculator.sqrt = function(x){
  return Math.sqrt(x);
}

app.get('/:operator/:x/:y?', function(req, res){
  var x = parseInt(req.params.x),
      y = parseInt(req.params.y),
      operator = req.params.operator
  var fn = calculator[operator];
  var result = fn(x, y);
  res.send(result.toString());
})

app.get('/add/:x/:y', function(x,y){
  var x = parseInt(req.params.x);
  var y = parseInt(req.params.y);
  var result = calculator.add(x, y);
  res.send(result.toString());
})

app.get('/subtract/:x/:y', function(x,y){
  var x = parseInt(req.params.x);
  var y = parseInt(req.params.y);
  var result = calculator.subtract(x, y);
  res.send(result.toString());
})

app.get('/multiply/:x/:y', function(x,y){
  var x = parseInt(req.params.x);
  var y = parseInt(req.params.y);
  var result = calculator.subtract(x, y);
  res.send(result.toString());
})

app.get('/divide/:x/:y', function(x,y){
  var x = parseInt(req.params.x);
  var y = parseInt(req.params.y);
  var result = calculator.subtract(x, y);
  res.send(result.toString());
})
