var s = ['grandcentral', '33rd', '28th-s', '23rd-s', 'union'];
var n = ['times', '34th', '28th-n', '23rd-n', 'union'];
var l = ['8th', '6th', 'union', '3rd', '1st'];



function Line(stops) {
   this.stops = stops
  }

var sLine = new Line(s);
var lLine = new Line(l);
var nLine = new Line(n);

Line.prototype.distance = function(stop1, stop2) {
   return Math.abs(this.stops.indexOf(stop1) - this.stops.indexOf(stop2));
  }

var Subway = {
  s: sLine,
  n: nLine,
  l: lLine,
  tripMap: tripMap
}


function tripMap(){
  var onLine = prompt("What line are you taking?");
  var offLine = prompt("What are you getting off at?");



  if(startingLine != endingLine){
    var union = "us"
    var startToUnion = startingLine.distance(startingStation, union);
    var endToUnion = endingLine.distance(endingStation, union);
    alert("You have " + startToUnion + endToUnion + " stop(s)");
  }

  else{
    alert("You have " + startingLine.distance(startingStation, endingStation) + " stop(s)");
  }
}