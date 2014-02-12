//**** This is not really my code, I got really lost and David 
//showed me wht he did, he is going to take some time tonight to go through it 
//with me in detail, so I can understand it.
//I am having most trouble with creating a plan of action andget tangled up before I start


// This is one way you could approach this. 
// This is more of a functional approach than an object-oriented one, but it works well in this scenario.
// If you don't like this approach feel free to throw this code out and write your own :)

//Code In Here gets executed once code is ready. This is like window.onload.
$(function() {
$("button").one('click', function(){
    startGame();
});


//array of letters in the game
var letters = ['A', 'A', 'B', 'B', 'C', 'C', 'D', 'D', 'E', 'E' ];
var randomizedLetters = _.shuffle(letters);
//Id of the last card you clicked on.
var lastCardId = '';

// Code that runs to set up the game
function startGame() {
  for (var i = 0; i < letters.length; i++) {
    var div = $('<div>');
    div.attr('id', i);
    div.addClass("column");
    div.appendTo($("div#game"));
  }
  cardClick();
}
}

//Code that runs when you click on a card
function cardClick() {

_.each($('div#game').children(), function(element){
    // Listener to show letter when card is clicked
    $(element).on('click', function(){
    var divId = $(this).attr('id');
    $(this).text(randomizedLetters[divId]);
    console.log("last card id: " + lastCardId);
    console.log("current click id: " + divId);
    if ($('div#' + divId).attr('class').indexOf("found") === -1) {
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


