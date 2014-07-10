var express = require('express');
var bodyParser = require('body-parser');
var app = express();
var server = require('http').Server(app);
var io = require('socket.io')(server);

app.use(express.static('/tmp/GA/static'));
app.use(bodyParser());
server.listen(8000);

app.get('/blah', function(req, res) {
  res.send("blah");
});

io.on('connection', function(socket) {
  console.log("got a browser connection");
  socket.emit('hello', { hello: 'world' });
});


var log = [];

app.post('/', function(req, res) {
  console.log("someone posted to /");
  var text = req.body.text;
  console.log("req text", text);
  log.push(text);

  io.emit('chat update', { 'text': text });

  res.send({ success: "ok" });
});

app.get('/log', function(req, res) {
  res.send(log);
});
