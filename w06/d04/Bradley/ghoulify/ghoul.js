window.onload = function() {
  console.log("OOHHH");
  appendGhouls(ghouls.containmentUnit);
  var form = document.querySelector("form");
  console.log(form);
  form.addEventListener("submit", function(e) {
    e.preventDefault();
    console.log("form submitted");
    ghouls.push(this.elements['ghoulName'].value)
    this.elements['ghoulName'].value = "";
    appendGhouls();
  });
}

function GhoulContainer() {
  this.containmentUnit = [];
}

GhoulContainer.prototype.push = function(element) {
  this.containmentUnit.push(element);
}

function changeName(name) {
  document.querySelector("ul.containment-unit li").innerHTML = name;
}

var ul = document.querySelector("ul.containment-unit");

function appendLi(str) {
  var li = document.createElement("li");
  li.innerHTML = str;
  ul.appendChild(li);
}

function appendGhouls() {
  ul.innerHTML = "";
  for (var i = 0; i < ghouls.containmentUnit.length; i ++) {
    appendLi(ghouls.containmentUnit[i]);
  }
}

ghouls = new GhoulContainer();

// ghouls.push("Brad");
// ghouls.push("Tea");
// ghouls.push("Julie");

