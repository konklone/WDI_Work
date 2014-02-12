



// function GhoulContainer(name){
//   this.containmentUnit = [];
// }


// GhoulContainer.prototype.push  = function(ghoulName) {
//   this.containmentUnit.push(ghoulName);
// }



// ghoulsOne = new GhoulContainer();
// ghoulsOne.push("Jeff");
// ghoulsOne.push("DrRobotnic");

// function changeName(name) {
//   var li = document.querySelector("ul.containment-unit li");
//   li.innerHTML = name;

// }

// var ul = document.querySelector("ul.containment-unit");

// function appendLi(string){
  
//   var li =document.createElement("li");
//   li.innerHTML = string;
//   ul.appendChild(li);

// }

// function appendGhouls() { 
//   ul.innerHTML = "";
//   WTK.each(ghoulsOne.containment, appendLi);
// }

// window.onload = function() {
//   appendGhouls();

// }


function GhoulContainer() {
  this.containmentUnit = [];
}
 
GhoulContainer.prototype.push = function(ghoulName) {
  // OOOOHHHHHH!
  this.containmentUnit.push(ghoulName);
}
 
var ghouls = new GhoulContainer();
 
ghouls.push("Jeff");
ghouls.push("DrRobotMck");
 
function changeName(name) {
  document.querySelector("ul.containment-unit li").innerHTML = name;
}
 
var ul = document.querySelector("ul.containment-unit");
 
function appendLi(newContent, ul) {
  var li = document.createElement("li");
  li.innerHTML = newContent;
  ul.appendChild(li);
}
 
function appendGhouls(ghouls, ul) {
  ul.innerHTML = "";
  WTK.each(ghouls.containmentUnit, function(ghoul) {
    appendLi(ghoul, ul);
  });
}

function grabForm(){
var form = document.querySelector("form.add-ghouls");
form.addEventListener("submit", function(e){
  e.preventDefault();
  window.ghouls.push(this.elements["ghoulName"].value);
  window.appendGhouls(window.ghouls, ul);
  });
}
 
window.onload = function() {
  var ul = document.querySelector("ul.containment-unit");
  appendGhouls(ghouls, ul);
  grabForm();
}
 

