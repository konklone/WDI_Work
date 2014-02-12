window.onload = function () {

var timerId = 0
var seconds = 0
var start = document.getElementById('start');
var reset = document.getElementById('reset');
var pause = document.getElementById('pause');

start.addEventListener('click',function (e) {
  setText();
  timerId = setInterval(updateTimer, 1000);
});

pause.addEventListener('click',function (e) {
  clearInterval(timerId);
});

reset.addEventListener('click',function (e) {
  seconds = 0
  clearInterval(timerId);
  $('#timer').html("Time Keeper");
});

function updateTimer () {
  seconds++;
  setText();
}

function setText () {
  $('#timer').html('Time Elapsed' + seconds);
}

}