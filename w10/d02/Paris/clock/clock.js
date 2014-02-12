window.onload = function() {
  console.log( "Loaded!" );
  // updateTime();

  window.setInterval(function(){
  updateTime();
}, 1000);

}

var startTime = new Date('2013/11/26');


function updateTime(){
  $('#second-hand').css('transform','rotate(6deg)');
  // $('#minute-hand').css('transform','rotate(10deg)');
  // $('#hour-hand').css('transform','rotate(50deg)');
}

  window.setInterval(function(){
  updateTime();
}, 1000);
