//Code In Here gets executed once code is ready. This is like window.onload.
$(function() {

  //attach a click function to the inputs to call startGame.
  $('button').on('click', startGame);

  //bind click functions to divs, even ones that don't exist yet.
  $('#game').on('click', 'div.column', cardClick);

});

//array of letters in the game
var letters = ['A', 'A', 'B', 'B', 'C', 'C', 'D', 'D', 'E', 'E' ];

//Id of the last card you clicked on.
var lastCardId = ''

function startGame() {
  //clear the board
  $('#game').html('');

  //clear gameplay variables
  lastCardId = '';

  //shuffle letters
  letters = _.shuffle(letters);

  // create the board
  for (var i = 0; i < letters.length; i++) {
    $('#game').append('<div id="' + i + '" class="column"></div>');
  };

  //call the timer function to start time
  startTime();

}

function cardClick() {
  //get the card's id.
  var currentCardId = $(this).attr('id');

  //parse the cardId and enter it into the letter array to get the card's letter.
  var currentCardLetter = letters[parseInt(currentCardId)];
  var lastCardLetter = letters[parseInt(lastCardId)];

  // Cache selectors for our cards in the DOM
  var $currentCard = $(this);
  var $lastCard = $('#' + lastCardId);

  //change the card's text to display the letter
  $currentCard.text(currentCardLetter);

  // Make sure you didn't click the same card twice first
  if(currentCardId === lastCardId) {
    $lastCard.text('');
    lastCardId = '';
  } 
// If there is a match...
  else if (currentCardLetter === lastCardLetter) {
      //add the found class
      $currentCard.addClass('found');
      $lastCard.addClass('found');

      //remove their ids so we can't click on them anymore.
      $currentCard.attr('id', '');
      $lastCard.attr('id', '');

      //check if we've won
      if($(".found").length === letters.length) {
        $('div.column').addClass('won');
        clearInterval(timerId);
      }
  } 
  // If there's no match
  else {
      $lastCard.text('');
      lastCardId = currentCardId;
  }
}


//Time that increments in the game
var timerId = 0;
var time = 0;

//Start the timer
function startTime() {
  time = 0;
  clearInterval(timerId);
  timerId = setInterval(updateTime, 1000);
}

//Increment the timer and display the new time
function updateTime() {
  time++;
  $('#timer').text('Game time: ' + time);
}