//name, age, disneyCharacter

var me = {
  name: "Brad",
  favoriteColor: "Green",
  age: 20,
  disneyCharacter: "Genie",
  hiya: sayHello,
  similarTo: whatsMyCharacter
}

function sayHello() {
  return "HELLO! I'm " + this.name;
}

function whatsMyCharacter() {
  return "I am similar to " + this.disneyCharacter;
}

function forEachObj(obj, action) {
  for (var key in obj) {
    action(key, obj[key]);
  }
}

function keys(object) {
  newArray = []

  forEachObj(object, function(key, value) {
    newArray.push(key);
  });

  return newArray;
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

var hoopy = new Monkey("Hoopy");