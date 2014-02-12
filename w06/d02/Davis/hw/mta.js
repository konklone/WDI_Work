// subway lines //////////////////////////////////////////////////

var n_line = ["times square-n", "34th-n", "28th-n", "23rd-n", "union square-n", "8th-n"]

var l_line = ["8th-l", "union square-l", "3rd-l", "1st-l"]

var six_line = ["grand central-6", "33rd-6", "28th-6", "22rd-6", "union square-6", "astor place-6"]

// subway line object ////////////////////////////////////////////

function Line(stops_list) {
  this.stops = stops_list;
}

// .distance method that returns number of stops bet 2 stops
  // take subway line w/ end at 2nd stop
  // iterate through from begin index to end index
    // add +1 to counter in each iteration
Line.prototype.distance = function(stop1, stop2) {
  return Math.abs( this.stops.indexOf(stop1) - this.stops.indexOf(stop2) );
}

// subway system object ////////////////////////////////////////////

function SubwaySystem() {
  var n_line = new Line(["times square-n", "34th-n", "28th-n", "23rd-n", "union square-n", "8th-n"]);
  var l_line = new Line(["8th-l", "union square-l", "3rd-l", "1st-l"]);
  var six_line = new Line(["grand central-6", "33rd-6", "28th-6", "22rd-6", "union square-6", "astor place-6"]); 
}

function chooseSubway(user_input) {
  if ( user_input[0] === "n" ) {
    return n_line;
  } else if ( user_input[0] === "l" ) {
    return l_line;
  } else {
    return six_line;
  }
}

SubwaySystem.prototype.takeTrip = function() {
  var start = prompt("What subway stop do you want to start at?");
  var start_subway = chooseSubway(start);

  var end = prompt("What subway stop do you want to end at?");
  var end_subway = chooseSubway(end);
  // check if both stops in same subway line
    // if same: return line.distance(start, end)
    if ( start_subway === end_subway ) {
      return start_subway.distance(start, end);
    } else {
      return start_subway.distance(start, "union square") + end_subway.distance("union square", end);
    }
}
