window.onload = function(){
  console.log("oooooooh!");
  ghouls.push("Lisa");
  ghouls.push("Bart");
  ghouls.push("Marge");
  appendGhouls();
  var form = window.document.querySelector("form.add-ghoul");

  // Make submit for form do something
  form.addEventListener("submit", function(e){
    // prevent Default of form which would normally refresh page
    e.preventDefault();
    //set var for user input
    var input = this.elements["name"]
    // add user input to allGhouls
    ghouls.push(input.value);
    // make sure all Ghouls are listed on Tombstome
    appendGhouls();
    input.value="";
  });

}

function GhoulContainer(){
  this.containmentUnit = []
}

GhoulContainer.prototype.push = function(userName){
  this.containmentUnit.push(userName);
}

var ul = window.document.querySelector("ul.containment-unit");

function appendLi(name){
  var li = window.document.createElement("li");
  li.innerHTML = name;
  ul.appendChild(li);
}

function appendGhouls(){
  ul.innerHTML = "";
  WTK.each(ghouls.containmentUnit, appendLi);
}

var ghouls = new GhoulContainer();

appendGhouls();
