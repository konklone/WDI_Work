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

Shelter.prototype.hasAnimal = function(animal) {
   //if the animal is not faound in the animals array...
   return this.animals.indexOf(animal) != -1;
}

Shelter.prototype.toString = function() {
   return this.name + " has " + this.animals.length + " animal(s) up for adoption.";
}

function Animal(name, type) {
   this.name = name;
   this.type = type;
}

Animal.prototype.speak = function() {
   return "Hi! I am a " + this.type + " named " + this.name + ".";
}

happitails = new Shelter("Happitails");

lincoln = new Animal("Lincoln", "Dog");