window.onload = function(){
  intervalSecond();
}

var intervalSecond = window.setInterval(rotate, 10000);

function rotate(){
  var second = document.getElementById("second-hand");
  second = intervalSecond;
}

//var intervalID = window.setInterval(func, delay[, param1, param2, ...]);