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

// Functions

var each = function forEach(ary, action) {
  for( var i = 0; i < ary.length; i++ ) {
    action(ary[i]);
  };
}

var lands = ["The Shire", "Rivendell", "Mordor"];

function makeMiddleEarth(lands) {
  var section = document.createElement("section");
  section.setAttribute("id", "middle-earth");

  each(lands, function(land){
    var h1 = document.createElement("h1");
    var article = document.createElement("article");
    h1.innerHTML = land;
    h1.setAttribute("id", land)
    article.appendChild(h1);
    section.appendChild(article);
  });

  var body = document.querySelector("body");
  body.appendChild(section);
}

function makeHobbits(hobbits) {
  var ul = document.createElement("ul");

  each(hobbits, function(hobbit){
    var li = document.createElement("li");
    li.innerHTML = hobbit;
    li.setAttribute("class", "hobbit");
    ul.appendChild(li);
  });

  var shire = document.querySelector("section#middle-earth article h1");
  shire.appendChild(ul);
}

function glowBabyGlow(thing){
  // do this fun stuff to frodo that makes him glow

  thing.classList.add("ring");
  setTimeout(function(){
     thing.classList.remove("ring");
   }, 900);
}

function keepItSecretKeepItSafe() {
  var div = document.createElement("div");
  div.setAttribute("id", "the-ring");

  var frodo = document.querySelector("li.hobbit");
  frodo.appendChild(div);
  frodo.setAttribute("id", "frodo");
  glowBabyGlow(frodo);
}

function makeBuddies(friends) {
  var aside = document.createElement("aside");
  var ul = document.createElement("ul");

  each(friends, function(buddy){
    var li = document.createElement("li");
    li.innerHTML = buddy;
    li.setAttribute("class", "buddy");
    ul.appendChild(li);
  });

  aside.appendChild(ul);

  var rvndl = document.querySelector("h1#Rivendell");
  var parent = rvndl.parentNode;

  parent.insertBefore(aside, rvndl);
}

function beautifulStranger() {
  var buddies = document.getElementsByClassName("buddy");
  var strider = buddies[3];

  strider.innerHTML = "Aragorn";
}

function forgeTheFellowShip() {
  var hobbits = document.querySelectorAll(".hobbit");
  var buddies = document.querySelectorAll(".buddy");

  var rvndl = document.querySelector("h1#Rivendell");
  var div = document.createElement("div");
  div.setAttribute("id", "the-fellowship");

  rvndl.appendChild(div);

  each(hobbits, function(hobbit){
    div.appendChild(hobbit);
    hobbit = hobbit.innerHTML.split("<")[0]
    alert(hobbit + " has joined your party!");
  });

  each(buddies, function(buddy){
    div.appendChild(buddy);
    alert(buddy.innerHTML + " has joined your party!");
  });
 alert("LET'S GO DESTROY THAT FUCKIN' RING!!!!!!");
}

// upon load
window.onload = function() {
  setTimeout(makeMiddleEarth, 2000, lands);
  setTimeout(makeHobbits, 4000, hobbits);
  setTimeout(keepItSecretKeepItSafe, 6000);
  setTimeout(makeBuddies, 10000, buddies);
  setTimeout(beautifulStranger, 12000);
  setTimeout(forgeTheFellowShip, 14000);
}