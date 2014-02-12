window.onload = function() {
  console.log("LOADED!")
}

var dwarrow = ["Doc", "Grumpy", "Happy", "Sneezy", "Dopey", "Sleepy", "Bashful"]
var colors = ["red", "blue", "green", "orange"]

function announceDwarrow() {
  for (var i = 0; i < dwarrow.length; i++ ) {
    console.log("Hi ho! My name is " + dwarrow[i]);
  }
  return "All dwarrow announced!";
}

function forEach(arr, action) {
  for (var i = 0; i < arr.length; i++ ) {
    action(arr[i]);
  };
}

function simplePrint(thing) {
  console.log(thing);
}

function map(arr, action) {
  var new_arr = [];
  forEach(arr, function(arg){
    new_arr.push(action(arg));
  });
  return new_arr;
}

function upcase(string){
  return string.toUpperCase();
}

function announceDwarrow2() {
  forEach(dwarrow, function(dwarf) {
    console.log("Hi ho! My name is " + dwarf);
  });
  return "All dwarrow announced!";
}

