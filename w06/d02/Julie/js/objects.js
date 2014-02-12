//name, age, disneyCharacter
var me = {
  name: "Julie",
  favoriteColor: "Blue",
  disneyCharacter: "Thumper",
  hiya: sayHello,
  sayCharacter: whatsMyCharacter
  }

function sayHello(){
    return "Hello, I'm " + this.name;
   }

function whatsMyCharacter() {
  return "I am similar to " + this.disneyCharacter;
}

for (var key in me) {
  console.log(key, me[key]);
}

function forEachObj(obj, action){
  for (var key in obj) {
  console.log(key, obj[key]);
  }
}

function keys(obj) {
  var keys = [];
  
  for (var key in obj) {
    keys.push(key);
  }
  return keys;
}

var monkey = {
  name: "Schmoopy",
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

Monkey.prototype.speak = function() {
  return "Hello, I am " + this.name;
}

Monkey.prototype.climb = function() {
  return this.onTree = true;
}

var shmoopy = new Monkey("Shmoopy");
var bloopy = new Monkey("Bloopy");
// when calling forEachObj pass in an anonymous function in the console

