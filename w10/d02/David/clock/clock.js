$(function(){
  timerId = setInterval(rotateSeconds, 1000);
  timerId = setInterval(rotateMinutes, 60000);
  timerId = setInterval(rotateHours, 3600000);
  setTime(second, minute, hour);
  }
);

var secondCounter = 0;
var secondDegrees = 0;
var minuteDegrees = 0;
var hourDegrees = 0;

var date = new Date();
var hour = date.getHours();
var minute = date.getMinutes();
var second = date.getSeconds();

function setTime(second, minute, hour){
  $('#second-hand').css('transform', 'rotate(' + second * 6 + 'deg)');
  $('#minute-hand').css('transform', 'rotate(' + minute * 6 + 'deg)');
  $('#hour-hand').css('transform', 'rotate(' + hour * 30 + 'deg)');
}

function rotateSeconds() {
  secondDegrees += 6;
  if (secondCounter == 0) {
    $('#second-hand').css('transform', 'rotate(' + (date.getSeconds()*6) + 'deg)');
    secondDegrees = second;
    secondCounter ++;
  } else {
  $('#second-hand').css('transform', 'rotate(' + secondDegrees + 'deg)');
  }
}

function rotateMinutes() {
  minuteDegrees += 6;
  $('#minute-hand').css('transform', 'rotate(' + minuteDegrees + 'deg)');
  // timerId = setTimeout(function(){rotateSeconds(degrees + 6)}, 1000);
}

function rotateHours() {
  hourDegrees += 30;
  $('#hour-hand').css('transform', 'rotate(' + hourDegrees + 'deg)');
  // timerId = setTimeout(function(){rotateSeconds(degrees + 6)}, 1000);
}