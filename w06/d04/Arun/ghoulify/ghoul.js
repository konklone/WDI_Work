function GhoulContainer() {
	this.containmentUnit = [];
}

GhoulContainer.prototype.push = function(ghoulName) {
	this.containmentUnit.push(ghoulName);
}

var ghouls = new GhoulContainer();

ghouls.push("Jeff");	
ghouls.push("Arun");
ghouls.push("blah");


function changeName(name) {
	document.querySelector("ul.containment-unit li").innerHTML = name;	
}

function appendLi(name, ul){
	var li = document.createElement("li");
	li.innerHTML = name;
	ul.appendChild(li);
}

function appendGhouls(ghouls, ul) {
	ul.innerHTML = "";
	WTK.each(ghouls.containmentUnit, function(ghoul) {
		appendLi(ghoul, ul);
	});
}

window.onload = function(){
	console.log("hi");
	var form = document.querySelector("form.add-ghouls");
	var ul = document.querySelector("ul.containment-unit");
	form.addEventListener("submit", function(e) {
		e.preventDefault();
		ghouls.push(form.elements["ghoulName"].value);
		appendGhouls(ghouls, ul);
	});
	appendGhouls(ghouls, ul);
}