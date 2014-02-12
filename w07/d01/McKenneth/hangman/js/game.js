window.onload = function (){
  play();
}

var blank, guessBlocks, words, guessInput, guess, alreadyGuessed,spaces;
var guesses = [];
var guessed = "";
var spaces = document.getElementById("word_string");

 words = ['ruby', 'rails', 'javascript', 'array', 'hash', 'underscore', 'sinatra', 'model', 'controller', 'view', 'devise', 'authentication', 'capybara', 'jasmine', 'cache', 'sublime', 'terminal', 'system', 'twitter', 'facebook', 'function', 'google', 'amazon', 'development', 'data', 'design', 'inheritance', 'prototype', 'gist', 'github', 'agile', 'fizzbuzz', 'route', 'gem', 'deployment', 'database'];

function game_pieces(word){
  blank = "_";
  guessBlocks =_.sample(words);
  var blocks = _.each(guessBlocks, function(e){
    if (_.contains(guessBlocks, word)) {
      alert(e);
      console.log(word)
    }else{
      e = "_";
     guessed.push(e); 
    }
  });

  spaces.innerHTML = guessed.toString();
}
var play = function(){
  spaces = document.getElementById("word_string");
  guessInput = document.querySelector("#letter_field");
  alreadyGuessed = document.getElementById("guessed_letters");
  

  guessInput.addEventListener('keyup', function(){
    guess = guessInput.value;
    guesses += guess;
    alreadyGuessed.innerHTML = guesses.split("", "");
    guessInput.value = "";
    });  
  game_pieces(guess);


};
