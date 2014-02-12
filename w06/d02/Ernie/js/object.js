var me = {
  name: "Ernie",
  age: 81,
  favoriteColor: "Blue",
  disneyCharacter: "?",
  hiya: sayHello
  disney: disneyCharacter?
}

function sayHello () {
  return "HELLO!";
}

function disneyCharacter? () {
  return "I am similar to " + this.disneyCharacter
}


function forEachObj (obj, action) {
  for (var key in obj) {
  action(key, obj[key]); 
  }
}

forEachObj(me, function (key,value) {
  console.log("The key is" + key);
  console.log("The value is" + value);
});


function keys (obj) {
  var keys = [];
  for (var key in obj) {
  newArray.push (key);
 }
 return keys;
}

function Monkey (name) {
  this.name = name;
  this.onTree = false;
}

Monkey.prototype.speak = function() {
  return this.onTree = true;
};

Monkey.prototype.climb = function() {
  return this.onTree = true;
};

var shmoopy = new Monkey("shmoopy");
var bloopy = new Monkey("bloopy");



