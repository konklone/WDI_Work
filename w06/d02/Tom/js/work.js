window.onload = function() {
  console.log("LOADED!");
}

var dwarrow = ["DOC", "Grumpy", "Happy", "Sneezy", "Dopey", "Sleepy", "Bashful"];

function announceDwarrow() {
  for (var i = 0; i <= dwarrow.length -1; i++) {
    console.log("Hi ho! My name is " + dwarrow[i]);
  }
  return "All dwarrow announced";
}

function forEach(arr, action) {
  for (var i = 0; i < arr.length; i++) {
    action(arr[i]);
  }
}

function announceDwarrow2() {
  forEach(dwarrow, function(dwarf) {
    console.log("Hi ho! My name is " + dwarf);
  });
  return "All dwarrow announced!";
}

var numbers = [1, 2, 3, 4];

function map(arr, action) {
  var newArray = [];

  forEach(arr, function(item) {
    newArray.push( action(item) );
  });

  return newArray;
}

function inc(number) {
  return number + 1;
}

function dec(number) {
  return number - 1;
}

function upper(foo) {
  return foo.toUpperCase();
}

var colors = ["red", "blue", "green", "orange"];

map(colors, function(color) {
  if (color === "orange") {
    return color + " is Awesome";
  } else {
      return color + " is not so nice";
    }
  });


function countWords(text, findWord) {
  var words = text.split(" ");
  var counter = 0;

  forEach(words, function(word) {
    if (word.indexOf(findWord) != -1) {
      counter += 1;
    }
  });

  return counter;
}













































