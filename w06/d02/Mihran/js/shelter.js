function Shelter(name) {
  this.name = name
  this.animals = []
}

Shelter.prototype.adopt = function(animal){
  this.animals.splice(this.animals.indexOf(animal), 1)
}

Shelter.prototype.rescue = function(animal) {
  this.animals.push(animal);
}

Shelter.prototype.toString = function() {
  return this.name + " has " + this.animals.length + " up for adoption."
}

Shelter.prototype.hasAnimal = function(animal) {
  return this.animals.indexOf(animal) != -1;
}

var happitails = new Shelter("Happitails");


function Animal(name, type) {
  this.name = name;
  this.type = type;
}

Animal.prototype.speak = function(){
  return "Hello, my name is "+ this.name
}

var lincoln = new Animal("Lincoln", "Dog");

// var lincoln = {
//   type: "Dog",
//   name: "Lincoln"
// }

