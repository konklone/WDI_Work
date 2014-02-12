// happitails == new shelter
//happitails.animals -- puts animals in an array
//happitails.to_s -- "happitails has x animals for adoption"
//happitails.hasAnimal() -- true/false for said animals
//lincoln = new animal, dog with .name, .type
// lincoln.spekak = "I am a _type_, named _name_"

function Shelter(name){
  this.name = name;
  this.animalia = [];
}

Shelter.prototype.animals = function(animal){
  this.animalia.push(animal);
}
Shelter.prototype.to_s = function(animalia){
  return this.name +" has " +this.animalia.length+ " animals to adopt";
}
Shelter.prototype.adopt = function(animal){
  return "This animal " + this.animalia.pop + " was adopted.";
}
Shelter.prototype.hasAnimal = function(animal){
  if (this.animalia.indexOf(animal) != -1){
    return true;
  }else{
    return "KILL YOURSELF!!!";
  }
}

function Animal(name, type){
  this.name = name;
  this.type = type;
}

Animal.prototype.speak = function() {
  return "I am " +this.name+ " and I am a " + this.type;
};
