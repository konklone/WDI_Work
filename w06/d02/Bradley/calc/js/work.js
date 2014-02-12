window.onload = function() {
  console.log("LOADED");
};

var dwarrow = ["Doc", "Grumpy", "Happy", "Sneezy", "Sleepy", "Dopey", "Bashful"];

// function announceDwarf() {
//   for (var i = 0; i < dwarrow.length; i ++) {
//     console.log("Hi ho! My name is " + dwarrow[i] + "!");
//   };
// };

function forEach(arr, action) {
  for (var i = 0; i < arr.length; i ++) {
    action(arr[i]);
  };
};

function announceDwarf2() {
  forEach(dwarrow, function(dwarf) {
    console.log("Hi ho! My name is " + dwarf);
  });
};

numbers = [2, 3, 4, 5]

function map(arr, action) {
  var newArray = [];
  forEach(arr, function(item) {
    newArray.push(action(item));
  });
  return newArray
};

colors = ["red", "blue", "green"]

map(colors, function(color) {
  if (color === "blue") {
    return color + " is AWESOME";
  }
  else {
    return color +  " is not so great.";
  };
});

