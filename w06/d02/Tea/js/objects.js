var me = {
  name: "Tea",
  favoriteColor: "Red",
  disneyCharacter: "Captain Jack",
  hiya: sayHello,
  disney: whatsMyCharacter
}



function sayHello() {
  return "Hello, I'm " + this.name + " !";
}

function whatsMyCharacter(){
  return "I'm similar to " + this.disneyCharacter;
}

function forEachObj(obj, action) {
  for (var key in obj) {
    action(key, obj[key]);
  }
}

function keys(obj){
  var allKeys = [];
  for (var key in obj) {
    allKeys.push(key);
  }
  return allKeys;
}


forEachObj(me, function(key, value){
  console.log("The key is " + key);
  console.log("The value is " + value);
});

var monkey = {
  name: "Shmoopy",
  onTree: false,
  speak: function() {
    return "Hello, I am " + this.name;
  },
  climb: function(){
    this.onTree = true;
  }
}

function Monkey(name) {
  this.name = name;
  this.onTree = false;
}

Monkey.prototype.speak = function() {
  return "Hello, I am" + this.name;
}

Monkey.prototype.climb = function() {
  return this.onTree = true;
}

