// Hangman Project
//RETURN A 'HIDDEN' VERSION OF THE SUPPLIED SECRET WORD
function getDisplay(word)
{   
    // Given a string, "word", return a hidden version of it consisting
    // of dashes for the display.
    // REPLACE THIS CODE WITH YOUR getDisplay() METHOD
}

//FIND IF THE LETTER IS IN THE WORD
function isLetterInWord(word,letter){
    // Given the word "word", check if it contains the letter "letter".
    // REPLACE THIS CODE WITH YOUR isLetterInWord() METHOD

}

//UPDATE GAME DISPLAY IF WE'VE BEEN GIVEN A MATCHING LETTER
function getLetter(word,letter,display){
    // This method is called by the Hangman program when your isLetterInWord function
    // above returns true.
    // The parameters passed in are the guessed letter, the secret word,
    // and the current display state of the secret word.
    // This method will return a new display state of the secret word based on the matching letter.
    // REPLACE THIS CODE WITH YOUR getLetter() METHOD

}

/*  
    *RETURN 'finished' if game has finished 
    *RETURN 'lose' if game has lossed 
    *RETURN 'continue' if it is not finished
*/
function isFinished(word, display, left) {
    // This method is called each time you guess a letter. Its job is to
    // determine whether you have have won the game, lost the game,
    // or if the game should continue.
    // The input parameters passed are the secret word (word), the
    // current word display (display), and the number of chances left (left)
    // to reveal the secret word.
    // Return "finished" if you have successfully guessed the word, return
    // "lose" if you did not guess the word within the remaining chances,
    // or return "continue" if there are remaining chances to fully guess the secret word.
    // REPLACE THIS CODE WITH YOUR isFinished() METHOD

}