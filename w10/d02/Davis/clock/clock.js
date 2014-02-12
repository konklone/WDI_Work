function Clock() {
  this.seconds = 0;  
}

Clock.prototype.rotateSeconds = function() {
  this.seconds ++;

  var sec = $("#second-hand");
  sec.css("transform", "rotate(" + parseInt(this.seconds * 6) + "deg)");
}

Clock.prototype.rotateMinutes = function() {
  var min = $("#minute-hand");

  var minutes = this.seconds / 60;
  min.css("transform", "rotate(" + parseInt(minutes * 6) + "deg)");
}

Clock.prototype.rotateHours = function() {
  var hour = $("#hour-hand");

  var hours = this.seconds / 3600;
  hour.css("transform", "rotate(" + parseInt(hours * 6) + "deg)");
}

$(function(){
  var clock = new Clock;

  setInterval(function() { clock.rotateSeconds(); }, 1000);

  setInterval(function() { clock.rotateMinutes(); }, 60000)

  setInterval(function() { clock.rotateHours(); }, 3600000)
})