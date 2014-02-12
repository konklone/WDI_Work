/*********  MODELS *********/


function Words(){
  wordList = ['ruby', 'rails', 'javascript', 'array', 'hash', 'underscore', 'sinatra', 'model', 'controller', 'view', 'devise', 'authentication', 'capybara', 'jasmine', 'cache', 'sublime', 'terminal', 'system', 'twitter', 'facebook', 'function', 'google', 'amazon', 'development', 'data', 'design', 'inheritance', 'prototype', 'gist', 'github', 'agile', 'fizzbuzz', 'route', 'gem', 'deployment', 'database']
  this.secretWord = _.sample(wordList)
}

function Player(){
  this.guessedLetters = [],
  this.numGuesses = 8
}

/********* Player Actions *********/
Player.prototype.guess = function(letter){
  // add letter to guessed letters array
  this.guessedLetters.push(letter);
  // subtract one from number of Guesses. Does not currently check if correct.
  this.numGuesses--;
}

/**********************************/
/************* ON LOAD ************/
/**********************************/
window.onload = function(){
  // Set Up Game
  var player = new Player;
  var words = new Words;
  // Get a word from the Word List and Make it Secret
  var secretWord = words.secretWord);
  displayGuessesLeft();

  // DOM Interaction Functions
  function displayGuessedLetters(){
    var guessedDisplay = document.getElementById("guessed_letters");
    guessedDisplay.innerHTML = player.guessedLetters.join(" ");
  }

  // Display Number of Incorrect GUesses Left
  function displayGuessesLeft(){
    var numGuessesLeft = document.getElementById("guesses_left");
    numGuessesLeft.innerHTML = player.numGuesses;
  }

  // Add Event Listener to Guess Button
  var guessBox = document.getElementById("guess_box");
  guessBox.addEventListener('keyup', function(e){
    e.preventDefault();
    var letterField = document.getElementById("letter_field");

    player.guess(letterField.value);
    letterField.value="";
    displayGuessedLetters(letterField.value);
    displayGuessesLeft();
  });
}

