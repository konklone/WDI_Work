var me = {
  name: "Davis",
  favoriteColor: "Blue",
  disneyChar: "Stuff",
  hiya: sayHello,
  mychar: whatsMyChar
}

function sayHello() {
  return "Hello, I'm " + this.name;
}

function whatsMyChar() {
  return "I am similar to " + this.disneyChar
}

function forEachObj(obj, action) {
  for (var key in obj) {
    action(key, obj[key]);
  };
}

function keys(obj) {
  var keys = [];

  forEachObj(obj, function(key, value){
    keys.push(key);
  });

  return keys;
}

////////////////////////////////////////////////////////////////

var monkey = {
  name: "Shmoopy",
  onTree: false,
  speaK: function() {
    return "Hello, I am " + this.name;
  },
  climb: function() {
    this.onTree = true;
  }
}

////////////////////////////////////////////////////////////////

// define monkey class aka TEMPLATE
function Monkey(name) {
  this.name = name;
  this.onTree = false;

  // note:
  // cant to this.speak because scope limited to here
  // not allow for inheritance
}
  // define instance methods aka PROTOTYPEs
  Monkey.prototype.speak = function() {
    return "Hello, I am " + this.name;
  }

  Monkey.prototype.climb = function() {
    return this.onTree = true;
  }

// instantiate monkey class
var hoopy = new Monkey("Hoopy");

