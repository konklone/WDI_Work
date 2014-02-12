var me = {
	name: "Justin",
	age: "33",
	favoriteColor: "green",
	disneyCharacter: "Merlin",
	hiya: sayHello,
	disney: whatsMyCharacter
};

function sayHello() {
	return "Hello, I'm " + this.name;
}

function whatsMyCharacter() {
	return "I am similar to " + this.disneyCharacter;
}

for (var key in me) {
	console.log(key, me[key])
}

function forEachObj(obj, action) {
	for (var key in obj) {
		action(key, obj[key]);
	}
}

function keys(obj) {
	key_array = []
	for (var key in obj) {
		key_array.push(key);
	}
}

var shmoopy = {
	name: "Shmoopy",
	onTree: false,
	speak: function() {
		return "Hello, I am " + this.name;
	},
	climb: function() {
		this.onTree = true;
	}
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

