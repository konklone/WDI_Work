// function changeColor(color) {
// 	square.style.background = color;
// 	inputField.value = ""
// }


window.onload = function() {
	var brush = document.querySelector(".brush");
	var button = document.getElementById("set-color");
	var inputField = document.getElementById("color-field");

	function setColor(){
		var color = inputField.value;
		brush.style.background = color;
		inputField.value = "";
	}

	button.addEventListener("click", function(){
		setColor();
	})

	inputField.addEventListener("keypress", function(event) {
		var key = event.which || event.keycode;
		if (key === 13){
			setColor();
		}
	})

	function createDivs() {
		var newDiv = document.createElement("div");
		newDiv.setAttribute("class", "square");
		body.appendChild(newDiv);
	}

	for (var i = 0; i < 8000; i++){
		var box = document.createElement('div');
		box.className = "square";
		box.addEventListener("mouseover", function(){
			var color = inputField.value;
			if (this.style.background === color){
				this.style.background = "";
			} else {
				this.style.background = color;
			}
		})
		document.body.appendChild(box);
	}
}

