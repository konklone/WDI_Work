window.onload = function() {
  console.log("LOADED!");
}

var dwarrow = ["Doc", "Grumpy", "Happy", "Sneezy", "Dopey", "Sleepy", "Bashful"];

function announceDwarrow() {
  for (var i = 0; i <= dwarrow.length - 1; i++) {
    console.log("Hi ho! My name is " + dwarrow[i]);
  };

  return "All dwarrow annoucned!";
}


a = [1,2,3,4]

function simplePrint(something) {
  console.log(something);
}

//////////////////////////////////////

function hiho(dwarf) {
  console.log("Hi ho! My name is " + dwarf);
}

function forEach(arr, action) {
  for (var i = 0; i < arr.length; i++) {
    action(arr[i]);
  };
}

function announceDwarrow2() {
  forEach(dwarrow, hiho);
}

////////////////////////////////////////

var colors = ["red", "blue", "green", "orange"]

function plusOne(n) {
  return n + 1;
}

function upCase(word) {
  return word.toUpperCase();
}

function map( arr, action ) {
  var result = [];

  forEach(arr, function(item){
    result.push( action(item) );
  });

  return result;
}

//////////////////////////////////////

function count(text, word_choice) {
  words = text.split(" ");
  var result = 0;
  
  forEach(words, function(word) {
    if ( word.indexOf(word_choice) != -1 ) {
      result += 1;
    };
  });

  return result;
}
