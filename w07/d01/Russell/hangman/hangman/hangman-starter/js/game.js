

  var letter_field = document.getElementById("letter_field");
  letter_field.value = ""
  letter_field.addEventListener('keypress', function(element){
    var key = element.which || element.keyCode;
   });

  var giveUp = document.getElementById("give_up_button");
  giveUp.addEventListener('click', function() {
    new_turn.giveUp();


  window.onload = function() {
  new_turn = new Hangman;
  new_turn.rightGuess();
  new_turn.renderGuessesLeft();

  });
function Hangman() {
  this.lettersNotGuessed = [];
  var index = Math.floor((Math.random()*(this.lettersNotGuessed.length-1)));
  this.lettersGuessed = this.lettersNotGuessed[index].split("");
  
  this.rightGuess = [];
  for (var i=0; i<this.lettersGuessed.length; i++) {
    this.rightGuess.push( "_" );
  }
   this.guessesLeft = this.rightGuess.length;
  this.lettersGuessed = [];
 
}

Hangman.prototype.rightGuess = function() {
  var wordStringDiv = document.getElementById("word_string");
  var guessWord = this.rightGuess.join("");

  wordStringDiv.innerHTML = guessWord;
}


Hangman.prototype.guessWord = function(letter) {
  var index = this.lettersGuessed.indexOf(letter);
  var new_turn = this;
  if ( this.rightGuess.indexOf(letter) === -1 ) {
    if ( index != -1) {
      for(var i=0; i < this.lettersGuessed.value; i++) {
        if (letter===new_turn.lettersGuessed[i]) { new_turn.rightGuess[i] = letter };
      }
  return true
    }
  }
}
Hangman.prototype.alreadyGuessed = function() {
  var guessed_div = document.getElementById("guessed_letters");
  var guessWord = this.lettersGuessed.join("");

  guessed_div.innerHTML = guessWord;
}


}


Hangman.prototype.renderGuessesLeft = function() {
  var guesses = document.getElementById("guesses_left");
  guesses.innerHTML = this.guessesLeft;
}

Hangman.prototype.checkWin = function() {
  if (this.guessesLeft >= 0 && this.lettersGuessed.join() === this.rightGuess.join()) {
    alert("Winner");
  }
}
Hangman.prototype.addToLettersGuessed = function(letter) {
  if (this.lettersGuessed.indexOf(letter) === -1) {
    this.lettersGuessed.push(letter.toLowerCase());
  } else {
    alert("Letter already guessed!");
  }

Hangman.prototype.makeGuess = function(letter) {
  if (letter.length === 1) {
    if (this.guessesLeft > 0) {
      this.addToLettersGuessed(letter);
      this.alreadyGuessed();

      if ( !this.guessWord(letter)) { this.guessesLeft  --; }
      this.renderGuessesLeft();
      this.rightGuess();

    } else {
      prompt("You lost. Leave a message for fun");
    }
  }



Hangman.prototype.giveUp = function() {
  this.rightGuess = this.lettersGuessed;
  this.rightGuess();
}



