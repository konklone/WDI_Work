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
   // create a section tag with an id of middle-earth
   var earth = document.createElement("section");
   earth.setAttribute("id", "middle-earth");

   // add each land as an article tag
   WTK.each(lands, function(land){
      var new_land = document.createElement("article");
      // var added_land = document.querySelector("article");

      // inside each article tag include an h1 with the name of the land
      var h1 = document.createElement("h1");
      h1.innerHTML = land;
      
      new_land.appendChild(h1);

      // append article to earth
      earth.appendChild(new_land);

   });

    // append middle-earth to your document body
    var body = document.querySelector("body");
    body.appendChild(earth);
}

function makeHobbits(hobbits) {
   var shire = document.querySelector("article");

   // create an unordered list of hobbits in the shire
   var new_list = document.createElement("ul");

   WTK.each(hobbits, function(hobbit){
      var new_hobbit = document.createElement("li");
      // give each hobbit a class of hobbit
      new_hobbit.setAttribute("class", "hobbit");
      new_hobbit.innerHTML = hobbit;
      
      new_list.appendChild(new_hobbit);
   });
   
   shire.appendChild(new_list);
}

function keepItSecretKeepItSafe() {
   // create a div with an id of 'the-ring'
   var ring = document.createElement("div");
   ring.setAttribute("id", "the-ring");

   // add the ring as a child of Frodo
   var frodo = document.querySelector("ul > li");

   frodo.appendChild(ring);
}

function makeBuddies(buddies) {
   // create an aside tag
   var group = document.createElement("aside");

   // create an unordered list of buddies in the aside
   var friends = document.createElement("ul");

   WTK.each(buddies, function(buddy){
      var new_friend = document.createElement("li");

      new_friend.setAttribute("class", "hobbit");
      new_friend.innerHTML = buddy;
      
      friends.appendChild(new_friend);
   });
   group.appendChild(friends);

   // insert your aside before rivendell
   var rivendell = document.querySelector("article + article");
   rivendell.insertBefore(group, rivendell.firstChild);
}

function beautifulStranger() {
   var rivendell = document.querySelector("article + article");
   var strider = rivendell.querySelector("li + li + li + li");
   // change the buddy 'Strider' textnode to "Aragorn"
   strider.innerHTML = "Aragorn";
}

function forgeTheFellowShip() {
   // move the hobbits and the buddies to Rivendell
   var rivendell = document.querySelector("article + article");

   // create a new div called 'the-fellowship'
   var fellowship = document.createElement("div");
   fellowship.setAttribute("id", "the-fellowship");

   rivendell.appendChild(fellowship);

   // add each hobbit and buddy one at a time to 'the-fellowship'
   var peeps = document.querySelectorAll("li");

   WTK.each(peeps, function(person) {
      fellowship.appendChild(person);

      // after each character is added make an alert that they have joined your party
      alert(person.innerHTML.split("<")[0] + " has joined your party.");
   });
}

window.onload = function() {
   makeMiddleEarth(lands);
   makeHobbits(hobbits);
   keepItSecretKeepItSafe();
   makeBuddies(buddies);
   setTimeout(beautifulStranger, 3000);
   setTimeout(forgeTheFellowShip, 5000);
}