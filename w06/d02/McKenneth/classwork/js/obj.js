var me = {

  name: "Mac Daddy",
  age: 12,
  disneyCharacter: "Ursula",
  hiya: function(){
   return "Hello, I'm " + this.name;
  },
  disney: whatsMyCharacter
}

function sayHello(){
  return "Hello!"
}

function whatsMyCharacter(){
  return "My disney character is " + this.disneyCharacter;
}

// for (var key in obj){
//   console.log(key, obj[key]);
// }

// must pass another function into actino for it to work
function forEachObject(obj, action){
  for (var key in obj){
    action(key, obj[key]);
  }
}

function keys(obj){
  var keyArray = [];

  for (var key in obj){
    keyArray.push(key);
  }
  return keyArray;
}

var monkey = {
  name: "Shmoopy",
  onTree: false,
  speak: function(){
    return "Hello, I am " + this.name;
  },
  climb: function(){
    this.onTree = true;
  }
}

// def initialize -- NEW MONKEY OBJECT "CLASS"

function Monkey(name) {
  // setting new instance variables
  this.name = name;
  this.onTree = false;
}
// instance methods -- defined on the prototype of
// an object.
Monkey.prototype.speak = function(){
  return "Hello, I am " + this.name;
}
Monkey.prototype.climb = function(){
  return this.onTree = true;
}

// make a new monkey object
var bloopy = new Monkey("Bloopy");











