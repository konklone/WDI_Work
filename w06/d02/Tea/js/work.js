window.onload = function() {
  console.log("LOADED!");
}

var dwarrow = ["Doc", "Grumpy", "Happy", "Sneezy", "Dopey", "Sleepy", "Bashful"];

function announceDwarrow(){
  for (var i = 0; i < dwarrow.length; i++) {
    console.log("Hi ho! My name is " + dwarrow[i]);
  }
}

//  iterator
function forEach(arr, action) {
  for (var i = 0; i < arr.length; i++){
    action(arr[i]);
  }
}

function announceDwarrow2() {
  forEach(dwarrow, function(dwarf) {
    console.log("Hi ho! My name is" + dwarf);
  })
  return "All dwarrow announced!";
}

function simpleAction(something, action) {
  action(something);
  return "Action run!";
}

var numbers = [1, 2, 3, 4];

function map(arr, action) {
  var array = new Array();
  forEach(arr, function(item) {
    array.push(action(item));
  })
  return array;
}

function inc(number) {
  return number + 1;
}

function dec(number) {
  return number - 1;
}

function upp(dwarf) {
  return dwarf.toUpperCase();
}

var colors = ["red", "blue", "green", "orange"];

map(colors, function(color){
  if (color === "red") {
    return color + " is sexy";
  } else {
    return color + " is okay";
  }
});
