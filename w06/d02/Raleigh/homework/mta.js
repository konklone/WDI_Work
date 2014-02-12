//MTA

var n = ["Times Square", "34th", "28th-North", "23rd-North", "Union Square", "8th"]
var l = ["8th", "6th", "Union Square", "3rd", "1st"]
var six = ["Grand Central", "33rd", "28th-South", "23rd-South", "Union Square", "Astor"]
var one = ["59th", "50th", "Times Square", "34th", "28th"]


// var start_line = prompt("Which line would you like to start on?");
// var start_station = prompt("Which station would you like to start at?");
// var end_line = prompt("Which line would you like to end on?");
// var end_station = prompt("Which station would you like to end at?");

function Line(stops){
   this.stops = stops;
};

// line_one = new Line(one);

// Line.prototype.distance = function(get_on, get_off) {
// };

function SubwaySystem(){
   
   // num_stops = num_of_stops
};

SubwaySystem.prototype.takeTrip = function() {
   on_line = prompt("Which line would you like to start on?");
   start_line = new Line(on_line);

   start_station = prompt("Which station would you like to start at?");

   off_line = prompt("Which line would you like to end on?");
   end_line = new Line(off_line);

   end_station = prompt("Which station would you like to end at?");
}

SubwaySystem.prototype.distance = function() {
   if(start_line === end_line){
      var num_stops = Math.abs(start_line.stops.indexOf(get_on) - end_line.stops.indexOf(get_off));
   }
   else {
      var first = Math.abs(start_line.stops.indexOf(get_on) - start_line.stops.indexOf("Union Square"));
      var second = Math.abs(end_line.stops.indexOf(get_on) - end_line.stops.indexOf("Union Square"));
      var num_stops = first - second;
   }
}


// alert("You have " + num_stops + " stops.")