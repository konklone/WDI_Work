window.onload = function() {
  console.log("LOADED!");
};

/*
var dwarrow = ["Doc", "grumpy", "happy", "Sneezy", "Dopey", "Sleepy", "Bashful"];

function announceDwarrow(){

  for (var i = 0; i < dwarrow.length -1; i ++){
    console.log("Hi ho! My name is " + dwarrow[i] + "");
  }
  return "All dwarrow announced!"
}

function forEach(arr, action){
for (var i=0; i <= arr.length; i++){
  action(arr[i]);
  }
}


function announceDwarrow2(){

  forEach(dwarrow, function(dwarf){
    console.log("Hi ho! My name is " + dwarf);
  }
  return "All dwarrow announced!"
}
var numbers = [1,2,3,4];

function simplePrint(something){
  console.log(something);
}
forEach(numbers, simplePrint);
*/var dwarrow = ["Doc", "Grumpy", "Happy", "Sneezy", "Dopey", "Sleepy", "Bashful"];
 
// say "Hi ho! My name is __"
 
function announceDwarrow() {
  for (var i = 0; i <= dwarrow.length - 1; i++) {
    console.log("Hi ho! My name is " + dwarrow[i]);
  }
  return "All dwarrow announced!";
}
 
function forEach(arr, action) {
  for (var i = 0; i < arr.length; i++) {
    action(arr[i]);
  }
}
 
function hiHo(SHMEE) {
  console.log("Hi ho! My name is " + SHMEE);
}
 
function announceDwarrow2() {
  forEach(dwarrow, hiHo);
  return "All dwarrow announced!";
}
 
 
 
function simplePrint(something) {
  console.log(something);
}
 
function simpleAction(something, action) {
  action(something);
  return "Action run!";
}
 
var numbers = [1,2,3,4];
 
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
 
function upper(pooh) {
  return pooh.toUpperCase();
}
 
var colors = ["red", "blue", "green", "orange"];
 
map(colors, function(color){
 if (colors === "blue"){
  return color + "is awsum";
 }else {
  return color + " is not so great.";
 }
});

//same as above...
function favoritecolortransformer(color){
 if (colors === "blue"){
  return color + "is awsum";
 }else {
  return color + " is not so great.";
 }
}


 
// ["red is not so great", "blue is AWESOME", "green is not so great" ...]
 
 
// ["DOC", "SLEEPY" ... ]
 
 
//map(numbers, inc);
 
// [2,3,4,5]
 
// forEach(numbers, simplePrint);
 
// forEach numbers do |number|
//   puts number
// end


















