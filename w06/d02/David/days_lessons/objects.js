var me = {
  name: "David", 
  favoriteColor: "Purple", 
  disneyCharacter: "King Louie",
  hiya: function() {
    return "Hello, I'm " + this.name;
  },
  disney: whatsMyCharacter 
};

function sayHello(){
  return "HELLO!";
}

function whatsMyCharacter(character) {
  return "I am similiar to " + this.disneyCharacter;
}

// for (var currentKey in me) {
//   console.log(currentKey, me[currentKey])
// }

function forEachObj(obj, action) {
  for (var key in obj) {
    action(key, obj[key]);
  }
}

// forEachObj(me, function(key, val) {
//   console.log("The key is: " + key);
//   console.log("The value is: " + val);
// });

function keys(obj){
  var new_array = [];
  for (var key in obj) {
    new_array.push(key);
  }
  return new_array;
}


// var monkey = {
//   name: "Shmoopy",
//   onTree: false, 
//   speak: function() {
//     return "Hello, I am " + this.name;
//   }, 
//   climb: function() {
//     this.onTree = true;
//   }
// }

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


