	window.onload = function(){
		var inputField = document.getElementById("color-field");
		var button = document.getElementById("set-color");
		var brush = document.querySelector(".brush");


	function setColor(){
		var color = inputField.value;
		brush.style.background = color;
	}


	button.addEventListener('click', function(){
		setColor();	
	});

	inputField.addEventListener('keypress', function(e){
		var key = e.which || e.keycode
		if (key === 13){
			setColor();
		}
	});

	for (var i=0; i<20000; i++){
		var box = document.createElement('div');
		box.className = "square";
		box.addEventListener("mouseover", function(){
			this.style.background = inputField.value;
		});
		document.body.appendChild(box);

	}
}