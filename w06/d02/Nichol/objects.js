//name, age, disneyCharacter

var me = new Object();
me.name = "Nichol";
me.age = "38";
me.favoriteColor = "Blue";
me.disneyCharacter = "WALLE";

function sayHello() {
  return "Hello!";
}

me.greet = sayHello;

me.hiya = function() {
  return "Hello, I'm " + this.name;
}

function whatsMyCharacter(){
  return "I'm silimar to " + this.disneyCharacter;
}

me.whatsMyCharacter = whatsMyCharacter;

// for (var key in me) {
//   console.log(key, me[key])
// };

function forEachObj(obj, action) {
  for (var key in obj) {
    action(key, obj[key])
  };
}

// forEachObj(me, function(key, val){
//   console.log("the key is: " + key);
//   console.log("the value is " + val);
// })


function keys(obj) {
  var keys_as_array = [];
  for (var key in obj) {
    keys_as_array.push(key);
  }
  return keys_as_array;
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

Monkey.prototype.speak = function (){
  return "Hello I am " + this.name;
}

Monkey.prototype.climb = function (){
  return this.onTree = true;
}

function bleach(){
  var color = "white"
  
  this.wash = false;

  console.log(color);
}
