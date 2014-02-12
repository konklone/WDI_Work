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
  section.innerHTML = "<h1> Middle Earth! </h1>";
  document.body.appendChild(section);

  // then create article for each land //

  WTK.each(window.lands, function(land){
    var article = document.createElement("article")
    article.innerHTML = "<h1>" + land + "</h1>"; 
    section = document.querySelector("section");
    section.appendChild(article);
  }
    );
}

makeMiddleEarth();

function makeHobbits(hobbits) {
  
  shire = document.querySelector("article")
  shire.appendChild(document.createElement("ul"))
  ul = document.querySelector("ul")

  WTK.each(window.hobbits, function(hobbit){
    var li = document.createElement("li" );
    li.className = "hobbit"
    li.innerHTML = hobbit;
    shire = document.querySelector("article");
    shire.appendChild(li);
  });   

}

makeHobbits();

function keepItSecretKeepItSafe() {
  frodo = document.querySelector("li.hobbit");
  var ring = document.createElement("div");
  ring.setAttribute("id", "the-ring"); 
  frodo.appendChild(ring);
}

// keepItSecretKeepItSafe();

// function makeBuddies(buddies) {
//   aside = document.createElement("aside");
//   aside.innerHTML = "<ul> </ul>" ;
//   document.body.insertBefore(aside, //oldNode//)

//   WTK.each (buddies, function(buddy){
//     li = document.createElement("li");
//     li.innerHTML = buddy;
//     aside = document.querySelector(""); //where is it?//
//     aside.append(li);
//   })
// }

// makeBuddies();

// function beautifulStranger() {
// }

// function forgeTheFellowShip() {
// }