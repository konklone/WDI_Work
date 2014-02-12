window.onload = function() {
  console.log("LOADED!"); 
}

var dwarrow = ["Doc", "Grumpy", "Happy", "Sneezy", "Dopey", "Sleepy", "Bashful"];

// say "Hi ho!" My name is __ " 

function announceDwarrow() {
  for (var i = 0; i <= dwarrow.length - 1; i++) {
    console.log("Hi ho! My name is " + dwarrow[i]);
  };
};

function forEach(arr, action) {
  for (var i = 0; i < arr.length ; i++) {
    action(arr[i]);
  }
}

function announceDwarrow2() {
  forEach(dwarrow, function(dwarf) {
    console.log("Hi Ho! My name is " + dwarf);
  });
  return "All dwarrow announced!";
};

numbers = [1,2,3,4];

function map(arr, action) {
  var newArray = [];
  forEach(arr, function(item) {
    newArray.push(action(item));  
  });
  return newArray;
}

function inc(number) {
  return number + 1; 
}

function dec(number) {
  return number - 1; 
}

function upcase(dwarf) {
  return dwarf.toUpperCase();
}

var colors = ["red", "blue", "green", "orange"];

map(colors, function(color) {
  if (color === 'blue') {
    return color + ' is awesome'; 
  } else {
    return color + ' is not so awesome';
  }
});


