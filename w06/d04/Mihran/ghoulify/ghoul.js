function GhoulContainer() {
  this.containmentUnit = [];
}
 
GhoulContainer.prototype.push = function(ghoulName) {
  // OOOOHHHHHH!
  this.containmentUnit.push(ghoulName);
}
 
var ghouls = new GhoulContainer();
 
ghouls.push("Jeff");
// ghouls.push("DrRobotMck");
// ghouls.push("Mihran");

 
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
 
function ourSweetLoadFunction() {
  console.log("Loaded");
  var ul = document.querySelector("ul.containment-unit");
  var form = document.querySelector("form.add-ghoul");
  form.addEventListener ("submit", function(e){
    e.preventDefault();
    // console.log("Form Submitted")
    // console.log(this.elements["ghoulName"].value) 
    var input = this.elements["ghoulName"]
    window.ghouls.push ( input.value );
    window.appendGhouls(ghouls, ul)
    input.value = "";
    
    // i think we want to store that shit in a variable and then push it into ghouls // 
    



  });

  

  window.appendGhouls(window.ghouls, ul);
}

window.onload = ourSweetLoadFunction;
 
//appendLi("Jeff");
 
  