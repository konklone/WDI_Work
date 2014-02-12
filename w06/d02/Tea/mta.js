function Line(lineStops) {
  this.stops = lineStops;
}

function SubwaySystem() {
  this.lines = [];
}

var l = new Line(["8th", "6th", "Union Square", "3rd", "1st"]);
var n = new Line(["Times Square", "34th", "28th-n", "23rd-n", "Union Square", "8th"]);
var s = new Line(["Grand Central", "33rd", "28th", "23rd", "Union Square", "Astor Place"]);

var mta = new SubwaySystem([n, l, s]);

// For User Input, Get and return corresponding Line
function choose(userChoice) {
  if ( userChoice[0] === "l" ) {
    return l;
  } else if ( userChoice[0] === "n" ) {
    return n;
  } else {
    return s;
  }
}

// Distance is absolute value between two stops
Line.prototype.distance = function(on, off) {
  return Math.abs(this.stops.indexOf(on) - this.stops.indexOf(off));
};


SubwaySystem.prototype.takeTrip = function() {
  // Ask User
  var start = prompt("What subway stop do you want to start at?");
  var getOn = choose(start);
  var end = prompt("What subway stop do you want to end at?");
  var getOff = choose(end);

  // Return Distance
  if ( getOn === getOff ) {
    var stopsAmount = (getOn.distance(start, end));
  } else {
    var stopsAmount = (getOn.distance(start, "Union Square") + getOff.distance("Union Square", end));
  }
  alert("Your trip is " + stopsAmount + " stops!")
}