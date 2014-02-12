// name, favoriteColor, disneyCharacter

var me = {
    name: "Tom",
    favoriteColor: "Orange",
    disneyCharacter: "Mighty Mouse",
    hiya: sayHello,
    disney: whatsMyCharacter
  }

function sayHello() {
  return "Hello, I'm " + this.name;
}

function whatsMyCharacter() {
  return "I am similar to " + this.disneyCharacter;
}

for (var key in me) {
  console.log(key, me[key]);
}

function forEachOject(obj, action) {
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



var monkey = {
  name: "Shmoopy",
  onTree: false,
  speak: function() {
    return "Hello, I am " + this.name;
  },
  climb: function() {
    this.onTree = true;
  }
}


/* this is similar to the creation of a class in Ruby, a template or prototype.  We then instantiate and object */
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












