window.onload = function() {

  hangman = new Game();
  hangman.initialize();

}

function Game() {
    this.guesses = 8;
    this.words = ['ruby', 'rails', 'javascript', 'array', 'hash', 'underscore', 'sinatra', 'model', 'controller', 'view', 'devise', 'authentication', 'capybara', 'jasmine', 'cache', 'sublime', 'terminal', 'system', 'twitter', 'facebook', 'function', 'google', 'amazon', 'development', 'data', 'design', 'inheritance', 'prototype', 'gist', 'github', 'agile', 'fizzbuzz', 'route', 'gem', 'deployment', 'database'];
    this.guessedLetters = [];
}

Game.prototype.initialize = function() {
    this.randomWord = _.sample(this.words);
    this.secret = this.secretWord(this.randomWord);
    
    this.field = document.querySelector('#letter_field');
    
    this.field.addEventListener('keyup', function() {
      if (this.guessedLetters.indexOf(this.field.value) == -1) {
        this.guessedLetters.push(this.field.value);
        this.updateLettersDisplay();
        this.check(this.field.value);
      };
      this.field.value = null;
    }.bind(this));

    this.quitButton = document.querySelector('#give_up_button');

    this.quitButton.addEventListener('click', function() {
      this.giveUp();
    }.bind(this));

    this.resetButton = document.querySelector('#reset_button');

    this.resetButton.addEventListener('click', function() {
      location.reload();
    });

    this.updateGuessesDisplay();
    this.updateWordDisplay();
}

Game.prototype.updateLettersDisplay = function() {
  var letters = document.querySelector('#guessed_letters');
  letters.innerText = this.guessedLetters.join(" ");
}

Game.prototype.secretWord = function(word) {
  var secretWord = []
  word = word.split("");
  _.each( word, function() {
    secretWord.push("_");
  });
  return secretWord.join(" ");
}

Game.prototype.giveUp = function() {
  this.guesses = 0;
  this.secret = this.randomWord;
  this.updateGuessesDisplay();
  this.updateWordDisplay();
}

Game.prototype.win = function() {
  var updatedSecret = _.without(this.secret.split(""), " ");
  updatedSecret = updatedSecret.join("");
  if (this.randomWord == updatedSecret) {
    return true;
  }
  else {
    return false;
  }
}

Game.prototype.updateGuessesDisplay = function() {
  var guessesLeft = document.querySelector("#guesses_left");
  guessesLeft.innerText = this.guesses;
}

Game.prototype.updateWordDisplay = function() {
  var wordString = document.querySelector('#word_string');
  wordString.innerHTML = this.secret;
}

Game.prototype.check = function(letter) {
  var updatedSecret = _.without(this.secret.split(""), " ");
  if (this.randomWord.indexOf(letter) === -1) {
    this.guesses -= 1;
    this.updateGuessesDisplay();
    if (this.guesses === 0) {
      alert("Sorry, you lose ");
      location.reload();
    };
  }
  else {
    for ( var i = 0; i < this.randomWord.length; i++) {
      if (this.randomWord[i] == letter) {
        updatedSecret[i] = letter;
      }
    }
    this.secret = updatedSecret.join(" ");
    this.updateWordDisplay();
    if (this.win()) {
      alert("Congrats you win!");
      location.reload();
    };
  }
}
