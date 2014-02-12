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

var bodify = document.querySelector('body');


function makeMiddleEarth(lands) {
var m = document.createElement("section");
m.id = "middle-earth";
  
  for(var i = 0; i< lands.length; i++){
    var l = document.createElement("article");
    var land = document.createElement("h1");
    land.innerHTML = lands[i];
    l.appendChild(land);
    m.appendChild(l);
  }

  
  bodify.appendChild(m);
}

makeMiddleEarth(lands);

function makeHobbits(hobbits) {
  var ul = document.createElement("ul");
  for(var i = 0; i < hobbits.length; i++){
    var li = document.createElement("li");
    li.className = "hobbit";
    li.innerHTML = hobbits[i];
    ul.appendChild(li);
  }
  bodify.appendChild(ul);
}
makeHobbits(hobbits);

function keepItSecretKeepItSafe() {
  var div = document.createElement("div");
  div.id = "the-ring";
  var frodo = document.querySelector("li");
  frodo.appendChild(div);

}
keepItSecretKeepItSafe();

function makeBuddies(buddies) {
  var aside = document.createElement("aside");
  var buda = document.createElement("ul");
  for(var i = 0; i < buddies.length; i++){
    var buddy_li = document.createElement("li");
    buddy_li.className = "bud"
    buddy_li.innerHTML = buddies[i];
    buda.appendChild(buddy_li);
  }
  aside.appendChild(buda);
  var arts = document.getElementsByTagName("article")[1];
  var sect = document.querySelector("#middle-earth");
  sect.insertBefore(aside,arts);
}
makeBuddies(buddies);

function beautifulStranger() {
  var strider = document.getElementsByTagName("li")[3];
  strider.innerHTML = "Aragorn";
}
beautifulStranger();

function forgeTheFellowShip() {
  var riv = document.getElementsByTagName("article")[1];
  var hobs = document.getElementsByClassName("hobbit");
  var buds = document.getElementsByClassName("bud");
  var sect = document.querySelector("#middle-earth");
  var arts = document.getElementsByTagName("article")[1];

  for(var i = 0; i < buds.length; i++){
    riv.appendChild(buds[i]);
    window.alert(buds[i].innerHTML + " has joined your party");
    if (i < hobs.length){
        riv.appendChild(hobs[i]);
        window.alert(hobs[i].innerHTML + " has joined your party");
      }
      console.log[i];
    

  }

  var the_fellowship = document.createElement("div");
  the_fellowship.appendChild(riv);
  
  bodify.appendChild(the_fellowship);
  // for(var k = 0; k < riv.length; k++){
  //   the_fellowship.appendChild(riv[k]);
  //   // alert.(riv[k] + " has joined your party.");
  // }
  // // sect.insertBefore(the_fellowship,arts);

}
forgeTheFellowShip();