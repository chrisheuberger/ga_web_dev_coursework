var express = require('express');
var app = express();

var server = require('http').Server(app);
var io = require('socket.io')(server);

app.use(express.static(__dirname + '/static'));

io.on('connection', function (socket) {
  socket.on('chatSent', function (data) {
    io.emit('chatUpdate', data)
  });
});

server.listen(8000)
