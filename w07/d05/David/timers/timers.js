var seconds = 0;
// default -- must set this to zero initially
var timerId = 0;

function updateTime(){
  seconds++;
  $('#timer').text("Time Elaspse: " + seconds);
}

window.onload = function(){
  console.log("loaded");
  $('#start').on('click', function(){
    $('#timer').text("Time Elaspse: " + seconds);
    // returns an integer ID to be identified by other functions such as clearInterval()
    timerId = setInterval(updateTime, 1000);
  });
  $('#reset').on('click', function(){
    seconds = 0;
    clearInterval(timerId);
    $('#timer').text("Time Keeper");
  });
  $('#pause').on('click', function(){
    // clear interval stops the timer
    clearInterval(timerId);
  });
}