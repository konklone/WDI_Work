// Dramatis Personae

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
	// create a section tag with an id of middle-earth
	var sec = document.createElement("section");
	sec.id = "middle-earth"
	WTK.each(lands, function(e) {
		var art = document.createElement("article");
		art.id = e;
		var hd = document.createElement("h1");
		hd.innerHTML = e
		art.appendChild(hd);
		console.log(art);
		sec.appendChild(art);
	})
	document.body.appendChild(sec);
    // add each land as an article tag
    // inside each article tag include an h1 with the name of the land
    // append middle-earth to your document body
}

function makeHobbits(hobbits) {
	// display an unordered list of hobbits in the shire
	// give each hobbit a class of hobbit
	var ul = document.createElement("ul");
	WTK.each(hobbits, function(e) {
		var li = document.createElement("li");
		li.innerHTML = e;
		li.class = "hobbit";
		ul.appendChild(li);
	})
	var sec = document.querySelector("article");
	console.log(sec);
	sec.appendChild(ul);
}

function keepItSecretKeepItSafe() {
	// create a div with an id of 'the-ring'
	// add the ring as a child of Frodo
	var div = document.createElement("div");
	div.id = "the-ring";
	div.innerHTML = "yo";
	var frodo = document.querySelector("li");
	frodo.appendChild(div);

}

function makeBuddies(buddies) {
	// create an aside tag
	// display an unordered list of buddies in the aside
	// insert your aside before rivendell
	var aside = document.createElement("aside");
	var ul = document.createElement("ul");
	WTK.each(buddies, function(e) {
		var li = document.createElement("li");
		li.innerHTML = e;
		li.class = "buddy";
		ul.appendChild(li);
	})
	aside.appendChild(ul);
	var sec = document.getElementById("middle-earth");
	var rivendell = sec.children[1];
	sec.insertBefore(aside, rivendell);
	

}

function beautifulStranger() {
	// change the buddy 'Strider' textnode to "Aragorn"
	var aside = document.querySelector("aside");
	var strider = aside.querySelector("li+li+li+li");
	strider.innerHTML = "Aragorn";
}

function moveUl() {
	var firstUl = document.querySelector("ul");
	document.querySelector("#Rivendell").appendChild(firstUl);
}

function forgeTheFellowShip() {
	// move the hobbits and the buddies to Rivendell
	// create a new div called 'the-fellowship'
	// add each hobbit and buddy one at a time to 'the-fellowship'
	// after each character is added make an alert that they have joined your party

	// var copy = document.querySelector("ul");
	// document.querySelector("ul").remove();
	// document.querySelector("#Rivendell").appendChild(copy);
	moveUl();

	// var copy = document.querySelector("ul");
	// document.querySelector("ul").remove();
	// document.querySelector("#Rivendell").appendChild(copy);
	moveUl();

	var div = document.createElement("div");
	div.id = "the-fellowship";
	div.innerHTML = "<h4>The Fellowship</h4>";

	var ul = document.createElement("ul");
	div.appendChild(ul);

	var rivendell = document.querySelector("#Rivendell");
	rivendell.appendChild(div);

	var people = document.querySelectorAll("li");
	var fellow = document.querySelector("#the-fellowship");
	WTK.each(people, function(e) {
		fellow.appendChild(e);
		var name = e;
		alert(name.innerHTML.split("<")[0] + " has joined the fellowship.");
	})


}

