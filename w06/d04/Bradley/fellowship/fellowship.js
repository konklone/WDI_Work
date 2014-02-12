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

var body = document.querySelector("body");

function makeMiddleEarth(lands) {
  var middleEarth = document.createElement("section");
  middleEarth.setAttribute('id', 'middle-earth');

  for (var i = 0; i < lands.length; i++) {
    var land = document.createElement("article");
    var h1 = document.createElement("h1");
    h1.innerHTML = lands[i];
    land.appendChild(h1);
    middleEarth.appendChild(land);
  }

  body.appendChild(middleEarth);
}

makeMiddleEarth(lands);

function makeHobbits(hobbits) {
  var ul = document.createElement("ul");
  ul.setAttribute('class', 'hobbits')
  for (var i = 0; i < hobbits.length; i++) {
    var li = document.createElement("li");
    li.setAttribute('class', 'hobbit');
    li.innerHTML = hobbits[i];
    ul.appendChild(li);
  }
  body.appendChild(ul);
}

makeHobbits(hobbits);

function keepItSecretKeepItSafe() {
  var div = document.createElement("div");
  div.setAttribute('id', 'the-ring');
  var frodo = document.querySelector('.hobbit');
  frodo.appendChild(div);
}

keepItSecretKeepItSafe();

function makeBuddies(buddies) {
  var aside = document.createElement('aside');
  var ul = document.createElement('ul');
  for (var i = 0; i < buddies.length; i++) {
    var li = document.createElement('li');
    li.innerHTML = buddies[i];
    ul.appendChild(li);
  }
  aside.appendChild(ul);
  var rivendell = document.getElementsByTagName('article')[1];
  var section = document.querySelector("#middle-earth");
  
  section.insertBefore(aside, rivendell);
}

makeBuddies(buddies);

function beautifulStranger() {
  var strider = document.getElementsByTagName("li")[3];
  strider.innerHTML = "Aragorn";
}

beautifulStranger();

function forgeTheFellowShip() {

  var fellowship = document.querySelectorAll('li');

  var div = document.createElement('div');
  div.setAttribute('class', 'the-fellowship');

  var rivendell = document.getElementsByTagName('article')[1];
  var ul = document.createElement('ul');
  div.appendChild(ul);
  rivendell.appendChild(div);

  for (var i = 0; i < fellowship.length; i++) {
    content = fellowship[i].innerHTML.split('<')[0];
    alert(content + " has joined the fellowship!");
    ul.appendChild(fellowship[i]);
  }
}

forgeTheFellowShip();