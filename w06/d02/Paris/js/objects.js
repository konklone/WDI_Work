

var me = {
  name: "Paris", 
  favoriteColor: "white", 
  disneyCharacter:"Daffy Duck",
  // hiya: sayHello
  hiya: sayHello
  // myChar: whatsMyCharacter
}

// in console:

// me
// Object {name: "Paris", favoriteColor: "white", disneyCharacter: "Daffy Duck"}
// me.favoriteColor
// "white"

// me.hiya();
// "Hello, I'm Paris"

function sayHello() {
  return "Hello, I'm " + this.name;
} 

function whatsMyCharacter() {
  "I am similar to " + this.disneyCharacter;
}


// me[key] is calling the value

for (var key in me) {
  console.log(key, me[key]);
}

function forEachObj(obj, action) {
  for (var key in obj) {
    action(key, obj[key]);
  }
}

// forEachObj(me, function(key, val)) {
//     console.log("The key is: " + key);
//     console.log("The val is: " + val);
// });

function Keys(me) {
  var keys = [];
  for (var key in obj) {
  keys << key;
  }
  // return keys;
}


// forEachObj(me, function(key, val) {
//   console.long("My " + key + " is " + val);
// });

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


// in the console:
// var hoopy = new Monkey("Hoopy");
// undefined
// hoopy.name
// "Hoopy"






