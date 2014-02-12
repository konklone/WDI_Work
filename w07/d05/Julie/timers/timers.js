// $("#start").on('click', function(){
//   alert("HOLLA");


// })

var seconds = 0;
var timerId = 0;

function updateTime(){
  seconds++;
  $('#timer').html('Time elapsed: ' + seconds);
}

$(function(){

  $('#reset').on('click', function(){
    console.log("reset");
    seconds = 0;
    clearInterval(timerId);
    $('#timer').html("Time Keeper");
  });

  $('#start').on('click', function(){
    console.log("start");
    $('#timer').html('Time elapsed: ' + seconds);
    timerId = setInterval(updateTime, 1000);
  });

  $('#pause').on('click', function(){
    console.log("pause");
    clearInterval(timerId);
  });

});



// window.onload = function(){
//   var startButton = document.getElementById("start");
//   startButton.addEventListener("click", function(){
//     var timeoutID;

//     function delayedAlert() {
//     timeoutID = window.setTimeout(slowAlert, 20);
//     }

//     function slowAlert() {
//     alert("That was really slow!");
//     }

//     function clearAlert() {
//     window.clearTimeout(timeoutID);
//     }
  
// });
// }