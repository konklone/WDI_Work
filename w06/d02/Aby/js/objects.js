var me = {
	name: "Aby",
	favoriteColor: "Money Green",
	disneyCharacter: "Mufasa",
	hiya: sayHello,
	disney: WhatsMyCharacter
	}

function sayHello() {
		return "Hello, I'm " + this.name;
}

function WhatsMyCharacter() {
	return "I am similar to " + this.disneyCharacter;
}

for (var key in me) {
	console.log(key, me[key])
}

function forEachObj(obj, action) {
	// have access to both key and value for each key/value pair in the object
	for (var key in obj ) {
		action(key, obj[key]);
	}
}

function keys(obj) {
	var keys = [];

	for (var key in obj) {
		keys.push(key)
	}
	return keys;
}

function Monkey(name) { 
	this.name = name;
	this.onTree = false; 
}

Monkey.prototype.speak = function() {
	return "Hello, I am " + this.name;
}

Monkey.prototype.climb = function() {
	return this.onTree = true;
}




