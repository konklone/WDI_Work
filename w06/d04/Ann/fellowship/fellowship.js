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


//MIDDLE EARTH! 

var lands = ["The Shire", "Rivendell", "Mordor"];

function makeMiddleEarth(lands, section) {
    var section = document.createElement("section");
    section.innerHTML = "middle-earth";  
    document.body.appendChild(section); 
    
    WTK.each(window.lands, function(land) {
      var article = document.createElement("article");
      article.innerHTML = "<h1>" + land + "</h1>";
      section = document.querySelector("section");  
      section.appendChild(article); 
  });
}

makeMiddleEarth()

//HOBBITS! 

function makeHobbits(hobbits) { 
  var shire = document.querySelector("article"); 
  var ul = shire.appendChild(document.createElement("ul")); 

   WTK.each(window.hobbits, function(hobbit) {
      var li = document.createElement("li");
      li.innerHTML = hobbit;
      li.className = "hobbit"
      ul = document.querySelector("ul");  
      ul.appendChild(li); 
  });
}

makeHobbits()

//THE RING!!! 

function keepItSecretKeepItSafe() {
  frodo = document.querySelector("li.hobbit"); 
  var ring = document.createElement("div"); 
  ring.setAttribute("id", "the-ring"); 
  frodo.appendChild(ring); 
}

keepItSecretKeepItSafe()

// BUDDIES

function makeBuddies(buddies) {
  aside = document.createElement("aside");
  aside.innerHTML = "<ul>" + buddy + "</ul>";
   

  WTK.each(window.buddies, function(buddy){


  }
  




}

function beautifulStranger() {
}

function forgeTheFellowShip() {
}