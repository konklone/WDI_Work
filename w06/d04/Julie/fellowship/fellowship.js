 {// Dramatis Personae

// create a section tag with an id of middle-earth
  // add each land as an article tag
  // inside each article tag include an h1 with the name of the land
      // append middle-earth to your document body


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
   //Creates a section with id="middle earth" nested in the body
    var body = document.querySelector("body");
    var middleE = document.createElement("section");
    middleE.setAttribute("id", "middle-earth");
    body.appendChild(middleE);


    //loop creates an article and an h1 element for each land
    for(i=0; i<lands.length; i++){
    var land = document.createElement("article");
    middleE.appendChild(land);
    var landName = document.createElement("h1");
    land.appendChild(landName).innerHTML = lands[i];
   }
}



//Lets MAKE SOME HOBBITS
function makeHobbits(hobbits) {


  var ul = document.createElement("ul");
  ul.setAttribute("id", "hobbit-list");
  var body = document.querySelector("body");
  body.appendChild(ul);

  for(i=0; i<hobbits.length; i++){
    var li = document.createElement("li");
    li.setAttribute("class", "hobbit");
    ul.appendChild(li).innerHTML = hobbits[i];
  }
   // display an unordered list of hobbits in the shire
  // give each hobbit a class of hobbit
}

function keepItSecretKeepItSafe() {
  var div = document.createElement("div");
  div.setAttribute("id", "the-ring");

  var ul = document.querySelector("ul");
  var frodo = ul.firstChild;

  frodo.appendChild(div);
}


function makeBuddies(buddies) {
  var aside = document.createElement('aside');
  var ul = document.createElement("ul");

//give every buddy a li and nest them in a UL
  for (var i = buddies.length - 1; i >= 0; i--) {
    var li = document.createElement("li");
    ul.appendChild(li).innerHTML = buddies[i];
  };

//make aside a child of the UL
aside.appendChild(ul);
var section= document.querySelector("section");

//isolate "the shire element"
var rivendel = section.childNodes[0];

//give rivendell a sibling! 
rivendel.parentNode.insertBefore(aside, rivendel.nextSibling);
}

function beautifulStranger() {
  // change the buddy 'Strider' textnode to "Aragorn"
  var ul = document.querySelector("aside ul");
  //Make an array of li children
  var li = ul.childNodes;
  var aragorn = li[1].innerHTML = "Aragorn";
}

function forgeTheFellowShip() {
  //retieve array of buddy and hobbit element objects
  var buddies = document.querySelector("body ul").childNodes;

 //I had to cheat like a cheating cheater and set the ul an id
  var hobbits = document.querySelector("ul#hobbit-list").childNodes;


 //isolate rivendell
  var section= document.querySelector("section#middle-earth ");
  var rivendell = section.childNodes[2];

//make the div inside rivendell
  var div = document.createElement("div");
  div.setAttribute("id", "the-fellowship");
  rivendell.appendChild(div);

//append only the text attribute of the objects to the div
  for (var i = hobbits.length - 1; i >= 0; i--) {
    var p = document.createElement("p");
    div.appendChild(p).innerHTML = hobbits[i].innerText;
    alert(hobbits[i].innerText + " Has joined the fellowship");
  };

  for (var i = buddies.length - 1; i >= 0; i--) {
    var li = document.createElement("li");
    div.appendChild(li).innerHTML = buddies[i].innerText;
    alert(buddies[i].innerText + " Has joined the fellowship");
  };

}


window.onload = function() {
  makeMiddleEarth(lands);
  makeHobbits(hobbits);
  keepItSecretKeepItSafe();
  makeBuddies(buddies);
  beautifulStranger();
  forgeTheFellowShip();
}
 
