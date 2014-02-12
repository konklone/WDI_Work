function Shelter(name) {
  this.name = name;
  this.animals = [];
}

Shelter.prototype.adopt = function(animal) {
  this.animals.splice(this.animals.indexOf(animal), 1);
}

Shelter.prototype.toString = function() {
  console.log(this.name + " has " + this.animals.length + " animals up for adoption.");
}

function Animal(name, type) {
  this.name = name;
  this.type = type;
}

Animal.prototype.speak = function() {
  "Hi! I am a " + this.type + " named " + this.name + ".";
}

Shelter.prototype.hasAnimal = function(animal) {
  if (this.animals.indexOf(animal) != -1) {
    false;
  }
  else {
    true;
  }
}