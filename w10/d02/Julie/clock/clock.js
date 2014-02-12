
var secDegree = 6
var minDegree = .1
var hrDegree = 


function changeSecond() {
  setInterval(secondhand, 1000);
}

function changeMinute() {
  setInterval(minutehand, 1000);
}

function changeHour() {
  setInterval(hourhand, 1000);
}


function minutehand(){
  var minute = document.getElementById("minute-hand")
  minute.style.webkitTransform = "rotate(" + minDegree + "deg)";
  minDegree += .1
}

function secondhand(){
  var second = document.getElementById("second-hand")
  second.style.webkitTransform = "rotate(" + secDegree + "deg)";
  secDegree += 6
}

window.onload = function() {
  changeSecond();
  changeMinute();
};