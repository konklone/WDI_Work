$(function(){
  setTimeout(rotateHands,1000);
})
var d = new Date();
var hours = d.getHours() % 12;
var minutes = d.getMinutes();
var seconds = d.getSeconds();
var degrees = 6 + (n);


function rotateHands() {
  $('#second-hand').css('-webkit-transform', 'rotate(' + degrees + 'deg)');
  $('#minute-hand').css('-webkit-transform', 'rotate(' + degrees/60 + 'deg)');
  $('#hour-hand').css('-webkit-transform', 'rotate(' + degrees/360 + 'deg)');
  setTimeout(rotateHands,1000);
  degrees = degrees + 6;
}