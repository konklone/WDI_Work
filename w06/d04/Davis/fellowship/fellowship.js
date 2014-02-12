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

  for(var i = 0; i < lands.length; i++) {
    var article = document.createElement("article");

    var h1 = document.createElement("hi");
    h1.innerHTML = lands[i];
    article.appendChild( h1 );

    section.appendChild( article );
  }

  document.body.appendChild( section );
}

function makeHobbits(hobbits) {
  var ul = document.createElement("ul");

  for(var i = 0; i < hobbits.length; i++) {
    var li = document.createElement("li");
    li.innerHTML = hobbits[i];
    li.setAttribute("class", "hobbit");

    ul.appendChild( li );
  }

 document.body.appendChild( ul ); 
}

function keepItSecretKeepItSafe() {
  var ring = document.createElement("div");
  ring.setAttribute("id", "the-ring");

  var frodo = document.getElementsByClassName("hobbit")[0];
  frodo.appendChild( ring );
}

function makeBuddies(buddies) {
  var aside = document.createElement("aside");
  var ul = document.createElement("ul");

  for(var i = 0; i < buddies.length; i++) {
    var li = document.createElement("li");
    li.innerHTML = buddies[i];

    ul.appendChild( li );
  }

  aside.appendChild( ul );

  var shire = document.getElementById("middle-earth").children[0];
  shire.appendChild( aside );
}

function beautifulStranger() {
  var aragorn = document.querySelector("aside ul").children[3];
  aragorn.innerHTML = "Aragorn";
}

function forgeTheFellowShip() {
  var hobbits = document.getElementsByClassName("hobbit")[0].parentElement;
  var buddies = document.querySelector( "aside ul" );
  var rivendell = document.getElementById("middle-earth").children[1];

  rivendell.appendChild( hobbits );
  rivendell.appendChild( buddies );

  var fellowship = document.createElement("div");
  fellowship.setAttribute("id", "the-fellowship");

  // alert("ello");
  for(var i = 0; i < hobbits.length; i++) {
    fellowship.appendChild( hobbits[i] );
    console.log( hobbits[i] + " has joined the fellowship!" );
  }

  for(var i = 0; i < buddies.length; i++) {
    fellowship.appendChild( buddies[i] );
    alert( buddies[i] + " has joined the fellowship!" );
  }
}

window.onload = function() {
  makeMiddleEarth(lands);
  makeHobbits(hobbits);
  keepItSecretKeepItSafe();
  makeBuddies(buddies);
  beautifulStranger();
  forgeTheFellowShip();
}

