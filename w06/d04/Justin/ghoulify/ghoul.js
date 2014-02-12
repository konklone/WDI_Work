window.onload = function() {
	console.log("OOOOOHHHH!");
}


function GhoulContainer(){
	// this.name = name;
	this.containmentUnit = [];
}

GhoulContainer.prototype.push = function(name) {
	this.allGhouls.push(name);
}

// gouls = new GhoulList();

// gouls.push("Jeff");

// ghouls.collection

