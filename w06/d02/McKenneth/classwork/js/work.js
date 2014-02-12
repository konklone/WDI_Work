window.onload = function(){
  console.log("LOADED!");
}

var dwarrow = ["Doc", "Grumpy", "Happy", "Sneezy","Dopey", "Sleepy", "Bashful"];

// say "Hi ho!, my name is __"

function announceDwarrow(){
  for ( var i = 0; i < dwarrow.length; i++ ) {
    console.log("Hi ho!, my name is "+ dwarrow[i]);
  }
  return "All dwarrow announced."
}

function forEach(arr,action){
  for (var i = 0; i < arr.length; i++){
    action(arr[i]);
  }
  return "All dwarrow announced.";
}
function announceDwarrow2(){
  forEach(dwarrow, function(dwarf){
    console.log("Hi ho!, my name is "+ dwarf.toUpperCase());
  });
}

var numbers = [1,2,3,4];
var numbers2 = [2,3,4,5];
// function map(arr, function)
// return number plus one

function map(arr, action){
  var output = [];
  forEach(arr, function(item){
    output.push( action(item) );
  });
  return output;
}

function inc(number) {
  return number+1;
}
function upper(poo){
  return poo.toUpperCase();
}
// function addEach(arr, func){
//   for (var i = 0; i< arr.length; i++){
//     console.log(arr[i], i);
//     return func(arr[i] + 1);
//   }
// }

// function map(){
//   addEach(numbers, function(add){
//     console.log("This plus one: " + add);
//   });
// }


var colors = ["red", "blue", "green", "orange"];


map (colors, function(col){
  if (col === "blue") {
    return col + " is AWESOME";}
  else{
    return col + " is LAME";
  }
})