function Shelter(name) {
  this.name = name;
  this.animals = [];
}

Shelter.prototype.adopt = function(animal) {
  var index = this.animals.indexOf(animal);
  var adopted = this.animals.splice(index, 1);
  return adopted;
}

Shelter.prototype.dump = function(animal) {
  this.animals.push(animal);
}

Shelter.prototype.toString = function() {
  return this.name + " has " + this.animals.length + " animal for adoption";
}

Shelter.prototype.hasAnimal = function(animal) {
  return this.animals.indexOf(animal) <= 0;
}

function Animal(name, type) {
  this.name = name;
  this.type = type;
}

Animal.prototype.speak = function() {
  return "Hi! I am a " + this.type + " named " + this.name;
}