var lStops = ["8th", "6th", "Union Square", "3rd", "1st"];
var nStops = ["Times Square", "34th", "28th-n", "23rd-n", "Union Square", "8th"];
var sStops = ["Grand Central", "33rd", "28th", "23rd", "Union Square", "Astor Place"];


function Line(arr)  {
  this.stops = [];
  for(var i = 0; i < arr.length; i++){
    this.stops.push(arr[i]);
  }
}

function SubwaySystem() {
  this.lines = [];
}

var l = new Line(lStops);
var n = new Line(nStops);
var s = new Line(sStops);

var MTA = new SubwaySystem();

  MTA.lines.push(l);
  MTA.lines.push(n);
  MTA.lines.push(s);

// Train lines and SUBWAY SYSTEM complete

Line.prototype.distance = function(on, off, line) {
  var tripDistance = Math.abs( MTA.lines[line].stops.indexOf(on) - MTA.lines[line].stops.indexOf(off) );
  return tripDistance; 
};

SubwaySystem.prototype.takeTrip = function(){
  var startLine = prompt("What train do you want to take?");
  var getOn = prompt("What stop do you want to get on?");
  var stopLine = prompt("What train do you want to get off?");
  var getOff = prompt("What stop do you want to get off?");
  if( startLine === 'l' || stopLine === 'l'){
    var i = 0;
  }else if( startLine === 'n' || stopLine === 'n'){
    var i = 1;
  }else if( startLine === 's' || stopLine === 's'){
    var i = 2;
  }
  if( stopLine === 'l'){
    var j = 0;
  }else if( stopLine === 'n'){
    var j = 1;
  }else if( stopLine === 's'){
    var j = 2;
  }
  if(startLine === stopLine){
  alert( "Your trip is: " + MTA.lines[i].distance(getOn,getOff,i)+ " stops.");
  }else if (startLine != stopLine){
    alert("Your trip is: " + (MTA.lines[i].distance(getOn,"Union Square",i) + MTA.lines[j].distance("Union Square",getOff,j)) + " stops.");
  }
}
MTA.takeTrip();
