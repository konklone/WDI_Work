// We're going to recreate a simple subway system using JavaScript. Write your program in a file called `mta.js`

// The program should:
// * Prompt the user for all of these arguments:
//     - starting line
//     - starting station
//     - ending line
//     - ending station
// * Alert the user with number of stops needed to make the trip

var n = ['ts', '34th', '28th-n', '23rd-n', 'us'];
var l = ['8th', '6th', 'us', '3rd', '1st'];
var s = ['gc', '33rd', '28th-s', '23rd-s', 'us'];


function Line(stops) {
   this.stops = stops
  }

var sixLine = new Line(s);
var lLine = new Line(l);
var nLine = new Line(n);

Line.prototype.distance = function(stop1, stop2) {
   var onStopIndex = this.stops.indexOf(stop1);
   var offStopIndex = this.stops.indexOf(stop2);
   return Math.abs(onStopIndex - offStopIndex);
  }

var SubwaySystem = {
  s: sixLine,
  l: lLine,
  n: nLine,
  takeTrip: takeTrip
}


function takeTrip(){
  var startingLine = prompt("What line would you like to start on?", "");
  var startingStation = prompt("What station would you like to get on?","");
  var endingLine = prompt("What line would you like to get off on?", "");
  var endingStation = prompt("What station would you like to get off?");


switch (startingLine) {
  case "6":
    startingLine = sixLine
    break;
  case "L":
    startingLine = lLine
    break;
  case "N":
    startingLine = nLine
    break;
  default:
    startingLine = nil
}

switch (endingLine) {
  case "6":
    endingLine = sixLine
    break;
  case "L":
    endingLine = lLine
    break;
  case "N":
    endingLine = nLine
    break;
  default:
    endingLine = nil
}

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


