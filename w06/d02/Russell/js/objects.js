// name, favoriteColor, disneyCharacter
var me = {
  name: "Jeff",
  favoriteColor: "Blue",
  disneyCharacter: "Baloo",
  hiya: sayHello,
  disney: whatsMyCharacter
}

function sayHello() {
  return "Hello, I'm " + this.name;
}

function whatsMyCharacter() {
  return "I am similar to " + this.disneyCharacter;
}

// for (var currentKey in me) {
//   console.log(currentKey, me[currentKey]);
// }

function forEachObj(obj, action) {
  for (var key in obj) {
    action(key, obj[key]);
  }
}

function keys(obj) {
  var keys = [];

  for (var key in obj) {
    keys.push(key);
  }

  return keys;
}

/* 
var shmoopy = {
  name: "Shmoopy",
  onTree: false,
  speak: function() {
    return "Hello, I am " + this.name;
  },
  climb: function() {
    this.onTree = true;
  }
}

var bloopy = {
  name: "Bloopy",
  onTree: false,
  speak: function() {
    return "Hello, I am " + this.name;
  },
  climb: function() {
    this.onTree = true;
  }
}
*/

function Monkey(name) {
  this.name = name;
  this.onTree = false;
}

Monkey.prototype.speak = function() {
  return "Hello, I am " + this.name;
}

Monkey.prototype.climb = function() {
  return this.onTree = true;
}

var shmoopy = new Monkey("Shmoopy");
var bloopy = new Monkey("Bloopy");


/*
forEachObj(me, function(key, val) {
  // have access to both key and value for
  // each key/value pair in the obj
  console.log("They key is: " + key);
  console.log("The value is: " + val);
});


keys(me);
#=> ["name", "favoriteColor", "disneyCharacter"]

*/


// "I am similar to ___"

// for (var i = 0; i < array.length; i++) {
//   array[i];
// }