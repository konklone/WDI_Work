$(function(){
  initTimer();
})

window.seconds = 0;

function initTimer(){
  var intervalId;
  var running = false;

  function elapsedTimeCounter(){
    seconds += 1;

    var displayMinutes = parseInt(seconds / 60);
    var displaySeconds
    if (seconds % 60 < 10) {
      displaySeconds = "0" + (seconds % 60);
    } else {
      displaySeconds = (seconds % 60);
    }
    var formattedTime = displayMinutes + ":" + displaySeconds

    $("h1#timer").text("Time Elapsed: " + formattedTime);
  }

  $("button#start").click(function(){
    if (running === false) {
      intervalId = setInterval( elapsedTimeCounter, 1000);
      running = true;
    }
  });

  $("button#reset").click(function(){
    clearInterval(intervalId);
    window.seconds = 0;
    $("h1#timer").text("Time Keeper");
    running = false;
  });

  $("button#pause").click(function(){
    clearInterval(intervalId);
    running = false;
  });
}