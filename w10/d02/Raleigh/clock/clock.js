$(function(){
  var today = new Date();
  var h = today.getHours()*30;
  var m = today.getMinutes()*6;
  var s = today.getSeconds()*6;

  // var hOffset = h*30 + m/2 + s/120
  // var mOffset = m*6 + s/10

  setInterval(function(){
    $("#hour-hand").css("transform", "rotate(" + h + "deg)");
    h += 0.5/60

  }, 1000);

  setInterval(function(){
    $("#minute-hand").css("transform", "rotate(" + m + "deg)");
    m += 6/60
  }, 1000);

  setInterval(function(){
    $("#second-hand").css("transform", "rotate(" + s + "deg)");
    s += 6
  }, 1000);

});
