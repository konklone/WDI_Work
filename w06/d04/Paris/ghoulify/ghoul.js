function GhoulContainer() {
  this.containmentUnit = [];
}
 
GhoulContainer.prototype.push = function(ghoulName) {
  this.containmentUnit.push(ghoulName);
}
 
var ghouls = new GhoulContainer();
 
ghouls.push("Jeff");
ghouls.push("DrRobotMck");
 

 // adds another ghoul to the list as a li!
function appendLi(newContent, ul) {
  var li = document.createElement("li");
  li.innerHTML = newContent;
  ul.appendChild(li);
}
 
 // updates the list of lis with an each loop while deleting the previous list!
function appendGhouls(ghoals, ul) {
  ul.innerHTML = "";
  WTK.each(ghouls.containmentUnit, function(ghoul) {
    appendLi(ghoul, ul);
  });
}
 
 // adds the list of ghouls when we load the document!
function ourSweetLoadedFunction() {
  var ul = document.querySelector("ul.containment-unit");
  appendGhouls(ghouls, ul);
  var form = document.querySelector("form.addGhouls");

  // the event listener will fire and thereby let you know that the input was received. 
  // the page refreshed as part of form behavior. We want to override this default http post request with 'PreventDefault.
  form.addEventListener("submit", function(e) {
    e.preventDefault(); 
    // console.log("Form Submitted");
    // the value of 'this' is form, which you'll see in the console.
    // console.log(this.elements["ghoulName"].value);
    var input = this.elements["ghoulName"];
    window.ghouls.push(input.value);
    appendGhouls(ghouls, ul);
  }) 
}

  window.onload = ourSweetLoadedFunction
 
 // window.onload will load the entire document before reading the functions. 

//appendLi("Jeff");
 
 
//ghouls.containmentUnit
 
// ["Jeff"]
// Write a function which
// given a string -> li -> attaches to the 
// ul.containment-unit