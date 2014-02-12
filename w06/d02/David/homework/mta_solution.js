

/********** MODELS ********/

function Line(name, stops){
  this.name = name;
  this.stops = stops;
}

var n = new Line("n", ['Times Square', '34th', '28th', '23rd', 'Union Square', '8th']);
var l = new Line("l", ['8th', '6th', 'Union Square', '3rd','1st']);
var s = new Line("s", ['Grand Central', '33rd', '28th', '23rd', 'Union Square', 'Astor Place']);

function SubwaySystem(lines){
  this.lines = lines;
}

mta = new SubwaySystem({n: n, l: l, s: s});


SubwaySystem.prototype.takeTrip = function(){
  var lineOn = prompt("What line would you like to get on: ");
  var stopOn = prompt("What stop would you like to get on: ");

  var lineOff = prompt("What line would you like to get off: ");
  var stopOff = prompt("What stop would you like to get off: ");

  if (lineOn === lineOff) {
    var numberStops = Math.abs(this.lines[lineOn].stops.indexOf(stopOn) - this.lines[lineOn].stops.indexOf(stopOff));
    console.log("if statement");
  } else {
    var numberStops = Math.abs(this.lines[lineOn].stops.indexOf(stopOn) - this.lines[lineOn].stops.indexOf("Union Square")) + Math.abs(this.lines[lineOff].stops.indexOf(stopOff) - this.lines[lineOff].stops.indexOf("Union Square"));
  }
  alert("You traveled " + numberStops + " stops");
}

window.onload = function(){
    console.log("LOADED");
    mta.takeTrip();
}

