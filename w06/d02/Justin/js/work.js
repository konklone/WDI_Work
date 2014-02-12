window.onload = function() {
	console.log("LOADED!");
}

var dwarrow = ["Doc", "Grumpy", "Happy", "Sneezy", "Dopey", "Sleepy", "Bashful"];

// say "Hi ho!  My name is ___"

// function announceDwarrow() {
// 	for (var i = 0; i <= dwarrow.length - 1; i++) {
// 		console.log("Hi ho! My name is " + dwarrow[i] + ".");
// 	}
// 	return "Back to work you brutes!";
// }

var numbers = [1,2,3,4];

var colors = ["red", "blue", "green", "orange"];

function map(arr, action){
	var newArray = [];

	forEach(arr, function(item){
		newArray.push( action(item))
	})
		return newArray;
}


function forEach(arr, action) {
	for (var i = 0; i < arr.length; i++) {
		action(arr[i]);
	}

}

function inc(number) {
	return number + 1;
}

function dec(number) {
	return number - 1;
}

function upper(something) {
	return something.toUpperCase();
}

map(colors, function(color){
	if (color === "green") {
		return color + " is AWESOME!";
	} else {
		return color + " is not so great.";
	}
});