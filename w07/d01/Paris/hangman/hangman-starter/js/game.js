// Create a game object called GuessContainer
function GuessContainer() {
  this.containmentUnit = [];
  this.wordArray = []
}

// Create a method on our game object to 'save' guessed letters in an array.
GuessContainer.prototype.push = function(guess) {
  this.containmentUnit.push(guess);
}

// Create an instance of the game object called Game
window.game = new GuessContainer();
// Create an array of words on the Game object.
window.game.wordArray =  ["hash", "array", "ajax", "javascript", "object", "attributes"]

// Grab the letter from the input field and add to the guessed letter field.
function addLetter() {
  var guessedLetters = document.querySelector("div#guessed_letters");
  var letterField = document.querySelector("input#letter_field")
  letterField.addEventListener("keypress", function(event) {
  console.log( "INPUT TO EVENT LISTENER: '" + letterField.value + "'" )

  if ((letterField.value === '') || (game.containmentUnit.indexOf(letterField.value) > -1 )){
    
    //do nothing!

  } else { // We get here if the input is a new letter
    window.game.push(letterField.value);
    guessedLetters.innerHTML = game.containmentUnit.join(" ");

    // We match correct letters to the underline spaces:
    currentWordArray = _.toArray(word);
    if (currentWordArray.indexOf(letterField.value) > -1) {
      _.each(currentWordArray, function(e, i) {
        if ( e == letterField.value) {
          textArr = spaces.innerHTML.split("")
          textArr[i] = e
          spaces.innerHTML = textArr.join("");
        }
      });
    }
    // Clear the input field after a lettered is entered.
    letterField.value = "";
  } // -------------------------------------------

    // Set the counter to decrement from 8.
    if (currentWordArray.indexOf(letterField.value) > -1) {
      // do nothing
    } else {
      var sp = document.getElementById("guesses_left");
      sp.innerHTML = 8 - game.containmentUnit.length; 
    };  
  });

} 

// add underscores to the game play space
function addUnderscores() {
  wordArray = game.wordArray;
  word = _.sample(wordArray);
  console.log(word);
  numberOfCharacters = word.length;
  spaces = document.getElementById("word_string");

  for (var i = 0; i < numberOfCharacters; i++){
    spaces.innerHTML += "_" 
    console.log(spaces.innerHTML)
  };

}


function onLoadFunction() {
  console.log("Loaded");
  addLetter();
  var sp = document.getElementById("guesses_left");
  sp.innerHTML = "8";
  addUnderscores();
 // load Give Up button 
  buttonGiveUp = document.getElementById("give_up_button");
  buttonGiveUp.addEventListener('click', function() {
  console.log("button's working!")
  spaces.innerHTML = word
  }); 
  // load Restart button 
  buttonRestart = document.getElementById("reset_button");
  buttonRestart.addEventListener('click', function() {
  var guessedLetters = document.querySelector("div#guessed_letters");
  var letterField = document.querySelector("input#letter_field")
  console.log("button's working!")
  sp.innerHTML = "8";
  // letterField.value = "";
  spaces.innerHTML = "";
  addUnderscores();
  guessedLetters.innerHTML = ""
  game.containmentUnit = []

  }); 
}

window.onload = onLoadFunction;




