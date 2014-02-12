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
  var section = document.createElement('section');
  section.id = 'middle-earth';
  for(var i = 0; i < lands.length; i++) {
    var article = document.createElement('article');
    var h1 = document.createElement('h1');
    h1.innerHTML = lands[i];
    article.appendChild(h1);
    section.appendChild(article);
  }
  var body = document.querySelector('body')
  body.appendChild(section);
}

makeMiddleEarth(lands); 

function makeHobbits(hobbits) {
  var ul = document.createElement('ul')
  for(var i = 0; i < hobbits.length; i++) {
    var li = document.createElement('li');
    li.className = 'hobbit';
    li.innerHTML = hobbits[i];
    ul.appendChild(li);
  } 
   var article = document.querySelector('section article')
   article.appendChild(ul);
}

makeHobbits(hobbits);

function keepItSecretKeepItSafe() {
  var div = document.createElement('div');
  div.id = 'the-ring';
  var liItems = document.getElementsByClassName('hobbit')
  for(var i = 0; i < liItems.length; i++) {
    if(liItems[i].innerHTML == "Frodo Baggins") {
      var frodo = liItems[i]
      frodo.appendChild(div);
    }
  }
}

keepItSecretKeepItSafe();

function makeBuddies(buddies) {
  var aside = document.createElement('aside');
  var ul = document.createElement('ul');
   for(var i = 0; i < buddies.length; i++) {
    var li = document.createElement('li');
    li.innerHTML = buddies[i];
    ul.appendChild(li);
  } 
   aside.appendChild(ul);
   // append aside before second article
  
}

makeBuddies(buddies);

function beautifulStranger() {
  var liItems = document.getElementsByTagName('li')
  for(var i = 0; i < liItems.length; i++) {
    if(liItems[i].innerHTML == "Strider")
    var strider = liItems[i]; 
    strider.innerHTML = "Aragorn"
  }
}

function forgeTheFellowShip() {
}

window.onload = function() {

}

// document.querySelector('article:nth-child(2) h1')