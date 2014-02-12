// Dramatis Personae
window.onload = function(){
  console.log("loaded!");
};


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

//********* Finally works ********

var lands = ["The Shire", "Rivendell", "Mordor"];

function makeMiddleEarth(lands) {
  //make the section element in the doc
  var section = document.createElement("section");
  //set the id to middle-eath
  section.setAttribute("id", "middle-earth");
  //begin each loop:
      WTK.each(lands, function(land) {
  //make article element;
        var article = document.createElement("article");
  //make h1 element
        var h1 = document.createElement("h1");
  //add inner html to h1
        h1.innerHTML = land;
  //append h1 to article      
        article.appendChild(h1);
  //append article to section      
        section.appendChild(article);
  //closing loop:
      });
  //query select body    
  var body = document.querySelector("body");
  //append section to body
  body.appendChild(section);
}

function makeHobbits(hobbits) {
//make ul element
  var ul = document.createElement("ul");
//begin loop to create li and class and iterate all hobbits.
  WTK.each(hobbits, function(hobbit){
    var li = document.createElement("li");
    li.setAttribute("class", "hobbit");
//add hobbit to each li (innerHTML)
    li.innerHTML = hobbit;
//append li child to ul parent
    ul.appendChild(li);
//end loop
  });
//query select body
  var body = document.querySelector("body");
//append ul to body
  body.appendChild(ul);
}

function keepItSecretKeepItSafe() {
   // create a div with an id of 'the-ring'
  var ring = document.createElement('div');
  ring.id = "the-ring";
  // add the ring as a child of Frodo
  var frodo = document.getElementsByClassName('hobbit')[0];
  frodo.appendChild(ring);
  // var div = document.createElement("div");//create div
  // div.setAttribute("id", "the-ring");//add id
  // var ul = get.elementById("the-ring");//get the id
  // var li = document.createElement("li");
  // li.appendChild(document.createTextNode("Your list item text"));
  // ul.insertBefore(li, document.getElementById("list_item_id"));
  // ul.appendChild(ul)//add this new ul as child to frodo li.
}

function makeBuddies(buddies) {
}

function beautifulStranger() {
}

function forgeTheFellowShip() {
}