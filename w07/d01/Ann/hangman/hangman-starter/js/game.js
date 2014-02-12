/**** GLOBAL VARIABLES AND FUNCTIONS(we're everywhere!) ****/

var wordsArray = ['ruby', 'rails', 'javascript', 'array', 'hash', 'underscore', 'sinatra', 'model', 'controller', 'view', 'devise', 'authentication', 'capybara', 'jasmine', 'cache', 'sublime', 'terminal', 'system', 'twitter', 'facebook', 'function', 'google', 'amazon', 'development', 'data', 'design', 'inheritance', 'prototype', 'gist', 'github', 'agile', 'fizzbuzz', 'route', 'gem', 'deployment', 'database']; 

var guessedLettersArray = []; 
var letterField = document.getElementById("letter_field"); 
var resetButton = document.getElementById("reset_button"); 

// function HangMan(){
//   this.guessedLettersArray = []; 
//   this.remainingGuesses = 8; 
//   this.letterField = ""; 
// }

// var newGame = new HangMan(); 

// Hangman.prototype.initialize = function(){

// }

var currentWord = function(){
  var word = wordsArray[Math.floor(Math.random() * wordsArray.length)];
  var wordToGuess = document.getElementById("word_string");
  wordToGuess.innerText = word;  

  word.length = 

  var wordArray = word.split(""); 
    if(wordArray.indexOf(letterField.value) === 1){
      
    }

};

function guessWord(){
  
}

function updateGuessedLetters(){
  var guessedLetters = document.getElementById("guessed_letters"); 
  guessedLetters.innerText = guessedLettersArray.join(" ");
}; 

function remainingGuesses(){
  var guesses = (9 - (guessedLettersArray.length + 1)); 
  var numberofguesses = document.getElementById("guesses_left"); 
  numberofguesses.innerText = guesses; 
}; 

function underscoreWord(){

}; 

function currentWord(){

}

/**** THE LAST THING THAT HAPPENS! ****/
window.onload = function(){
  console.log("I GOT DA BEATZZZZZ");

  // instantiate the first game object
  resetButton.addEventListener('click', function(e){
    randomWord();
  });

  letterField.addEventListener('keypress', function(e){
      var key = e.which || e.keyCode;
      if (key === 13 && guessedLettersArray.indexOf(letterField.value) === -1) { 
        guessedLettersArray.push(letterField.value); 
      console.log(guessedLettersArray); 
    };  
    updateGuessedLetters();
    remainingGuesses();  
    letterField.value = null; 
  });
  randomWord(); 
}
