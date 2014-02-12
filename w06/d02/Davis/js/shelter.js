function Shelter(name) {
  this.name = name;
  this.animals = [];
}
  Shelter.prototype.adopt = function(animal) {
    this.animals.splice(this.animals.indexOf(animal), 1);
  }
  Shelter.prototype.leave = function(animal) {
    this.animals.push(animal);
  }
  Shelter.prototype.toString = function() {
    return this.name + " has " + animals.length + " animals up for adoption";
  }
  Shelter.prototype.hasAnimal = function(animal) {
    return this.animals.indexOf(animal) != -1;
  }

// animal template /////////////////////////////////////////////

function Animal(name, type) {
  this.name = name;
  this.type = type;
}
  Animal.prototype.speak = function() {
    return "Hi! I am a Dog named " + this.name;
  }

var lincoln = new Animal("Lincoln", "Dog");

