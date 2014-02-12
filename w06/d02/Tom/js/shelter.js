function Shelter(name) {
  this.name = name;
  this.animals = [];
}

 Shelter.prototype.adopt = function(animal) {
  this.animals.splice(this.animals.indexOf(animal), 1);
}

Shelter.prototype.rescue = function(animal) {
  this.animals.push(animal);
}

Shelter.prototype.toString = function() {
  return this.name + " has " + this.animals.length;
}

Shelter.prototype.hasAnimal = function(animal) {
  return this.animals.indexOf(animal) != -1;
}

function Animal(name, type) {
  this.name = name;
  this.type = type;
}

Animal.prototype.speak = function() {
  return "Hi I am a " + this.type + "named " + this.name;
}

