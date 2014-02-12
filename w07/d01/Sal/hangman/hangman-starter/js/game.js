var Hangman = function(){
  this.wordArray = ['ruby', 'rails', 'javascript', 'array', 'hash', 'underscore', 'sinatra', 'model', 'controller', 'view', 'devise', 'authentication', 'capybara', 'jasmine', 'cache', 'sublime', 'terminal', 'system', 'twitter', 'facebook', 'function', 'google', 'amazon', 'development', 'data', 'design', 'inheritance', 'prototype', 'gist', 'github', 'agile', 'fizzbuzz', 'route', 'gem', 'deployment', 'database']
  this.guessedLetters = [];
  this.numberOfGuesses = 8;
}


hangman = new Hangman(); 

Hangman.prototype.initialize = function() {
  this.randomWord = _.sample(this.wordArray)
  console.log(this.randomWord)
  this.randomWordLength = this.randomWord.length
  console.log(this.randomWordLength)
  this.wordStringDiv = document.getElementById('word_string')
  var underscore = "_"
  for(var i = 0; i < this.randomWordLength; i++) {
    this.wordStringDiv.innerHTML += underscore
  }
  this.numbGuessDiv = document.getElementById('guesses_left')
  this.numbGuessDiv.innerHTML = this.numberOfGuesses;
  this.inputField = document.getElementById('letter_field')
  // inputField.addEventListener("keypress", function(e) {
  //   var key = e.which || e.keycode
  //   if (key === 13) {
  //     setColor(); 
  //   }
  // });
}

Hangman.prototype.guessLetter = function() {
  letter = prompt("What letter would you like to press?")
  if( (this.guessedLetters.indexOf(letter) === -1 ) && letter != "") {
    this.guessedLetters.push(letter)
    numbGuessDiv = document.getElementById('guesses_left')
    numbGuessDiv.innerHTML = this.numberOfGuesses -= 1;
    letterGuessDiv = document.getElementById('guessed_letters')
    letterGuessDiv.innerHTML = this.guessedLetters.join(' ')
  }
  if(this.randomWord.indexOf(letter) != -1) {
    
  }
}

window.onload = function() {
  console.log("Loaded")
  hangman.initialize()
}


