var express = require('express');
var path    = require('path');
var request = require('request');

var app = express();
app.use(express.static(path.join(__dirname, 'public')))
app.listen(8000, function(){
  console.log("app is listening on port 8000");
})

app.get('/teams', function(req, res){
  request('http://worldcup.sfg.io/teams/results', function(err, response, body){
    if (!err && response.statusCode == 200){
      res.send(body);
    }
  });
})



