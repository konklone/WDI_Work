function Shelter(name) {
  this.name = name;
  this.animals = [];
}
 
Shelter.prototype.animals() {
  return animals;
}
 
Shelter.prototype.rescue = function(animal) {
  animals.push(animal);
  return animal;
}
 
Shelter.prototype.toString = function() {
  return this.name + " has " + this.animals.length + " animals up for adoption.";
}
 
Shelter.prototype.hasAnimal = function(animal) {
  index = this.animals.indexOf(animal);
  if (index != -1){
    return true;
  }else {
    return false;
  }
}
 
function Animal(name, species) {
  this.name = name;
  this.type = species;
}
 
Animal.prototype.speak = function() {
  return "Hi! I am a " + this.type + " named " + this.name;
}