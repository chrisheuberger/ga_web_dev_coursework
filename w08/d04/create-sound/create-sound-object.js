<!doctype html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Document</title>
  <script src="jquery.js"></script>

</head>
<body>
  <button id='button'>Osc</button>
  <script>
var context = new webkitAudioContext();

function newSoundObject(pitch, intTime, hangTime){
  var oscillator = context.createOscillator();
  var gain = context.createGain();
  oscillator.connect(gain);
  gain.connect(context.destination);
  oscillator.start(0);
  gain.gain.value = 0;
  hangTime = 50
  var intTime = 400
  setInterval(function(){
    var now = context.currentTime;
    gain.gain.cancelScheduledValues( now );
    gain.gain.setValueAtTime(gain.gain.value, now);
    gain.gain.linearRampToValueAtTime(1 , now + 0.2);
  }, intTime)
  setInterval(function(){
    var now = context.currentTime;
    gain.gain.cancelScheduledValues( now );
    gain.gain.setValueAtTime(gain.gain.value, now);
    gain.gain.linearRampToValueAtTime(0 , now + 0.2)},  hangTime)

}
</script>

</body>
</html>
