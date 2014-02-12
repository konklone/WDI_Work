var word = {
  secret_word: "",
  word_list: ['ruby', 'rails', 'javascript', 'array', 'hash', 'underscore', 'sinatra', 'model', 'controller', 'view', 'devise', 'authentication', 'capybara', 'jasmine', 'cache', 'sublime', 'terminal', 'system', 'twitter', 'facebook', 'function', 'google', 'amazon', 'development', 'data', 'design', 'inheritance', 'prototype', 'gist', 'github', 'agile', 'fizzbuzz', 'route', 'gem', 'deployment', 'database'],

  setSecretWord: function() {
    // this.secret_word = this.word_list[Math.floor(Math.random() * this.word_list.length)];
    this.secret_word = _.sample(this.word_list);
  },

  // Takes an array of letters as input and returns an array of two items:
  // 1) A string with the parts of the secret word that have been guessed
  // correctly and underscore for the parts that haven't
  // 2) An array of all the guessed letters that were not in the secret word
  checkLetters: function(guessed_letters) {
    // Splits the secret word into an array of letters
    var secret_word_letters = this.secret_word.split('');
    // Creates the string with blanks to return
    var letters_with_blanks = _.map(secret_word_letters, function(letter) {
      if(_.contains(guessed_letters, letter)) {
        return letter;
      } else {
        return '_';
      }
    });
    var secret_word_with_blanks = letters_with_blanks.join(' ');

    // Creates an array with all the letters that were guessed that are not in the word
    var wrong_letters = _.reject(guessed_letters, function(letter) {
      return _.contains(secret_word_letters, letter);
    });
    // Return an object with secret_word_with_blanks and the wrong_letters array
    var return_object = {
      secret_word_with_blanks: secret_word_with_blanks, 
      wrong_letters: wrong_letters
    };
    return return_object;
  }
};


var player = {
  MAX_GUESSES: 8,
  guessed_letters: [],

  // Validates that the input was a single letter character
  isLetter: function(input) {
    return input.length === 1 && input.match(/[a-z]/);
  },

  // Takes a new letter as input and updates the game
  makeGuess: function(letter) {
    // format and validate the guess before adding it to the guessed letters list
    letter = letter.toLowerCase();
    if(this.isLetter(letter)) {
      this.guessed_letters.push(letter);
      this.guessed_letters = _.uniq(this.guessed_letters);
    }

    // Send the guesses to the word to get back how we are doing
    var results = word.checkLetters(this.guessed_letters);
    var guesses_left = this.MAX_GUESSES - results.wrong_letters.length;

    // Update the display
    game.updateDisplay(results.secret_word_with_blanks, this.guessed_letters, guesses_left)

    // Check if we've won or lost
    this.checkLose(results.wrong_letters);
    this.checkWin(results.secret_word_with_blanks);
  },

  // You win if your secret word string doesn't have any more blanks
  checkWin: function(word) {
    if(word.indexOf('_') < 0) {
      // winner; you get a prize
      alert("You win!!!");
    }
  },

  // You lose if you've guessed more wrong letters than you have guesses
  checkLose: function(wrong_letters) {
    if(wrong_letters.length >= this.MAX_GUESSES) {
      game.giveUp();
    }
  }
}


var game = {
  // Update the display with the parts of the secret word guessed, the letters guessed, and the guesses remaining
  updateDisplay: function(word_string, guessed_letters, guesses_left) {
    document.getElementById('word_string').innerHTML = word_string;
    document.getElementById('guessed_letters').innerHTML = guessed_letters.join(' ');
    document.getElementById('guesses_left').innerHTML = guesses_left;
  },

  // Reveals the answer to the secret word and disables the form field
  giveUp: function() {
    this.updateDisplay(word.secret_word, [], 0);
  },

  // Resets the game
  resetGame: function() {
    word.setSecretWord();
    player.guessed_letters = [];
    player.makeGuess('');
  }
}


window.onload = function() {
  // Starts a new game
  game.resetGame();

  // Add event listener to the letter input field
  document.getElementById('letter_field').addEventListener('keyup', function(event) {
    var letter_entered = this.value;
    player.makeGuess(letter_entered);
    this.value = '';
  });
  // Add event listener to the reset button to reset the game when clicked
  document.getElementById('reset_button').addEventListener('click', function(event) {
    game.resetGame();
  });
  // Add event listener to the give up button to give up when clicked
  document.getElementById('give_up_button').addEventListener('click', function(event) {
    game.giveUp();
  });
}