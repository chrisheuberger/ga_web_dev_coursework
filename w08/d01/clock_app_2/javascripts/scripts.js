$(function(){
  setInitialPosition();
  setInterval(function(){
    rotateSecondHand();
  }, 1000);
  setInterval(function(){
    rotateMinuteHand();
  }, 60000);
  setInterval(function(){
    rotateHourHand();
  }, 360000);
});

var currentTime = new Date();
var currentSecond = ((currentTime.getSeconds()*6) + 180);
var currentMinute = ((currentTime.getMinutes()*6) + 180);
var currentHour = ((currentTime.getHours()*30) + 180);

function setInitialPosition(){
  $('.second-hand').css('transform', 'rotate(' + currentSecond + 'deg)');
  $('.minute-hand').css('transform', 'rotate(' + currentMinute + 'deg)');
  $('.hour-hand').css('transform', 'rotate(' + currentHour + 'deg)');
}

function rotateSecondHand(){
  var hand = $('.second-hand');
  hand.css('transform', 'rotate(' + currentSecond + 'deg)');
  currentSecond = currentSecond + 6;
};

function rotateMinuteHand(){
  var hand = $('.minute-hand');
  hand.css('transform', 'rotate(' + currentMinute + 'deg)');
  currentMinute = currentMinute + 6;
};

function rotateHourHand(){
  var hand = $('.hour-hand');
  hand.css('transform', 'rotate(' + currentHour + 'deg)');
  currentHour = currentHour + 30;
};
