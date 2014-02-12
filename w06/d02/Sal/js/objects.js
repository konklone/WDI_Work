var sal = {
  name: "Sal",
  favoriteColor: "blue",
  disneyCharacter: "Pumba",
  hiya: sayHello,
  disney: whatsMyCharacter
}

function sayHello(){
  return "Hello, I'm " + this.name;
}

function whatsMyCharacter() {
  return "I am similar to " + this.disneyCharacter;
}

/******* FOR EACH FUNCTION *******/
// for (var key in sal) {
//   console.log(sal[key])
// }

/******* FOR EACH OBJECT FUNCTION *******/
function forEachObj(obj, action) {
  for (var key in obj) {
    action(key, obj[key]);
  }
}

/******* TO USE FOR EACH OBJECT FUNCTION *******/
// forEachObj(sal, function(key, val) {
//   console.log("The key is: " + key);
//   console.log("The value is: " + val);
// }); 

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

/**** DEF INITIALIZE ***/
function Monkey(name) {
  this.name = name; 
  this.onTree = false; 
}
/**** DEF INITIALIZE ***/


Monkey.prototype.speak = function() {
  return "Hello, I am " + this.name; 
}

Monkey.prototype.climb = function() {
  return this.onTree = true; 
}

var shmoopy = new Monkey("Shmoopy");
var bloopy = new Monkey("Bloopy");






