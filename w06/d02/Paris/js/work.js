// window.onload = function() {
//   console.log( "Loaded!" );
// }

// var dwarrow = ["Doc", "Grumpy", "Happy", "Sneezy", "Dopey", "Sleepy", "Bashful"];

// function announceDwarrow() {
//   for (var i = 0; i <= dwarrow.length - 1; i++) {

//     console.log("Hi ho! My name is " + dwarrow[i]);
//   }
//   return "All dwarrow announced!";

// }

// // action is a yet unknown function. the action is an anonymous function.

// function forEach(arr, action) {
//   for (var i = 0; i < arr.length - 1; i++)  {
//     action(arr[i]);
//   }
// }

// function announceDwarrow2() {
//   forEach(dwarrow, function(dwarf){
//     console.log("Hi ho! My name is " + dwarf);
//   });
//   return "All dwarrow announced!";

// }

// // 

// var numbers = [1, 2, 3, 4];

// // 

// function simplePrint(something) {
//   console.log(something);
// }

// function simpleAction(something, action) {
//   action(something);
//   return "Action run!";
// }

// // simpleAction("Jeff", simplePrint);
 
// var numbers = [1, 2, 3, 4]

// function map(arr, action) {
//   var newArray = [];

// forEach(arr, function(item){
//   newArray.push( action(item));

// })
// return newArray;
// }

// function inc(number) {
//   return number + 1;

// }

// // 

// function map(arr, action) {
//   var newArray = [];

// function cap(dwarf) {
//   return dwarf.toUpperCase();
// }

// in the console: 
// map(dwarrow, cap);
["DOC", "GRUMPY", "HAPPY", "SNEEZY", "DOPEY", "SLEEPY"]

var colors = ["red", "blue", "green", "orange"]

function fave_color(color) {
  return color + " is an AWESOME color.";
}


// map(colors, function(color) {
//   if(color === "blue") {
//     return color + " is awesome";
//   } else {
//   return color + " is not a great color.";
// }
// });










