
//***** Stuff to do: 
// user will input a letter
// user will be able to see letter guesed
// user will be able to see how many guesses left
// user will be able to start a new game
// user will know if they won
 
//***** buttons/listeners:
//guess a letter input
//restart button 
//give up button



//****** Think about Models (game, )
window.onload = function(){
  console.log("LOADED!");
  //var inputField = document.getElementById("letter-field");
  //get whats in letter-field and put it in the guessed-letters field.
  
  //var newInputField = document.getElementById("guessed-letters");
  //newInputField.appendChild(inputField);


function hangman(game, word){
  var words = [ruby, android, fellowship, javascript];
  this.word = words.sample;
}
//create a game object 
//make it put a word in
//line already there called "game_play_area"

function getLetter(letter){
  
  var inputField = document.getElementById("letter-field");
  //get whats in letter-field and put it in the guessed-letters field.
  
  var guessedLettersInputField = document.getElementById("guessed-letters");
  guessedLettersInputField.appendChild(inputField);
  letter = inputField.value;
}
};

guessedLettersInputField("keypress", function(e){
  var key = e.which|| e.keyCode;
   if(key === 13){
   getLetter();
   }
 });


function check_letter(){
}
// will check if letter is in word.
//if it is put in div id "word_string"

function give_up(){
  // if button on line 
}