var seconds = 0;
var timerID = 0;

function updateTime(){
  seconds++;
  $("#timer").html("Time elasped: " + seconds);

}

$(function(){

  // jQuery grab an index using the #
  // .on ("", function) us very similar to native JS addEventListener
  $("#reset").on("click", function(){
    console.log("reset");

    seconds = 0;
    clearInterval(timerID);
    $("#timer").html("Time Keeper");
  });

  $("#start").on("click", function(){
    console.log("start");

    $("#timer").html("Time elasped: " + seconds);
    timerID = setInterval(updateTime, 1000);
  });

  $("#pause").on("click", function(){
    console.log("pause");

    clearInterval(timerID);
  });

});





