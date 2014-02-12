// refactoring: I can include variables in window.onload to dry out my code, yes?
// for some reason the aside wouldn't place before rivindell
// didn't get to adding buddies and hobbits to the fellowship. 

window.onload = console.log( "Loaded!" );
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

var fellowship = [];


function makeMiddleEarth(lands, section) {
  var body = document.querySelector("body");
  var section = document.createElement("section");
  body.appendChild(section);
  section.id = "Middle Earth";
  WTK.each(lands, function(lands) {
    var section = document.querySelector("section");
    var article = document.createElement("article");
    article.setAttribute("id", lands)
    section.appendChild(article);
    var h1 = document.createElement("h1")
    h1.innerHTML = lands
    article.appendChild(h1);
    
  });
}

function makeHobbits(hobbits) {
    var body = document.querySelector("body");
    var section = document.querySelector("section");
    var shire = document.getElementById("The Shire");
    var ul = document.createElement("ul");
    ul.setAttribute("class", "hobbits");
    shire.appendChild(ul);
    WTK.each(hobbits, function(hobbits) {
    var body = document.querySelector("body");
    var section = document.querySelector("section");
    var shire = document.getElementById("The Shire");  
    var ul = document.querySelector("ul.hobbits"); 
    var li = document.createElement("li");
    li.setAttribute("class", "hobbit");
    li.innerHTML = hobbits;
    ul.appendChild(li);
      
    });
}


function keepItSecretKeepItSafe() {
    var body = document.querySelector("body");
    var section = document.querySelector("section");
    var shire = document.getElementById("The Shire");
    var ul = document.querySelector("ul.hobbits"); 
    var frodo = document.querySelector("li")
    var ringDiv = document.createElement("div")
    ringDiv.setAttribute("id", "the-ring");
    frodo.appendChild(ringDiv)

}

function makeBuddies(buddies) {

    // create aside 
    var section = document.querySelector("section");
    var rivindell = document.querySelector("section").childNodes[1];
    var aside = document.createElement("aside");
    section.insertBefore(aside, rivindell);
    section.appendChild(aside);

    // create unordered list
    var aside = document.querySelector("aside"); 
    var ul = document.createElement("ul");
    ul.setAttribute("class", "buddies");
    aside.appendChild(ul);

    // add buddies to aside
    WTK.each(buddies, function(buddies) {
    var body = document.querySelector("body");
    var section = document.querySelector("section");
    var aside = document.querySelector("aside"); 
    var ul = document.querySelector("ul.buddies"); 
    var li = document.createElement("li");
    li.setAttribute("class", "buddies");
    li.innerHTML = buddies;
    ul.appendChild(li);

 });
}

function beautifulStranger() {
    var body = document.querySelector("body");
    var section = document.querySelector("section");
    var aside = document.querySelector("aside"); 
    var ul = document.querySelector("ul.buddies"); 
    var li = document.querySelector("ul").childNodes[3];
    var st = li.innerHTML;
    var st = "Aragorn"
    li.innerHTML = "Aragorn"
}

function forgeTheFellowShip() {

    // move hobbits and buddies to rivindell
    var body = document.querySelector("body");
    var section = document.querySelector("section");
    var aside = document.querySelector("aside"); 
    var ulBuddies = document.querySelector("ul.buddies"); 
    var shire = document.getElementById("The Shire");
    var ulHobbits = document.querySelector("ul.hobbits"); 
    var rivindell = document.querySelector("section").childNodes[1];
    rivindell.appendChild(ulBuddies);
    rivindell.appendChild(ulHobbits);

    // create the-fellowship div
    var section = document.querySelector("section");
    var mordor = document.querySelector("section").childNodes[2];
    var div = document.createElement("div");
    div.setAttribute("class", "the-fellowship");
    section.insertBefore(div, mordor);
    section.appendChild(div);
    var h1 = document.createElement("h1")
    h1.innerHTML = "The Fellowship"
    div.appendChild(h1);

    // create unordered list for the fellowship
    var ulFellowship = document.createElement("ul");
    ulFellowship.setAttribute("class", "the-fellowship");
    div.appendChild(ulFellowship);

//     function Fellowship(name) {
//       this.name = name;
//       this.members = [];
//     }

//     function Member(name) {
//       this.name = name;
//     }

//     Fellowship.prototype.join = function(member) {
//     this.members.push(member);
// } 

//     Fellowship.prototype.travel = function(members) {
//     this.members.splice(this.members.indexOf(members), 1);
// }

    // add each buddy to the fellowship


    // conditional for adding to fellowship, subtracing from buddies and hobbits



    // alert for the forged fellowship
      // .addEventListener('alert', function(joined) {
      //   code code code;
      // });

}




