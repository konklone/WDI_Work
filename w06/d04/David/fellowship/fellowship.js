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
  section.id = "middle-earth";
   for( var i = 0; i < lands.length; i++ ){
      var article = document.createElement("article");
      var h1 = document.createElement("h1");
      h1.innerHTML = lands[i];
      article.appendChild(h1);
      section.appendChild(article);
    }
    var body = document.querySelector("body");
    body.appendChild(section);
}

function makeHobbits(hobbits) {
  var ul = document.createElement("ul");
  for( var i = 0; i < hobbits.length; i++ ){
    var li = document.createElement("li");
    li.className = "hobbit";
    li.innerHTML = hobbits[i];
    ul.appendChild(li);
    // target li of frodo and append ID
  }
  shireH1 = document.getElementsByTagName("h1");
  for( var i = 0; i < shireH1.length; i++ ) {
    if ( shireH1[i].innerHTML === "The Shire" ) {
      var parentArticle = shireH1[i].parentNode
      parentArticle.appendChild(ul);
    }
  }
}

function keepItSecretKeepItSafe() {
  var div = document.createElement("div");
  div.id = "the-ring";
  var liElements = document.getElementsByTagName("li");
  for( var i = 0; i < liElements.length; i++ ){
    if ( liElements[i].innerHTML == "Frodo Baggins" ) {
      liElements[i].appendChild(div);
    };
  }
}

function makeBuddies(buddies) {
  var aside = document.createElement("aside");
  var ul = document.createElement("ul");
  for( var i = 0; i < buddies.length; i++ ) {
    var li = document.createElement("li");
    li.innerHTML = buddies[i];
    aside.appendChild(li);
  }
  rivendellH1 = document.getElementsByTagName("h1");
  for( var i = 0; i < rivendellH1.length; i++ ) {
    var landsSection = document.getElementById("middle-earth");
    if ( rivendellH1[i].innerHTML == "Rivendell" ) {
      var parentArticle = rivendellH1[i].parentNode
      //parentElement.insertBefore(newElement, referenceElement);
      landsSection.insertBefore(aside, parentArticle);
    }
  }
}

function beautifulStranger() {
  striderLi = document.getElementsByTagName("li");
  for( var i = 0; i < striderLi.length; i++ ) {
    if ( striderLi[i].innerHTML == "Strider" ) {
      striderLi[i].innerHTML = "Aragorn";
    };
  }
}

function forgeTheFellowShip() {
  var hobbits = document.getElementsByClassName("hobbit");
  var parentOfHobbits = hobbits[0].parentNode;
  var aside = document.querySelector("aside");
  var buddies = aside.children;
  rivendellH1 = document.getElementsByTagName("h1");
  for( var i = 0; i < rivendellH1.length; i++ ) {
    if ( rivendellH1[i].innerHTML == "Rivendell" ) {
      var rivendellArticle = rivendellH1[i].parentNode;
    }
  }
  var div = document.createElement("div");
  div.id = "the-fellowship";
  rivendellArticle.appendChild(div);
  var numberOfHobbits = hobbits.length;
  for( var i = 0; i < numberOfHobbits; i++ ){
    console.log("number of hobbits: " + numberOfHobbits);
    console.log("hobbit HTML: " + hobbits[i].innerHTML);
    console.log("hobbit LI: " + hobbits[i]);
    div.appendChild(hobbits[i]);
    alert( hobbits[i].innerHTML + " has joined the party!!!" );
  }
  var numberOfBuddies = buddies.length;
  for( var i = 0; i < numberOfBuddies; i++ ){
    console.log("number of buddies: " + numberOfBuddies);
    console.log("buddy HTML: " + buddies[i].innerHTML);
    console.log("buddy LI: " + buddies[i]);
    div.appendChild(buddies[i]);
    alert( buddies[i].innerHTML + " has joined the party!!!" );
  }

}

window.onload = function(){

  // Make Middle Earth
  makeMiddleEarth(lands);

  // Make Hobbits
  setTimeout(function(){makeHobbits(hobbits)},1000);

  // Make the ring DIV and add it as a child of Frodo's li element
  setTimeout(keepItSecretKeepItSafe,2000);

  // Make Buddies
  setTimeout(function(){makeBuddies(buddies)},3000);

  // Change Strider to Aragon
  setTimeout(beautifulStranger,4000);

  // Move hobbits and buddies into Rivendell and then the fellowship DIV
  // setTimeout(forgeTheFellowShip,10000);

}