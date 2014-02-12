// User Stories:
  // input a letter
  // see letters I've guessed
  // see guesses left
    // decrement it


// Game Obj
  // attributes:
    // list of all words
    // current word
    // display word
    // letters guessed already
    // guesses left
  // behaviors:
    // initiate a game
      // display word w/ _'s
      // initiate guesses left
      // initiate letters guessed already
    // guess a letter
      // check if current word include guessed letter
        // if yes
          // add to letters guessed already
          // render guessed already
          // re render display word
        // if not
          // add to letters guessed already & increment

function Game() {
  this.availableWords = ['ruby', 'rails', 'javascript', 'array', 'hash', 'underscore', 'sinatra', 'model', 'controller', 'view', 'devise', 'authentication', 'capybara', 'jasmine', 'cache', 'sublime', 'terminal', 'system', 'twitter', 'facebook', 'function', 'google', 'amazon', 'development', 'data', 'design', 'inheritance', 'prototype', 'gist', 'github', 'agile', 'fizzbuzz', 'route', 'gem', 'deployment', 'database'];
  var index = Math.floor((Math.random()*(this.availableWords.length-1)));
  this.currentWordLetters = this.availableWords[index].split("");
  
  // initialize display word of blanked out letters
  this.displayWordLetters = [];
  for (var i=0; i<this.currentWordLetters.length; i++) {
    this.displayWordLetters.push( "_" );
  }

  this.lettersGuessed = [];
  this.guessesLeft = this.displayWordLetters.length;
}

Game.prototype.renderDisplayWord = function() {
  var wordStringDiv = document.getElementById("word_string");
  var displayWord = this.displayWordLetters.join("");

  wordStringDiv.innerHTML = displayWord;
}

Game.prototype.renderLettersGuessed = function() {
  var lettersGuessedDiv = document.getElementById("guessed_letters");
  var displayWord = this.lettersGuessed.join("");

  lettersGuessedDiv.innerHTML = displayWord;
}

Game.prototype.addToLettersGuessed = function(letter) {
  if (this.lettersGuessed.indexOf(letter) === -1) {
    this.lettersGuessed.push(letter.toLowerCase());
  } else {
    alert("Letter already guessed!");
  }
}

Game.prototype.alterDisplayWord = function(letter) {
  // check if currentWordLetters includes letter
  var index = this.currentWordLetters.indexOf(letter);
  var game = this;
  if ( this.displayWordLetters.indexOf(letter) === -1 ) {
    if ( index != -1) {
      for(var i=0; i < this.currentWordLetters.length; i++) {
        if (game.currentWordLetters[i] === letter) { game.displayWordLetters[i] = letter };
      }

      return true;
    } else {
      return false;
    }
  }
}

Game.prototype.renderGuessesLeft = function() {
  var guesses = document.getElementById("guesses_left");
  guesses.innerHTML = this.guessesLeft;
}

Game.prototype.checkWin = function() {
  if (this.guessesLeft >= 0 && this.currentWordLetters.join() === this.displayWordLetters.join()) {
    alert("Winner");
  }
}

Game.prototype.makeGuess = function(letter) {
  if (letter.length === 1) {
    if (this.guessesLeft > 0) {
      this.addToLettersGuessed(letter);
      this.renderLettersGuessed();

      if ( !this.alterDisplayWord(letter)) { this.guessesLeft--; }

      this.renderDisplayWord();

      this.renderGuessesLeft();
    } else {
      alert("Sorry, no guesses.");
    }
  } else {
    alert("Letters not phrases please.");
  }


  var inputBox = document.getElementById("letter_field");
  inputBox.value = "";
}

Game.prototype.giveUp = function() {
  this.displayWordLetters = this.currentWordLetters;
  this.renderDisplayWord();
}

window.onload = function() {
  game = new Game;
  game.renderGuessesLeft();
  game.renderDisplayWord();

  var inputBox = document.getElementById("letter_field");
  inputBox.addEventListener('keypress', function keyUpEvent(e) {
    e.preventDefault();
    // keystroke is captured by chr
    var chr = String.fromCharCode(e.keyCode);
    game.makeGuess(chr);
    game.checkWin();
  });

  var giveUpButton = document.getElementById("give_up_button");
  giveUpButton.addEventListener('click', function() {
    game.giveUp();
  });

  var resetButton = document.getElementById("reset_button");
  resetButton.addEventListener('click', function() {
    window.location.reload();
  });
}