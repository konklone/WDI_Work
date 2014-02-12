$(function(){
  var seconds = 0;
  var secondsId;
  var started = false;


  $('#start').on('click', function(){
    if (started === false){
      secondsId = setInterval(increaseTime, 1000);
      started = true;
    };
  })

  $('#reset').on('click', function(){
    seconds = 0;
    started = false;
    clearInterval(secondsId);
    $('h1').html("Time Keeper");
  })

  $('#pause').on('click', function(){
    clearInterval(secondsId);
    started = false;
  })

  function increaseTime (){
    $('h1').html("Time Elapsed : " + seconds++);
  }


})
