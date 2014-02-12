// This is one way you could approach this. 
// This is more of a functional approach than an object-oriented one, but it works well in this scenario.
// If you don't like this approach feel free to throw this code out and write your own :)

//Code In Here gets executed once code is ready. This is like window.onload.
$(function(){
  startGame();
});

//array of letters in the game
var letters = ['A', 'A', 'B', 'B', 'C', 'C', 'D', 'D', 'E', 'E' ];
var shuffled = _.shuffle(letters);
//Id of the last card you clicked on.
var lastCardId = '';
var lastCardLetter = '';
var lastCard;
var score = 0;
// Code that runs to set up the game

function startGame(){
    cardBox = $(document.body.querySelector("#game"));
    $('button').click(function(){
      for(var i=0; i < 10; i ++){
        var card = $("<div>").attr("id", i).attr("class", "column");
        cardBox.append(card);
        $('button').attr("style", "display: none;");
      };
    });
    playGame();
}

function playGame() {
    // Code that runs when you click on a card
    cardBox.on( "click", "div", function(){
      console.log("last card Id" + lastCardId);
      var letterId = this.id
      var letter = shuffled[letterId]
      console.log(letter);
      // display letter to viewer
      thisCard = $(this);
      thisCard.html(letter);
      thisCardId = letterId;
      console.log(thisCardId);
      console.log(thisCard);

      // setting all divs.innerHTML to nothing so that the letter doesn't show up
      var divs = document.body.getElementsByClassName("column");
      for(var i=0; i < divs.length; i ++){
        if (divs[i].id != thisCardId && divs[i].className != "column found") {
          divs[i].innerHTML = "";
        };
      };
      console.log(lastCardId + "hi " + thisCardId);

      // check to see if cards are the same by checking letters & mark if they are;
      // also makes sure it's not the same card twice
      if (lastCardLetter === letter && (lastCardId != thisCardId)){
        thisCard.attr("class", "column found");
        lastCard.attr("class", "column found");
        thisCard.html(letter);
        lastCard.html(letter);
        score ++;
        console.log("score is =" + score);
      };

      // set what I just clicked to be 'last card' to compare for next time
      lastCardLetter = letter;
      lastCard = thisCard;
      lastCardId = thisCardId;
      console.log(score === 5);
      if(score === 5){
        for(var i=0; i < divs.length; i ++){
          divs[i].className = "column won";
        };
      };
    });
  }

