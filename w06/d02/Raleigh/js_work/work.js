window.onload = function(){
   console.log("LOADED!");
}

var dwarrow = ["Doc", "Happy", "Sneezy", "Dopey", "Grumpy", "Bashful", "Sleepy"];

//say "Hi ho! My name is..."

function announceDwarrow() {
   for (var i=0; i < dwarrow.length; i++){
      console.log("Hi ho! My name is " + dwarrow[i]);
   }
   return "All dwarrow announced!";
}

//a function that acts as a for loop
function forEach(array, action){
   for (var i=0; i < array.length; i++){
      action(array[i]);
   }
}

//the announceDwarrow() implementing the forEach()
function announceAgain() {
   forEach(dwarrow, function(dwarf){
      console.log("Hi ho! My name is " + dwarf);
   });
   return "All dwarrow announced!";
}

//a simple example clarifying the above
function simplePrint(something){
   console.log(something);
}

function simpleAction(something, action){
   action(something);
}

var numbers = [1, 2, 3, 4, 5]

function map(array, func){
   for (var i=0; i < array.length; i++){
      array[i] = func(array[i]);
   }
   return array
}

function inc(number){
   return number + 1;
}

// map(numbers, inc);

function dec(number){
   return number - 1;
}

function upCase(dwarf){
   return dwarf.toUpperCase();
}

//colors example
var colors = ["blue", "teal", "purple", "lime", "pink"]

// map function not working with this example
map(colors, function(color){
   if (color === "teal"){
      return color + " is AWESOME!";
   } else {
      return color + " is okay...";
   }
});
