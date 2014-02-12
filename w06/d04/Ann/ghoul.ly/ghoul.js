function GhoulContainer() {
  this.containmentUnit = [];
}

GhoulContainer.prototype.push = function(ghoulName) {
  // OOOOHHHHHH!
  this.containmentUnit.push(ghoulName);
} 
function appendLi(newContent, ul) {
  var li = document.createElement("li");
  li.innerHTML = newContent;
  ul.appendChild(li);
}

function appendGhouls(localGhouls, ul) {
  ul.innerHTML = "";
  WTK.each(localGhouls.containmentUnit, function(ghoul) {
    appendLi(ghoul, ul);
  });
}

window.ghouls = new GhoulContainer();

ghouls.push("Jeff");
ghouls.push("DrRobotMck");

function ourSweetLoadFunction() {
  console.log("Loaded");
  var ul = document.querySelector("ul.containment-unit");
  var form = document.querySelector("form.add-ghoul"); 
  form.addEventListener("submit", function(e){
    e.preventDefault();

    console.log("Form Submitted");
    var input = this.elements["ghoul-Name"];
    window.ghouls.push(input.value); 
    window.appendGhouls(ghouls, ul); 
  })
  window.appendGhouls(window.ghouls, ul);
}

window.onload = ourSweetLoadFunction;