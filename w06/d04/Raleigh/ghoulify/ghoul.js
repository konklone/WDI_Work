function GhoulContainer() {
   this.containmentUnit = []
}

GhoulContainer.prototype.push = function(ghoul) {
   this.containmentUnit.push(ghoul);
};

ghouls = new GhoulContainer();
ghouls.push("Dr. RobotMck");
ghouls.push("Dr. Jekyll");
ghouls.push("Mr. Hyde");

function changeName(name) {
   document.querySelector("ul.containment_unit li").innerHTML = name;
}

function appendLi(newLi, ul) {
   var li = document.createElement("li");
   li.innerHTML = newLi;
   ul.appendChild(li);
}

function appendGhouls(localGhouls, ul) {
   ul.innerHTML = "";
   WTK.each(localGhouls.containmentUnit, function(ghoul) {
      appendLi(ghoul, ul);
   });
}



//On Page Load:
window.onload = function() {
   console.log("Boo!");
   var ul = document.querySelector("ul.containment_unit");
   var form = document.querySelector("form.add_ghouls");
   form.addEventListener("submit", function(e) {
      e.preventDefault();

      var input = this.elements["ghoulName"];

      var newGhoul = input.value;
      window.ghouls.push(newGhoul);
      window.appendGhouls(window.ghouls, ul);
      input.value = "";
   });

   appendGhouls(ghouls, ul);
}