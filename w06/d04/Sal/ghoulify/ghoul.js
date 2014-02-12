function GhoulContainer() {
  this.containmentUnit = [];
}

GhoulContainer.prototype.push = function(ghoulName) {
  this.containmentUnit.push(ghoulName);
}

var ghouls = new GhoulContainer();

ghouls.push("Jeff");
ghouls.push("Sal");
ghouls.push("Dr. Robotnick");

function changeName(name) {
  document.querySelector("ul.containment-unit li").innerHTML = name; 
}

function appendLi(text, ul) {
  var li = document.createElement("li");
  li.innerHTML = text;
  ul.appendChild(li)
}

function appendGhouls(ghouls, ul) {
  ul.innerHTML = "";
  WTK.each(ghouls.containmentUnit, function(ghoul) {
    appendLi(ghoul, ul)
  });
}

window.onload = function() {
  var ul = document.querySelector("ul.containment-unit");
  var form = document.querySelector("form.add-ghouls");

  form.addEventListener("submit", function(e) {
    e.preventDefault(); 
    var input = this.elements["ghoulName"];
    ghouls.push(input.value)
    appendGhouls(ghouls, ul);
  });
  appendGhouls(ghouls, ul);
}

