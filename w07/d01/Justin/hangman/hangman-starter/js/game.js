function Game() {

}

// Game.prototype.inputLetter = function() {
// 	var inputBox = document.getElementById("letter_field").onkeypress= myfunction;

// 	function myfunction(){
// 	    alert('hiiiii');
// 	}

// }

window.onload = function() {
	letterField = document.getElementById("letter_field");
	var letterInput = "";

	letterField.onkeypress = function(){
		letterInput = letterField.value;
		console.log(letterInput);
	};

	// letterField.addEventListener("keypress", function(event) {
	// 	letterInput = letterField.value;
	// 	letterField.value = "";
	// 	console.log(letterInput);
		
	// })
}


