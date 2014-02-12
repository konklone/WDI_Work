var seconds = 0; 
var timerId = 0; 

function updateTime() {
  seconds++; 
  $('#timer').html('Time elapsed: ' + seconds);
}

$(function() {
  console.log("LOADED")
  
  $('#reset').on('click', function() {
    console.log("reset");
    seconds = 0; 
    clearInterval(timerId); 
    $('#timer').html("Time Keeper")
  });

  $('#start').on('click', function() {
    console.log("start");
    $('#timer').html('Time elapsed: ' + seconds);
    timerId = setInterval(updateTime, 1);
  });

  $('#pause').on('click', function() {
    console.log("pause");
    clearInterval(timerId);
  });
});




