window.onload = function(){
  console.log("poop");
  playGame();
}


function playGame(){
  var words = ['ruby', 'rails', 'javascript', 'array', 'hash', 'underscore', 'sinatra', 'model', 'controller', 'view', 'devise', 'authentication', 'capybara', 'jasmine', 'cache', 'sublime', 'terminal', 'system', 'twitter', 'facebook', 'function', 'google', 'amazon', 'development', 'data', 'design', 'inheritance', 'prototype', 'gist', 'github', 'agile', 'fizzbuzz', 'route', 'gem', 'deployment', 'database'];

  var wordString = document.getElementById("word_string");


  var userInput = document.getElementById("letter_field");
  rr r r rvar guess = document.getElementById("letter_field").value;
  var alreadyInput;
  var currentWord = _.sample(words);
  var currentHidden = currentWord.split("");
  var count = 8;
  var reset = document.getElementById("reset_button");
  var giveUp = document.getElementById("give_up_button");

  for (var i = 0; i < currentHidden.length; i++) {    currentHidden.join("");
  };
  console.log(guess);

  
  console.log(currentHidden);

  userInput.addEventListener("onkeyup", function(){
    for (var i = 0; i < currentWord.split("").length; i++){
      var guess = document.getElementById("letter_field").value;
      if (currentWord[i] === guess){
        currentHidden[i] = guess;
        currentHidden.join();
      }
    }

  });

  wordString.innerText = currentHidden;



}