//

function Shelter (name){
  this.name = name;
  this.animals = [];
}

//prototype toString
Shelter.prototype.toString = function() {
  return this.name + " " + this.animals.length;
}

Shelter.prototype.adopt = function(animal) {
  this.animals.splice(this.animals.indexOf(animal), 1);
}

Shelter.prototype.leave = function(animal) {
  this.animals.push(animal);
}

function contains(arr, obj) {
  forEach(arr, function(item) {
    if (item === obj) {
      return true;
    }
  });
  return false;
}

Shelter.prototype.hasAnimal = function(animal) {
  return this.animals.indexOf(animal) != -1;
}


function Animal(name, type) {
  this.name = name;
  this.type = type;
}

Animal.prototype.speak = function(){
  return this.type + " " + this.name;
}

// //prototype hasAnimal(animal)
// Shelter.prototype.hasAnimal = function(animal) {
//     //find animal in this.animals and return true else
//     return false;
// }

// function Animal(name, type) {
//   this.name = name;
//   this.type = type;
// }

// Animal.prototype.speak = function() {
//   console.log("hi!  i am a " + this.type + " and my name is " + this.name)
// }

