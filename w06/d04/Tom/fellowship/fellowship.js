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
  var section = document.createElement("section");
  section.setAttribute("id", "middle-earth");
  WTK.each(lands, function(lands) {
    var article = document.createElement("article");
    var h1 = document.createElement("h1");
    h1.innerHTML = lands;
    section.appendChild("article");
  });
  document.querySelect("body");
  body.appendChild("section");
  //makeMiddleEarth(lands);
}



function makeHobbits(hobbits) {
}

function keepItSecretKeepItSafe() {
}

function makeBuddies(buddies) {
}

function beautifulStranger() {
}

function forgeTheFellowShip() {
}


window.onload = function(){
  console.log("Loaded!");
}