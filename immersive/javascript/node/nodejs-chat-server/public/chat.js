window.onload = function() {
  var messages = [];
  var socket = io.connect('http://localhost:3005');
  var field = document.getElementById('field');
  var sendButton = document.getElementById('send');
  var content = document.getElementById('content');

  sendButton.onclick = function () {
    var text = field.value;
    socket.emit('send', { message: text });
  };
}