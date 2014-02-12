var Hangman = function (){
  this.wordList = ["rake", "routes", "inheritence", "mexico", "teniery operator"];
  this.currentWord = "";
  this.guessWord = "";
  this.lettersGuessed = [];
  this.guessesLeft = 8;
}

Hangman.prototype.giveUp = function (){
      console.log("give up");
}

Hangman.prototype.makeGuess = function (letter){
  var successfulGuess = false

  for(var i = 0; i<this.currentWord.length; i++){
    if (this.currentWord[i]==letter) {
      this.guessWord[i] = letter;
      console.log(i, this.guessWord[i], letter, this.currentWord[i]);
      successfulGuess = true;
    } 
  }
  
  if (successfulGuess == false){
    this.guessesLeft -= 1;
    this.lettersGuessed = this.letterGuessed + letter;
  }
}

Hangman.prototype.resetGame = function(){
  console.log("game is reset");
}

Hangman.prototype.assignWord = function(){
  this.currentWord = this.wordList[0]; //lets just pick the first word to start out with
}

Hangman.prototype.initializeGuessWord = function(){
  for (var i = 0; i<this.currentWord.length; i++){
    this.guessWord = guessWord + " ";
  }
}

Hangman.prototype.printGuessWord = function(){
  console.log(" " + this.guessWord + " ");
}

myGame = new Hangman;
myGame.assignWord();
myGame.initializeGuessWord();
myGame.printGuessWord();



