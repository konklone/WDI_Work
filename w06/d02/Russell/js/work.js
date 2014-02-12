window.onload = function () {
  console.log("Loaded!");
}

var dwarrow = ["Doc", "Grumpy", "Happy", "Sneezy", "Dopey", "Sleepy", "Bashful"];

// say "Hi ho! My Name is ___"
function announceDwarrow() {
for (var i = 0; i <= dwarrow.length -1; i++) {

console.log("Hi ho! My name is " + dwarrow[i]); 
}
return "All Dwarrow Announced!"
}

// you are going to do a for loop and you are going to use 
//as your iterator the variable i and start 
//it at zero and you are going to go to 
//i is equal to the length of the array -1 and 
//you are going to incrememnt the legnth by 1


// make a forEach method so we don't have to use this 
//counting method


 //we are expecting action to be a function
  //a function can be passed into another function as action
function forEach(arr, action) {
for (var i = 0; i < arr.length; i++) {
  console.log(arr[i], i);
  action(arr[i]);
  }
}

function hiho(dwarf) {
  forEach(dwarrow, function(dwarf) {
    console.log("Hi ho! My name is " + dwarf);
  });
  return "All dwarrow announced!";
  }




var numbers = [1,2,3,4]

function map(arr, action) {
  var newArray = [];

  forEach(arr, function(item){
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


function upcase(dwarf){
  return dwarf.toUpperCase();
}


var colors = ['red', 'blue', 'green', 'orange'];


map(colors, function(color){
  if (color === "blue") {
    return color + "is AWESOME";
  } else {
    return color + "is not so great";
  }
});

//this is equivalent to
function favoriteColorTransformer(color) {
  if (color === "blue") {
    return color + "is AWESOME";
  } else {
    return color + "is not so great";
  }
}

// function map(arr, action) {
//   var blueArray = ['blue'];
//   var booArray = ['green', 'orange', 'green'];

//   forEach(arr, function(item)){
//     blueArray.push(action(item));
//     booArray.push(action(item));
//   });
// }

// function good(color) {
//   return color + "is great";
// }

// function bad(color) {
//   return color + "is bad";
// }



// function map(arr, action){
// for (var i = 0; i < arr.length; i++) {
//   console.log(arr[i], i);
//   action(arr[i]);
//   }
// }

// function numb(num){
//   map(numbers, function(numb) {
//     console.log(num + 1);});
// }


// map(numbers, function(number)){
// return number + 1;
// });

// }

//[2,3,4,5]


 