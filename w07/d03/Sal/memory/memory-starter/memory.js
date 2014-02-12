// This is one way you could approach this. 
// This is more of a functional approach than an object-oriented one, but it works well in this scenario.
// If you don't like this approach feel free to throw this code out and write your own :)

//Code In Here gets executed once code is ready. This is like window.onload.
$(function() {
  $('button').on('click', function() {
    startGame();
  });
});

//array of letters in the game
var letters = ['A', 'A', 'B', 'B', 'C', 'C', 'D', 'D', 'E', 'E' ];

//Id of the last card you clicked on.
var lastCardId = ''

// Code that runs to set up the game
function startGame() {
 shuffled = _.shuffle(letters)
 lastCard = shuffled[9]
 for(i = 0; i < letters.length; i++) {
    var tile = $('<div></div>')
    $(tile).addClass('column')
    $(tile).attr('id', i)
    $('#content').append(tile)
  }
}

//Code that runs when you click on a card
function cardClick() {
  $('button').on('click', function() {
    
  });
}