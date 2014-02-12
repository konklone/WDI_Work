window.onload = function() {
  console.log("LOADED!");
}

var dwarrow = ["Doc", "Grumpy", "Happy", "Sneezy", "Dopey", "Sleepy", "Bashful"]

function announceDwarrow() {
  for (var i = 0; i <= dwarrow.length -1; i++) {
    console.log("Hi ho! my name is " + dwarrow[i]);
  }
  return "All dwarrow announced!";
}


function forEach(arr, action) {
  for (var i = 0; i< arr.length; i++) {
    action(arr[i]);
  }
}

function announceDwarrow2() {
  forEach(dwarrow, function(dwarf) {
    console.log("Hi ho! my name is " + dwarf);
  });
}


// forEach(numbers, function(number){
//   console.log(number);
// });


var numbers = [1,2,3,4]; 

function simpleAction(something, action) {
  action(something);
  return "Action run!";
}

function simplePrint(something) {
  console.log(something);
}

// forEach(numbers, simplePrint)


function inc(number) {
  return number+1;
}

function dec(number) {
  return number-1;
}

function map(arr, action) {
  var newArray = [];
  forEach(arr, function(item) {
    newArray.push( action(item) );
  });
  return newArray;
  return "This worked!";
}

function upper(word) {
  return word.toUpperCase();
}

var colors = ["red", "blue", "green", "orange"];

map(colors, function(color) {
  if (color === "blue") {
    return color + " is awesome";
  }
  else {
    return color + " is not so great";
  }
});


