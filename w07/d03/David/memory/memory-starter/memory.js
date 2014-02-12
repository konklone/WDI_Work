// This is one way you could approach this. 
// This is more of a functional approach than an object-oriented one, but it works well in this scenario.
// If you don't like this approach feel free to throw this code out and write your own :)

//Code In Here gets executed once code is ready. This is like window.onload.
$(function() {
  $("button").one('click', function(){
    startGame();
  });
});

//array of letters in the game
var letters = ['A', 'A', 'B', 'B', 'C', 'C', 'D', 'D', 'E', 'E' ];
var randomizedLetters = _.shuffle(letters);

//Id of the last card you clicked on.
var lastCardId = '';


function startGame() { 
  // make global to use in click function
  for (var i = 0; i < letters.length; i++) {
    $('<div>').attr('id', i).addClass("column").appendTo($("div#game"));
    // div.attr('id', i);
    // div.addClass("column");
    // div.appendTo($("div#game"));
  }
  cardClick();
}

//Code that runs when you click on a card
function cardClick() {
  _.each($('div#game').children(), function(element){
    // Listener to show letter when card is clicked
    $(element).on('click', function(){
    var divId = $(this).attr('id');
    $(this).text(randomizedLetters[divId]);
    console.log("I'm click event: " + divId);
    console.log("last card id: " + lastCardId);
    console.log("current click id: " + divId);
    if ($('div#' + divId).attr('class').indexOf("found") === -1) {
      // at the beginning of game, or after a match -- you're not going to get a match because either you just matched or just started the game
      if ( lastCardId === '' ){
        lastCardId = divId;
      }
      // not match
      else if(randomizedLetters[divId] !== randomizedLetters[lastCardId] ) {
        $('div#' + lastCardId ).empty();
        lastCardId = divId;
        // match
      } else {
        $('#' + divId + ', #' + lastCardId).addClass("found");
        lastCardId = '';
      }
    }
    if ($('div.found').length === letters.length ) {
      $('div.found').addClass("money");
      $('div.found').empty();
    };
    });
  });

}



