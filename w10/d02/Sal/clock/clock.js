$(function() {  

setInterval(rotateSecond,1000)
setInterval(rotateMinute,60000)
setInterval(rotateMinute,3600000)
  
});

  var secondDegree = 0;
  var minuteDegree = 0;
  var hourDegree = 0; 

  function rotateSecond() {   
    secondDegree += 6 
    $('#second-hand').css({ transform: 'rotate(' + secondDegree + 'deg)'});
  }
  
  function rotateMinute() {  
    minuteDegree += 6  
    $('#minute-hand').css({ transform: 'rotate(' + minuteDegree + 'deg)'});
  }

  function rotateHour() {
    hourDegree += 30 
    $('#hour-hand').css({ transform: 'rotate(' + hourDegree + 'deg)'});
  }
