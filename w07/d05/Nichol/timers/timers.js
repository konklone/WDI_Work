var seconds = 1;

function countSeconds(){
  //display seconds
  $("#timer").html("Time Elapsed is: " + seconds);
  //increment seconds
  seconds = seconds+1;
};

$(function() {
  console.log("timer loaded");

  //get buttons for controls
  var reset = $("#reset");
  var start = $("#start");
  var pause = $("#pause");

  //get h1 for timer
  var timer = $("#timer");
  

  start.on("click", function(){
    console.log("start the timer!");
    intervalId = window.setInterval(countSeconds, 1);      
  });

  pause.on("click", function(){
    console.log("pause this!");
    window.clearInterval(window.intervalId);
  });

  reset.on("click", function(){
    window.clearInterval(window.intervalId);
    seconds = 0;
    $("#timer").html("Time Elapsed is: " + seconds);

  });


});



//to start timer - set interval - aka do something every second - aka update h1 with second count
//to stop timer - clear interval