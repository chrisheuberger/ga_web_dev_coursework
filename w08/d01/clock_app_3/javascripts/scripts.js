$(document).ready(function(){

  function setTime(){
    var d = new Date();
    var hour = d.getHours();
    var minute = d.getMinutes();
    var second = d.getSeconds();
    var hourRotation = hour * 30 + (minute / 2);
    var minuteRotation = minute * 6;
    var secondRotation = second * 6;
    
    $("#hour").css({
      "-webkit-transform": "rotate(" + hourRotation + "deg)",
    });

    $("#minute").css({
      "-webkit-transform": "rotate(" + minuteRotation + "deg)",
    });

    $("#second").css({
      "-webkit-transform": "rotate(" + secondRotation + "deg)",
    });
  };

  function clockStart(){
    setInterval(setTime,1000);
    setTime();
  }

  clockStart();

});
