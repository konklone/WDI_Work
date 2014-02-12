window.onload = function(){
  makeMiddleEarth(lands);
  makeHobbits(hobbits);
  keepItSecretKeepItSafe();
  makeBuddies(buddies);
  beautifulStranger();
  forgeTheFellowShip();
}

var body = window.document.querySelector("body");

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
  var section = window.document.createElement("section");
  section.id = "middle-earth";
  for (var i = 0; i < lands.length; i++) {
    var article = window.document.createElement("article");
    var h1 = window.document.createElement("h1");
    article.appendChild(h1);
    h1.innerHTML = (lands[i]);
    section.appendChild(article);
  };

  body.appendChild(section);
}

function makeHobbits(hobbits) {
  var shire = document.getElementById('middle-earth').children[0];
  var ul = window.document.createElement("ul");
  for (var i = 0; i < hobbits.length; i++) {
      var li = window.document.createElement("li");
      ul.appendChild(li);
      li.className = "hobbit";
      li.innerHTML = (hobbits[i]);
  };
  shire.appendChild(ul);
}

function keepItSecretKeepItSafe() {
  var div = window.document.createElement("div");
  div.id = "the-ring"
  window.document.querySelector("li").appendChild(div);
}

function makeBuddies(buddies) {
  var aside = window.document.createElement("aside");
  var ul = window.document.createElement("ul");
  for (var i = 0; i < buddies.length; i++) {
      var li = window.document.createElement("li");
      ul.appendChild(li);
      li.innerHTML = (buddies[i]);
      aside.appendChild(ul);
    };
  var section = document.getElementById('middle-earth');
  var beforeRivendell = section.children[1];
    section.insertBefore(aside, beforeRivendell);
}

function beautifulStranger() {
  allLi = document.getElementsByTagName('li');
  for (var i = 0; i < allLi.length; i++) {
    if(allLi[i].innerHTML === "Strider"){
    allLi[i].innerHTML = "Aragorn";
    };
  };
}

function forgeTheFellowShip() {
  var fellowship = document.querySelectorAll('li');
  var div = window.document.createElement("div");
  var ul = window.document.createElement("ul");
  div.id = "the-fellowship";
  var section = document.getElementById('middle-earth');
  var rivendell = section.children[2];
  div.appendChild(ul);
  rivendell.appendChild(div);
  for (var i = 0; i < fellowship.length; i++) {
  ul.appendChild(fellowship[i]);
  name = fellowship[i].innerHTML.split('<')[0];
  alert(name + " has been added!");
  }
}

