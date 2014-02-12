function Line(name, stops) {
  this.name = name;
  this.stops = stops;
}


Line.prototype.distance = function(stop1, stop2) {
  Math.abs(this.stops.indexOf(stop1) - this.stops.indexOf(stop2));
}

var n = new Line('n', ['ts', '34th', '28th-n', '23rd-n', 'us']);
var l = new Line('l', ['8th', '6th', 'us', '3rd', '1st']);
var s = new Line('s', ['gc', '33rd', '28th-s', '23rd-s', 'us']);
var o = new Line('o', ['59th', '50th', 'ts', '34th', '28th']);

// Line.prototype.


function SubwaySystem(name, lines) {
  this.name = name;
  this.lines = lines;
}

// var names = function(arr) {
//   for (var i = 0; i < arr.length; i++) {
//     return arr[i]
//   }
// }

SubwaySystem.prototype.takeTrip = function() {
  var line_on = prompt('What line are you getting on? Your options are : N, L, S, or O');
  // var line_on = prompt('What line are you getting on? Your options are : \n' + this.lines);
    while (this.lines.indexOf(line_on) === -1) {
      // line_on = prompt("Sorry, that line doesn't exist. Your options are : \n" + this.lines);
      line_on = prompt("Sorry, that line doesn't exist. Your options are : N, L, S, or O");
    }

  line_on = this.lines[this.lines.indexOf(line_on)];

  var stop_on = prompt('What stop are you getting on? Your options are : \n' + line_on.stops);
    while (line_on.stops.indexOf(stop_on) === -1) {
      stop_on = prompt("Sorry, that line doesn't exist. Your options are : \n" + line_on.stops);
    }

  var line_off = prompt('What line are you getting off? Your options are : \n' + this.lines);
    while (this.lines.indexOf(line_off) === -1) {
      line_off = prompt("Sorry, that line doesn't exist. Your options are : \n" + this.lines);
    }

  var stop_off = prompt('What stop are you getting on? Your options are : \n' + line_off.stops);
    while (line_off.stops.indexOf(stop_off) === -1) {
      stop_off = prompt("Sorry, that line doesn't exist. Your options are : \n" + line_off.stops);
    }

  var dist = line_on.distance(stop_on, stop_off)

  if (line_on != line_off) {
     dist = line_on.distance(stop_on, 'us') + line_off.distance('us', stop_off);
  }

  alert('Your trip has ' + dist + ' stops!');

}

nycSubway = new SubwaySystem('NYC Subway', [n, l, s, o]);
