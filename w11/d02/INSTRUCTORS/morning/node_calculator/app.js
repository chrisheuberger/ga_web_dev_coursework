var express = require('express');
var app     = express();

calculator = {}
calculator.add = function(x, y){
  return x + y;
}
calculator.subtract = function(x, y){
  return x - y;
}
calculator.sqrt = function(x){
  return Math.sqrt(x);
}

app.get('/:operator/:x/:y?', function(req, res){
  var x       = parseInt(req.params.x),
      y       = parseInt(req.params.y),
      operator= req.params.operator;

  var fn = calculator[operator];
  var result = fn(x,y);
  res.send(result.toString());
})

app.listen(1337, function(){
  console.log("Express app running on 1337");
})