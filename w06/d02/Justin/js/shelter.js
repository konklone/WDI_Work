function Shelter(name) {
	this.name = name;
	this.animals = [];
}

Shelter.prototype.rescue = function(a) {
	this.animals.push(a);
}

Shelter.prototype.adopt = function(a) {
	this.anamials.splice(this.anaimals.indexOf(a), 1);
}

Shelter.prototype.toString = function() {
	return this.animals.length;
}

Shelter.prototype.hasAnimal = function(a) {
	return this.animals.indexOf(a) != -1;
}

Shelter.prototype.anyAnimals = function() {
	this.animals[0] != undefined;
	// this also works:
	// this.animals.length > 0;
}

function Animal(name, type) {
	this.name = name;
	this.type = type;
}

Animal.prototype.speak = function() {
	return "Hi! I am a " + this.type + " named " + this.name + ".";
}