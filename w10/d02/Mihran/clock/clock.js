$(function(){

var currentRotation = 0;

var rotateSecondHand = function(){
  currentRotation+= 6;
  $("#second-hand").css({'-webkit-transform' : 'rotate(' + currentRotation + 'deg)'});
};

setInterval(rotateSecondHand,1000);



})
