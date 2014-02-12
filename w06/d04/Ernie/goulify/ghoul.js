function GhoulContainer() {
  this.containmentUnit = [];
}
 
GhoulContainer.prototype.push = function(ghoulName) {
  // OOOOHHHHHH!
  this.containmentUnit.push(ghoulName);
}
 
var ghouls = new GhoulContainer();

function appendLi(newContent,ul) {
  var li = document.createElement("li");
  li.innerHTML = newContent;
  ul.appendChild(li);
}
 
function appendGhouls(ghouls,ul) {
  ul.innerHTML = "";
  WTK.each(ghouls.containmentUnit, function (ghoul) {
    appendLi(ghoul,ul);
  });
}
 
window.onload = function() {
  var ul = document.querySelector("ul.containment-unit");
  var form = document.querySelector('form.add-ghouls');
  form.addEventListener('submit',function (e) {
    e.preventDefault();
    var input = (this.elements['ghoulName']);
    addContent = input.value;
    appendLi(addContent,ul);
    input.value = "";
  });
  appendGhouls(ghouls,ul);
}
 
 
//appendLi("Jeff");
 
 
//ghouls.containmentUnit
 
// ["Jeff"]
// Write a function which
// given a string -> li -> attaches to the 
// ul.containment-unit