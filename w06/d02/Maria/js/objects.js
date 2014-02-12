//name, age, diney character

var me = {
  name: "Jeff",
  favoriteColor: "Blue",
  disneyCharacter: "Baloo",
  hiya: sayHello,
  disney: whatsMyCharacter
}

function sayHello(){
  return "Hello, I'm " + this.name;
}

function whatsMyCharacter() {
  return "I am similar to " + this.disneyCharacter
}

// for (var key in me) {
//   console.log(key, me[key]);
// }

function forEachObj(obj, action) {
  for (var key in obj) {
    action(key,obj[key]);
  }
}

function keys( obj) {
  var keys = [];
  for (var key in obj){
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
  climb: function(){
    this.onTree = true;
  }
};

function Monkey(name){
  this.name = name;
  this.onTree = false;
}

Monkey.prototype.speak = function(){
  return "Hello, I am " + this.name;
};

Monkey.prototype.climb = function(){
  return this.onTree = true;
};



// forEachObj(me, function(key, val){
 
// console.log("The key is: " + key);
// console.log("The value is: " + val);
// });


//me.disney();
//"I amsimilar to Baloo"
// me.hiya
// function sayHello(){
//   return "HELLO!";
// }
// me.hiya();
// "HELLO!"