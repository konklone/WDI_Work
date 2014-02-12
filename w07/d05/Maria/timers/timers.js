//Look at [JavaScript Timers](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Timers) and check out setInterval and clearInterval.


// we did this last: 
//we want to call this a bunch of times to update the timer
function updateTime(){
  seconds++;
  $("#timer").html("Time elapsed:" + seconds);
}


//first get the window to load
//then connect all the buttons to listeners
$(function(){
  console.log("LOADED!");
  //start connecting buttons # is the css id
  $("#reset").on("click", function(){
    console.log("reset");
    seconds = 0;
    clearInterval(timerid);
    $("#timer").html("Time Keeper");
  });
  
  $("#start").on("click", function(){
    console.log("start");
    $("#timer").html("Time elapsed:" + seconds);
    timerid = setInterval(updateTime, 1000);
  });

  $("#pause").on("click", function(){
    console.log("pause");
    clearInterval(timerid);
  });
});

// var d = new Date('January 1, 2013');
// $('#timer').tinyTimer({ from: d, format: '%m', '%s' });

// d.setMinutes(d.getMinutes() + 30);
// $('#timer').tinyTimer({ to: d });