// define GhoulContainer class
function GhoulContainer(){
  this.containmentUnit = [];
};

GhoulContainer.prototype.push = function(ghoulName){
  this.containmentUnit.push(ghoulName);
};

// instantiate GhoulContainer class
var ghouls = new GhoulContainer();

// add ghouls to containment unit
ghouls.push("Jeff");
ghouls.push("Britt");
ghouls.push("Remy");

// helper functions
var each = forEach

function forEach( ary, action ) {
  for( var i = 0; i < ary.length; i++ ) {
    action(ary[i]);
  };
};

function appendLi(string, ul){
  var li = document.createElement("li");
  li.innerHTML = string;
  ul.appendChild(li);
};

function appendGhouls(ghouls, ul) {
  ul.innerHTML = "";
  each(ghouls.containmentUnit, function(ghoul){
    appendLi(ghoul, ul);
  });
};

function loadFunction(){
  console.log("loaded!");

  var ul = document.querySelector("ul.containment-unit");
  var form = document.querySelector("form.new-ghoul");

  form.addEventListener("submit", function(e){
    e.preventDefault();
    var input = this.elements["ghoul"];
    var newGhoul = input.value;
    window.ghouls.push(newGhoul);
    window.appendGhouls(window.ghouls, ul);
    input.value = "";
  });

  window.appendGhouls(window.ghouls, ul);
};

// action upon window load
window.onload = loadFunction;