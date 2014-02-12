function HangMan(){
  this.wordList = ['ruby', 'rails', 'javascript', 'array', 'hash', 'underscore', 'sinatra', 'model', 'controller', 'view', 'devise', 'authentication', 'capybara', 'jasmine', 'cache', 'sublime', 'terminal', 'system', 'twitter', 'facebook', 'function', 'google', 'amazon', 'development', 'data', 'design', 'inheritance', 'prototype', 'gist', 'github', 'agile', 'fizzbuzz', 'route', 'gem', 'deployment', 'database'];
  this.guessedLetters = [];
  this.counter = 0;
  this.correctLetterArray = [];
  this.remainingGuesses = 8;
}

var newGame = new HangMan();

HangMan.prototype.initialize = function() {

  // alias commonly accessed DOM elements
  this.letterInput = document.getElementById("letter_field");
  this.guessedLettersWindow = document.getElementById("guessed_letters");
  this.remainingGuessesElement = document.getElementById("guesses_left");
  this.giveUpBtn = document.getElementById("give_up_button");
  this.resetBtn = document.getElementById("reset_button");
  this.wordDisplay = document.getElementById("word_string");

  // get random word from wordlist
  this.randomIndex = _.random(0, this.wordList.length);
  this.randomWord = this.wordList[this.randomIndex];
  this.randomWordLength = this.randomWord.length;
  // this.remainingGuesses = this.randomWordLength;

  // inititalize remaining guesses span
  this.remainingGuessesElement.innerHTML = this.remainingGuesses;

  // makes an array equal to the length of the random word, and display on page
  _(this.randomWordLength).times(function(){ this.correctLetterArray.push("_"); }, this);
  this.wordDisplay.innerHTML = this.correctLetterArray.join(" ");

  // add event listeners to this object (aliased as self for simplicity's sake)
  var self = this;
  this.letterInput.addEventListener('keyup', function(e) {
    self.playGame((String.fromCharCode(e.keyCode)).toLowerCase());
    self.letterInput.value = "";
  }, this);
  this.giveUpBtn.addEventListener('click', function(){
    self.giveUp();
  });
  this.resetBtn.addEventListener('click', function(){
    location.reload();
  });

}

HangMan.prototype.playGame = function(key) {
  if ( this.guessedLetters.indexOf(key) === -1 ) {
    // Display & store guessed letters
    var chosenLetter = key;
    this.guessedLettersWindow.innerHTML += key + " ";
    this.guessedLetters.push(key);
    // Update remaining guesses if incorrect guess
    if ( this.randomWord.indexOf(key) === -1 ) {
      this.remainingGuesses -= 1;
      this.remainingGuessesElement.innerHTML = this.remainingGuesses;
    }
    // Check if guessed letter is in the chosen random word
    var correctLetterIndex = 0;
    while ( this.randomWord.indexOf(key, correctLetterIndex) !== -1 ) {
      console.log("correct letter function");
      correctLetterIndex = this.randomWord.indexOf(key, correctLetterIndex);
      this.correctLetterArray[correctLetterIndex] = key;
      this.wordDisplay.innerHTML = this.correctLetterArray.join(" ")
      correctLetterIndex += 1;
    }
    if ( this.remainingGuesses == 0 && this.correctLetterArray.indexOf("_") !== -1 ) {
      alert("You lose!!!");
      location.reload();
    } else if ( this.remainingGuesses >= 0 && this.correctLetterArray.indexOf("_") == -1 ) {
      alert("You Win!!!");
      location.reload();
    }
  }
}

HangMan.prototype.giveUp = function(){
  this.wordDisplay.innerHTML = this.randomWord;
}



window.onload = function(){
  console.log("loaded");
  newGame.initialize();
}