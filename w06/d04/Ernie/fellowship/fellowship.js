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
var body = document.querySelector('body');
var middleE = document.createElement('section');
middleE.setAttribute("id", "middle-earth");
body.appendChild(middleE);
for (var i = lands.length - 1; i >= 0; i--) {
  var land = document.createElement("article");
  middleE.appendChild(land);
  var landName = document.createElement('h1');
  land.appendChild(landName).innerHTML = 
  lands[i];
 };
}

function makeHobbits(hobbits) {
  var ul = document.createElement("ul");
  var body = document.querySelector('body');
  body.appendChild(ul);
  for (var i = 0; i < hobbits.length; i++) {
    var li = document.createElement('li');
    li.setAttribute('class','hobbit');
    ul.appendChild(li).innerHTML = 
    hobbits[i]
  };
}

function keepItSecretKeepItSafe() {
  var  div = document.createElement('div');
  div.setAttribute('id','the-ring');
  var ul = document.querySelector('ul');
  var frodo = ul.firstChild;
  frodo.appendChild(div);
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
  keepItSecretKeepItSafe();
}