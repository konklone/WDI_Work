var me = {
  name: "Erica",
  favoriteColor: "blue",
  disneyCharacter: "Esmeralda",
  hiya: sayHello,
  disney: whatsMyCharacter
}

function sayHello() {
  return "Hello, I'm " + this.name;
}

function whatsMyCharacter() {
  return "I am similar to " + this.disneyCharacter;
}

// enumeration:

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

function values(obj) {
  var values = [];
  for (var key in obj) {
    values.push(obj[key]);
  }
  return values;
}

// monkeys

var shmoopy = {
  name: "Shmoopy",
  onTree: false,
  speak: function(){
    return "Hello, I am " + this.name;
  },
  climb: function(){
    return this.onTree = true;
  }
}

var bloopy = {
  name: "Bloopy",
  onTree: false,
  speak: function(){
    return "Hello, I am " + this.name;
  },
  climb: function(){
    return this.onTree = true;
  }
}

////////////////////////////

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

