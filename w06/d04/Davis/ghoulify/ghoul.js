
function GhoulContainer() {
  this.containmentUnit = []; 
}

GhoulContainer.prototype.push = function(element) {
  this.containmentUnit.push(element);
}


function changeName(name) {
  document.querySelector("ul.containment-unit > li").innerHTML = name;
}

var ghouls = new GhoulContainer;
ghouls.push("Jeff");
ghouls.push("Bob");

function appendLi(string, ul) {
  var li = document.createElement("li");
  li.innerHTML = string;
  ul.appendChild(li);
}

function appendGhouls(ghouls, ul) {
  ul.innerHTML = "";

  // WTK.each(ghouls.containmentUnit, appendLi);
  for (var i = 0; i < ghouls.containmentUnit.length; i++) {
    appendLi( ghouls.containmentUnit[i], ul );
  }
}

window.onload = function() {
  var ul = document.querySelector("ul.containment-unit");
  var form = document.querySelector("form.add-ghouls");

  // convention to call passed in param as e
  form.addEventListener('submit', function(e) {
    // PREVENTS HTTP post request & refresh of page
    e.preventDefault();

    var userInput = this.elements["ghoulName"];

    ghouls.push( userInput.value );
    appendGhouls(ghouls, ul);
    userInput.value = "";
  });

  window.appendGhouls(window.ghouls, ul);
}
