//Code In Here gets executed once code is ready. This is like window.onload.
$(function() {
  console.log("ready to play memory - using jquery");
  $( "button, input[type='button']" ).on("click", startGame);
  
});

//array of letters in the game
var ogletters = ['A', 'A', 'B', 'B', 'C', 'C', 'D', 'D', 'E', 'E' ];
var letters = _.shuffle(ogletters);
var guessCounter = 0;

//Id of the last card you clicked on.
var lastCardId = '';

// Code that runs to set up the game
function startGame() {
  var game = $("#game")
  for(var i=0; i<letters.length; i++){
    var mydiv = $(document.createElement("div"));
    mydiv.addClass("column");
    mydiv.attr('id', i);    
    mydiv.on("click", cardClick);
    game.append(mydiv);
  }
  var scorediv = $(document.createElement("div"));
  scorediv.attr('id', "score");
  scorediv.html(guessCounter);
  scorediv.addClass("column");
  var footer = $("#footer");
  footer.append(scorediv);
}

//Code that runs when you click on a card
function cardClick() {
  console.log("you clicked this: " + this.id);

  if (lastCardId === '') {
    lastCardId = this.id;
    console.log(this.id);
    //show card by putting letter in it.
    this.innerHTML = letters[this.id]; //move to jquery
    guessCounter = guessCounter + 1;
    scorediv = $("#score");
    scorediv.html(guessCounter);

  } else if (letters[this.id] === letters[lastCardId]) {
    console.log("CORRECT SIR!");
    //turn this and the one before to found
    me = $(this);
    me.addClass("found");
    me.html(letters[this.id]);
    
    you = $("#"+lastCardId);
    you.addClass("found");
    you.html(letters[lastCardId]);
    lastCardId = '';

    guessCounter = guessCounter + 1;
    scorediv = $("#score");
    scorediv.html(guessCounter);

  } else {
    console.log("you chose unwisely");
    console.log(letters[this.id] + "  " + letters[lastCardId]);
    console.log(this.id + " " + lastCardId);
   

    you = $("#"+lastCardId);
    you.html(" ");

    me = $(this);
    me.html(letters[this.id]);
   
    lastCardId = this.id;
    
    guessCounter = guessCounter + 1;
    scorediv = $("#score");
    scorediv.html(guessCounter);
  }


}


// display the board - eight white squares, each is a div.  each one is assigned letter from the letters array.

// click on a card
    //check this card vs. the last card clicked
    //if a match - turn this card and last card over
    //if not a match 
    //set this card to last card
