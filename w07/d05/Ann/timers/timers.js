//.click(function(){}) is shorthand for .on("click", function(){})

var seconds = 0;
var timerId = 0;

function updateTime(){
  seconds++;
  $('#timer').html('Time elapsed: ' +seconds);
}

$(function(){
  //(window onload looks like this in JQuery!)
    $resetButton = $("#reset")
    $startButton = $("#start")
    $pauseButton = $("#pause")

    $resetButton.on("click",function(){
      alert("yes mihran you're right");
      seconds = 0;
      clearInterval(timerId);
      $('#timer').html("Time Keeper")
    });

    $startButton.on("click",function(){
      // alert("this is going to start the ting");
      $('#timer').html('Time elapsed: ' +seconds);
      timerId = setInterval(updateTime, 1000)
    });

    $pauseButton.on("click",function(){
      alert("pause");
      clearInterval(timerId);
    });


})