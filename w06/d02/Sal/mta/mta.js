// CREATE LINE OBJECT 
function Line(line) {
  this.line = line;
  this.stops = [];
}

// LINE DISTANCE FUNCTION 
Line.prototype.distance = function(destination, origin) {
    return Math.abs(destination - origin);
}

// CREATE LINES
var n = new Line("n");
n.stops = ["Times Square", "34th", "N-28th", "23rd", "Union Square", "8th"];

var l = new Line("l");
l.stops = ["8th", "6th", "Union Square", "3rd", "1st"];

var s = new Line("s");
s.stops = ["Grand Central", "33rd", "S-28th", "23rd", "Union Square", "Astor Place"];

// CREATE SUBWAY SYSTEM OBJECT 
function SubwaySystem(name) {
  this.name = name;
  this.lines = [];
}

// CREATE NEW SUBWAY SYSTEM 
var mta = new SubwaySystem("mta");
mta.lines = [n, l, s];

// TAKE TRIP FUNCTION
SubwaySystem.prototype.takeTrip = function() {
  var originLine = prompt("What line do you want to get on at? N, L, or S?").toLowerCase();
  switch (originLine) {
    case "n":
      originLine = n;
      break; 
    case "l":
      originLine = l; 
      break;
    case "s":
      originLine = s;
      break;
    }

  var originStop = prompt("Stops to get on: " + originLine.stops);
  originStop = originLine.stops.indexOf(originStop);

  var destinationLine = prompt("Line to get off at: N, L, or S").toLowerCase();
  switch (destinationLine) {
  case "n":
    destinationLine = n;
    break; 
  case "l":
    destinationLine = l; 
    break;
  case "s":
    destinationLine = s;
    break;
  }

  var destinationStop = prompt("Stops to get off: " + destinationLine.stops);
  destinationStop = destinationLine.stops.indexOf(destinationStop);

  var unionOrigin = originLine.stops.indexOf("Union Square");
  var unionDestination = destinationLine.stops.indexOf("Union Square");

  if (originLine === destinationLine) {
    alert("You've traveled " + originLine.distance(destinationStop, originStop) + " stops!");
  } else if (originLine != destinationLine) {
    alert("You've traveled " + ( originLine.distance(unionOrigin, originStop) + 
    destinationLine.distance(unionDestination, destinationStop) )  + " stops!");
  }
}

