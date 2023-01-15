var express = require('express');
var path = require('path');

var app = express();

app.use(express.static(path.join(__dirname, 'public')));

calculator = {
  add: function(x,y) {
    return x + y;
  },
  subtract: function(x,y) {
    return x - y;
  },
  multiply: function(x,y) {
    return x * y;
  },
  divide: function(x,y) {
    return x/y;
  },
  sqrt: function(x) {
    return Math.sqrt(x);
  }
}

app.get('/:operator/:x/:y?', function(req, res) {
  var x = parseInt(req.params.x);
  var y = parseInt(req.params.y);
  var operator = req.params.operator;
  var fn = calculator[operator]
  var result = fn(x,y);
  res.send(result.toString())
})

app.listen(8000, function() {
  console.log("App is counting... on 8000")
})
