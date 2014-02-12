window.onload = function() {
  console.log("LOADED");
}



// function announceDwarrow() {
//   for (var i = 0; i <= dwarrow.length - 1; i++) {
//     console.log("Hi ho! My name is " + dwarrow[i]);
//   }
// }
var numbers = [1, 2, 3, 4];

var dwarrow = ["Doc", "Grumpy", "Happy", "Sneezy", "Dopey", "Sleepy", "Bashful"];

function forEach(arr, action) {
  for (var i = 0; i < arr.length; i++) {
  action(arr[i]);
  }
}


function map(arr, action) {
  var newArray = [];
  forEach(arr, function(item) {
    newArray.push( action(item) );
  });
  return newArray;
}

function upCase(item){
  return item.toUpperCase();
}






var colors = ["red", "blue", "green", "orange"];

