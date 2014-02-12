window.onload = function() {
	var input = document.getElementById("color-field");
	var button = document.getElementById("set-color");
	var brush = document.querySelector(".brush");
	var color = "#1B4370";

	function setColor() {
		color = input.value;
		brush.style.background = color;
	}

	input.addEventListener("keypress", function(event){
		var code = event.keyCode;
		if (code == 13) {
			setColor();
		}
	});

	button.addEventListener("click", function(event){
		setColor();
	});

	var counter = 8000
	while (counter > 0) {
		var bodyPage = document.querySelector("body");
		var createDiv = document.createElement("div");
		createDiv.className = "square";
		createDiv.addEventListener("mouseover", function() {
			this.style.background = color;
		});
		bodyPage.appendChild(createDiv);
		counter--;
	}

	var allDivs = document.querySelector(".square")

	
}