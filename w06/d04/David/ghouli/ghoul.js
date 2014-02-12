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
 
function appendLi(newContent, ul) {
  var li = document.createElement("li");
  li.innerHTML = newContent;
  ul.appendChild(li);
}
 
function appendGhouls(ghouls, ul) {
  ul.innerHTML = "";
  WTK.each(ghouls.containmentUnit, function(ghoul){
    appendLi(ghoul, ul);
  });
}
 
window.onload = function() {
  var ul = document.querySelector("ul.containment-unit");
  appendGhouls(ghouls, ul);
  var formWindow = document.querySelector("form.add-ghouls")
  formWindow.addEventListener("submit", function(e){
    e.preventDefault();
    var input = this.elements["ghoulName"];
    var newGhoul = input.value;
    ghouls.push(newGhoul);
    appendGhouls(ghouls, ul);
    input.value = "";
  });
}









