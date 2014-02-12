var seconds = 0;
var timerid = 0;

function updateTime(){
  seconds++;
  $('#timer').html('Time elapsed:' + seconds);
}


$(function() {
  console.log("loaded");

  // startTimer();
  $( '#reset' ).on('click', function(){
    console.log("reset");
    seconds=0;
    clearInterval(timerid);
    $('#timer').html('Time keeper');
  });
  $( "#start" ).on('click', function(){
    console.log("start");
    timerid = setInterval(updateTime,1000);
  });
  $( "#pause" ).on('click', function(){
    console.log("pause");
    clearInterval(timerid);
  });

});





