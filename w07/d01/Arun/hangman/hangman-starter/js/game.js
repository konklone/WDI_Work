function initialize() {
	var words = ['ruby', 'rails', 'javascript', 'array', 'hash', 'underscore', 'sinatra', 'model', 'controller', 'view', 'devise', 'authentication', 'capybara', 'jasmine', 'cache', 'sublime', 'terminal', 'system', 'twitter', 'facebook', 'function', 'google', 'amazon', 'development', 'data', 'design', 'inheritance', 'prototype', 'gist', 'github', 'agile', 'fizzbuzz', 'route', 'gem', 'deployment', 'database'];
	var letters = [];
}

function figureOutWord() {
	var words = ['ruby', 'rails', 'javascript', 'array', 'hash', 'underscore', 'sinatra', 'model', 'controller', 'view', 'devise', 'authentication', 'capybara', 'jasmine', 'cache', 'sublime', 'terminal', 'system', 'twitter', 'facebook', 'function', 'google', 'amazon', 'development', 'data', 'design', 'inheritance', 'prototype', 'gist', 'github', 'agile', 'fizzbuzz', 'route', 'gem', 'deployment', 'database'];
	var selectedWord = words[Math.floor(Math.random() * words.length)];
	array = selectedWord.split("");
	console.log("function implemented")
}

function compareLetter(array) {
	var counter = 10;
	var letters = [];
	var convertedString = null
	var userLetter = document.getElementById("letter_field");
	var displayGuesses = document.getElementById("guesses_left");
	var alreadyGuessed = document.getElementById("guessed_letters");
		userLetter.addEventListener("keypress", function(event) {
			var code = event.keyCode;
			if (code !== 13) {
				var convertedString = String.fromCharCode(code);
				letters.push(convertedString);
				counter--;
				alreadyGuessed.innerHTML = letters;	
				if (counter == 0) {
					alert("you lose!");
					location.reload(true);
				}
			}
		displayGuesses.innerHTML = counter;
		console.log(letters);
		});
}

window.onload = function() {
	initialize();
	figureOutWord();
	compareLetter();
}