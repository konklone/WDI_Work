function Shelter (name) {
  this.name = name;
  this.animals = [];
}

Shelter.prototype.adopt = function(animal) {
  this.animals.splice(this.animals.indexOf(animal),1);
};

Shelter.prototype.rescue = function (animal) {
  this.animals.push(animal);
}

Shelter.prototype.toString = function () {
  return this.name + "has" + this.animals.length;
}

Shelter.prototype.hasAnimal = function (animal) {
   if (this.animals.indexOf(animal)!= 1) {};
}


Animal.prototype.animals = function (animals) {
  for (var i = 0; i < animal.length; i++) {
    animal[i]
  };
  return animal
}

function Animal () {
  this.name = name
}