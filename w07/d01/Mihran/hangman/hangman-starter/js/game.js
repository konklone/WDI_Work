var words = ['ruby', 'rails', 'javascript', 'array', 'hash', 'underscore', 'sinatra', 'model', 'controller', 'view', 'devise', 'authentication', 'capybara', 'jasmine', 'cache', 'sublime', 'terminal', 'system', 'twitter', 'facebook', 'function', 'google', 'amazon', 'development', 'data', 'design', 'inheritance', 'prototype', 'gist', 'github', 'agile', 'fizzbuzz', 'route', 'gem', 'deployment', 'database'];

newGame = function(){
  currentWord = _.sample(words)
  currentWordArray = _.toArray(currentWord)
  currentWordLength = currentWordArray.length
  guessedLettersArray = [];
  wrongGuessesLeft = 9;
  underscores = document.getElementById("word_string");
  _(currentWordLength).times(function(){underscores.innerHTML += "_"});
  guessedLetters = document.getElementById("guessed_letters");
  guessesLeft = document.getElementById("guesses_left");
  guessesLeft.innerHTML = 9;
  letterField = document.getElementById("letter_field")
  letterField.addEventListener('keypress', function (e){
    var key = e.which || e.keyCode;
    if (key == 13) { 
      //if it's not in the word, then push it to guessedLettersArray and
      if (guessedLettersArray.indexOf(letterField.value) === -1) {
      guessedLettersArray.push(letterField.value);
      console.log(guessedLettersArray);
      guessedLetters.innerHTML = guessedLettersArray.join(" ");
      };

      //if input letter is not in the word, and you still have wrongGuesses left, decrease wrongGuesses by 1,
      if (currentWordArray.indexOf(letterField.value) === -1 && wrongGuessesLeft > 0 ) {
        wrongGuessesLeft-- ;
        guessesLeft.innerHTML = wrongGuessesLeft;
      };

      //if input letter does belong to the word, fill the blanks where that letter is
      if (currentWordArray.indexOf(letterField.value) > -1) {
        _.each(currentWordArray, function(e, i) {
          if ( e == letterField.value) {
            textArr = underscores.innerHTML.split("")
            textArr[i] = e
            underscores.innerHTML = textArr.join("");
          }
        });
      }
    letterField.value = null;
    }
  })
}

window.onload = function(){

  newGame();

  giveUpButton = document.getElementById("give_up_button");
  giveUpButton.addEventListener("click", function(){
    underscores.innerHTML = currentWord
  })
  resetButton = document.getElementById("reset_button");
  resetButton.addEventListener("click", function(){
    guessedLetters.innerHTML = null;
    underscores.innerHTML = null
    newGame();
  })
}