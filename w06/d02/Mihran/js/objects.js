var me = {
  name: "Mihran",
  favoriteColor: "Red",
  disneyCharacter: "Thomas O'Malley",
  hiya: sayHello,
  disney: whatsMyCharacter
}

function sayHello() {
  return "Hello, I'm "+ this.name;
}

function whatsMyCharacter() {
  return "I'm similar to " + this.disneyCharacter
}

// for (var currentKey in me) {
//   console.log(currentKey, me[currentKey]);
// }

function forEachObj(obj, action) {
  for (var key in obj) {
    action(key, obj[key])
  }
}

// forEachObj(me, function(key, val) {
//   console.log("The key is " + key);
//   console.log("The value is "+ val);
// });


function keys(obj) {
  var keys = []
  for (var key in obj) {
    keys.push(key)
  }
  return keys;
}


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

function Monkey(name) {
  this.name = name;
  this.onTree = false;
}


Monkey.prototype.speak = function(){
  return "Hello, I am " + this.name;
}

Monkey.prototype.climb = function() {
  return this.onTree= true;
}


var shmoopy = new Monkey("Shmoopy");
var bloopy = new Monkey("Bloopy");

