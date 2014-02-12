var seconds = 0;
var timerId = 0;

$(function() {
  $("#reset").click(function() {
    seconds = 0;
    clearInterval(timerId);
    $("#timer").html("Time Keeper");
  })

  $("#start").click(function() {
    timeUp();
  })

  $("#pause").click(function() {
    clearInterval(timerId);
  })
})

function timeUp() {
  $("#timer").html("Time elapsed:" + seconds);
  timerId = setInterval(updateTime, 1000)
}

function updateTime() {
  seconds++;
  $("#timer").html("Time elapsed:" + seconds);
}

