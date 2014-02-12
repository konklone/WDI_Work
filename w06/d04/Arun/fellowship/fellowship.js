

var hobbits = [
  "Frodo Baggins",
  "Samwise 'Sam' Gamgee",
  "Meriadoc \"Merry\" Brandybuck",
  "Peregrin 'Pippin' Took"
];

var buddies = [
  "Gandalf the Grey",
  "Legolas",
  "Gimli",
  "Strider",
  "Boromir"
];

var lands = ["The Shire", "Rivendell", "Mordor"];

function makeMiddleEarth(lands) {
	var section = document.createElement("section")
	section.id = "middle-earth"
	WTK.each(lands, function(land) {
		var article = document.createElement("article");
		section.appendChild(article);
		var h1 = document.createElement("h1");
		h1.innerHTML = land
		article.appendChild(h1);
		});
	var body = document.querySelector("body")
	body.appendChild(section);
	
}

function makeHobbits(hobbits) {
	var list = document.createElement("ul")
	WTK.each(hobbits, function(hobbit){
		var li = document.createElement("li")
		li.class = "hobbit"
		li.innerHTML = hobbit;
		list.appendChild(li);
	});
	var body = document.querySelector("body");
	body.appendChild(list);
}

function keepItSecretKeepItSafe() {
	var div = document.createElement("div");
	div.id = "the-ring";



}

function makeBuddies(buddies) {
}

function beautifulStranger() {
}

function forgeTheFellowShip() {
}

window.onload = function () {
	makeMiddleEarth(lands);
	makeHobbits(hobbits);
}

