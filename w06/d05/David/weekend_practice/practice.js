window.onload = function(){
  console.log("LOADED!!");
}

function Monkey(name) {
  this.name = name;
  this.onTree = false;
}

Monkey.prototype.speak = function() {
  return "Hello, I'm " + this.name;
}

Monkey.prototype.climb = function() {
  return this.onTree = true;
}

var bim = new Monkey("bim");
var bop = new Monkey("bop");

function Jungle(arr) {
  this.animals = arr;
}

var amazon = new Jungle([bim, bop]);

Jungle.prototype.listAnimals = function(){
  
}