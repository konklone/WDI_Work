window.onload = function() {
  console.log("loaded!");
  hangman = new Game;
  hangman.initialize();
}

function Game() {
  this.guessedLetters = [];
  this.guesses = 8;
  this.answers = ['ruby', 'rails', 'javascript', 'array', 'hash', 'underscore', 'sinatra', 'model', 'controller', 'view', 'devise', 'authentication', 'capybara', 'jasmine', 'cache', 'sublime', 'terminal', 'system', 'twitter', 'facebook', 'function', 'google', 'amazon', 'development', 'data', 'design', 'inheritance', 'prototype', 'gist', 'github', 'agile', 'fizzbuzz', 'route', 'gem', 'deployment', 'database'];
  this.answer = _.sample(this.answers);
  this.secretAnswer = this.secretize(this.answer);
}

Game.prototype.secretize = function(word) {
  var newArray = [];
  for (var i=0; i < word.length; i++){
    newArray.push("_");
  }
  return newArray.join(" ");


}

Game.prototype.initialize = function() {
  this.letterField = document.querySelector("#letter_field");
  this.letterField.addEventListener("keyup", function(){
    var guess = this.letterField.value;
    this.guessedLetters.push(guess);
    this.letterField.value = null;
    this.updateGuessedLetters();  
   }.bind(this));

  hangman.resetGame();
  hangman.giveUp();

  var answerBox = document.querySelector("#word_string");
  answerBox.innerHTML = this.secretAnswer;

}

Game.prototype.updateGuessedLetters = function() {
  var guessedList = document.querySelector("#guessed_letters");
  guessedList.innerHTML = this.guessedLetters.join(" ");
}

Game.prototype.resetGame = function(){
  var resetButton = document.querySelector("#reset_button");
  resetButton.addEventListener("click", function(){
    location.reload();
  });
}

Game.prototype.giveUp = function(){
  var surrenderButton = document.querySelector("#give_up_button");
  surrenderButton.addEventListener("click", function(){
  var answerBox = document.querySelector("#word_string");
  answerBox.innerText = hangman.answer;
  });
}


