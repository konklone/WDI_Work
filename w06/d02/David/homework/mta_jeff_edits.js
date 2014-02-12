
function forEach(arr, action) {
  for (var i = 0; i < arr.length; i++) {
    action(arr[i]);
  }
}

function map(arra, action) {
  var newArray = [];

  forEach(arra, function(item){
    newArray.push( action(item) );
  });
  return newArray;
}

//Create the Line Object
function Line(name, stops) {
  this.name = name;
  this.stops = stops;
}

var n = new Line("n", ['Times Square', '34th', '28th', '23rd', 'Union Square', '8th']);
var l = new Line("l", ['8th', '6th', 'Union Square', '3rd','1st']);
var s = new Line("s", ['Grand Central', '33rd', '28th', '23rd', 'Union Square', 'Astor Place']);

Line.prototype.distance = function(stop1, stop2) {
  return Math.abs(this.stops.indexOf(stop1) - this.stops.indexOf(stop2));
}

//Create the Subway Object
function Subway(line) {
  this.line = line;
}

//Lines are stored in the Subway Object
var mta = new Subway([n, l, s]);

Subway.prototype.takeTrip = function() {
  var lineOn = prompt("Which line would you like to get on: " + this.listLines() + "?");
  var stopOn = prompt("Which stop would you like to get on: " + listStops(this.line, lineOn));
  transfer = prompt("Would you like to transer??");
  if ( transfer.toLowerCase() === "yes") {
    var lineOff = prompt("Which line would you like to get off: " + listLines(this.line) + "?");
    var stopOff = prompt("Which stop would you like to get off: " + listStops(this.line, lineOff));
    //Here I cheat and hard coded the intersection :-P
    var numberStops = Math.abs(findStopsIndex(this.line, lineOn, stopOn) - findStopsIndex(this.line, lineOn, "Union Square")) + Math.abs(findStopsIndex(this.line, lineOff, stopOff) - findStopsIndex(this.line, lineOff, "Union Square"));
  } else {
    var lineOff = lineOn
    var stopOff = prompt("Which stop would you like to get off: " + listStops(this.line, lineOn));
    var numberStops = Math.abs(findStopsIndex(this.line, lineOn, stopOn) - findStopsIndex(this.line, lineOn, stopOff));
  } 
  alert("You traveled " + numberStops + " stops total:  from " + stopOn + " on the " + lineOn + " train, and got off the " + lineOff + " train at " + stopOff); 
}

Subway.prototype.listLines = function() {
  return map(this.line, function(line) {
    return line.name;
  }).join(", ");
}

Subway.prototype.listStops = function(line) {

}


/*********** HELPER FUNCTIONS *************/

//Returns lines from the Subway Object
function listLines(subways) {
  var lines = [];
  forEach(subways, function(subway) {
    lines.push(subway.name);
  });
  return lines.toString();
}

//Returns stops from the chosen line of the Subway object
function listStops(subway, line) {
  for (i=0; i < subway.length; i++) {
    if (line === subway[i].name) {
     var stops = subway[i].stops;
    }
  };
  return stops.toString();
}

//Returns the index of a chosen stop from a chosen line of the Subway object
function findStopsIndex(subway, line, stop) {
  for (i=0; i < subway.length; i++) {
    if (line === subway[i].name) {
     var index = subway[i].stops.indexOf(stop);
    }
  };
  return index;
}

// Intersection

// function findIntersect(arr1, arr2) {
//   var filtered = [];
//   for (i=0; i < arr1.length; i++) {
//     filtered
//   }
// }

