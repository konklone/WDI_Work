$(function() {
  console.log("loaded.");
  // attach listener to button that runs startGame
  $("button").on("click", function(){
    startGame();
  });
});

// array of letters in the game
var letters = ['A', 'A', 'B', 'B', 'C', 'C', 'D', 'D', 'E', 'E' ];

// Id of the last card you clicked on.
var lastCardId = "";

// Code that runs to set up the game
function startGame() {
  console.log("doin stuff, yo");

  // clear previous game
  $("div#board").empty();

  window.randomBoard = _.shuffle(letters);

  for ( var i = 0; i < randomBoard.length; i++ ) {
    // attach listeners to each letter that run cardClick
    // append all letters to div#board
    $("<div>").attr({"id": i, "class": "column"})
              .on("click", function(){
                cardClick( $(this) );
              })
              .appendTo( $("div#board") );
  };
}

// Code that runs when you click on a card
function cardClick(cardObj) {
  var thisCardId = cardObj.attr("id");
  var thisLetter = randomBoard[thisCardId];
  var lastLetter = randomBoard[lastCardId];
  console.log(lastCardId);
  console.log(thisCardId);
  console.log(thisLetter);
  console.log(lastLetter);
  cardObj.html = thisLetter;

  if (lastCardId === thisCardId) {
    return undefined;
  };

  if (randomBoard[lastCardId] === thisLetter) {
    $("div").filter(":contains(" + thisLetter + ")").addClass("found");
  } else {
    $("div").filter("id:contains(" + lastCardId +")").html = "";
  };

  if ( $("div.column").filter("class:contains(found)").length === 10 ){
    $(".column").addClass("won");
  } else {
    lastCardId = thisCardId;
  }
}