window.onload = function(){
  addGhouls();
  var add = document.querySelector("form.ghoul");
  add.addEventListener("submit", function(e){
    e.preventDefault();
    var ghoul = document.getElementById("ghoul").value;
    ghouls.push(ghoul);
    addGhouls();
    ghoul = "";
  });


}
  function GhoulContainer(){
    this.containmentUnit = [];
  }  
  var ghouls = new GhoulContainer();
  var ul = document.querySelector("ul.containment-unit");
  GhoulContainer.prototype.push = function(element) {
    this.containmentUnit.push(element);
  };

  // function changeName(name){
  //   document.querySelector("ul.containment-unit li").innerHTML = name;
  // }

  function appendLi(name){
    // var ul = document.querySelector("ul.containment-unit");
    var li = document.createElement("li");
    li.innerHTML = name;
    ul.appendChild(li);
  }

  ghouls.push("McKayKay");
  ghouls.push("McGHOUL");

function addGhouls(){
  ul.innerHTML= "";
  for(var i = 0; i < ghouls.containmentUnit.length; i++){
    appendLi(ghouls.containmentUnit[i]);
  }
}



// var sub = document.querySelector("button.submit-ghoul");
// sub.onclick
// var ghoul = document.querySelector("input.ghoul");
// console.log(add);