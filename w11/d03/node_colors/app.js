var express     = require('express');
var path        = require('path');
var bodyParser  = require('body-parser');

var app = express();
app.use(express.static(path.join(__dirname, 'public')));
app.use(bodyParser.json());
app.use(bodyParser.urlencoded({extended: true}));

var colors = ["red", "yellow", "blue"];

// handle your requests here
app.post('/colors', function(req, res){
  var color = req.body.color;
  colors.push(color);
  console.log(colors);
  res.send({"success" : true});
});

app.get('/colors', function(req, res){
  res.send(colors);
})

app.listen(8000, function(){
  console.log("app is listening on port 8000");
})
