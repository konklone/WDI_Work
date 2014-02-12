function Hangman(){
  this.wordBank = ["goat", "llama", "frog", "sheep" ];
  this.guessLeft = 8;
  this.letterGuessedAlready = [];
  this.giveUp = false;

 }



 Hangman.prototype.displayGuesses = function() {
    var spanGuess = document.getElementById("guesses_left");
    spanGuess.innerText = this.guessLeft;
 }


 Hangman.prototype.chooseSampleWord = function() {
  var sample = _.sample(this.wordBank);
  var word = document.getElementById("word_string");
  var splitSample = sample.split("");
  console.log(splitSample);
  for (var i =  splitSample.length - 1; i >= 0; i--) {
       word.innerText += "_";
  }
  return splitSample;
}
 




Hangman.prototype.inputLetter = function() {

var inputBox = document.getElementById("letter_field");
  var array = this.letterGuessedAlready;
  var numGuesses = this.guessLeft;
  var spanGuess = document.getElementById("guesses_left"); 


   inputBox.onkeyup= myfunction;

function myfunction(){
    var guessedLetters = document.getElementById("guessed_letters");
    var guessedLetterValue = inputBox.value;

    if(_.indexOf(array, guessedLetterValue) === -1){
      guessedLetters.innerHTML += guessedLetterValue;
      array.push(guessedLetterValue);
      numGuesses --;
      spanGuess.innerText = numGuesses;
      this.value = " ";    
  }
   else{
    this.value = " ";

   }
  
  }

}








window.onload = function() {
  game = new Hangman();
  game.chooseSampleWord();
  game.inputLetter();
  game.displayGuesses();
}