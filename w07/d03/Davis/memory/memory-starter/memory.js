// 10 divs: 5 top, 5 bottom upon click start button
  // randomly assign each a letter
// when click on div, render letter
  // assign text to letter of associate value in shuffled using id as index
// on next click
  // unrender all other divs
  // render current div
  // when value of clicked div != rendered div
    // unrender previous div
  // else,
    // render previous div

$(function() {
  $("button").click(function(){
    startGame();
  });
});

var letters = ['A', 'A', 'B', 'B', 'C', 'C', 'D', 'D', 'E', 'E' ];
var shuffledLetters = _.shuffle(letters);

//Id of the last card you clicked on.
var lastCardId = null;

function startGame() {
  clearAllDivs();

  // create 10 divs & render
  for(var i=0; i<shuffledLetters.length; i++) {
    // setup divs w/ unique id
    var div = $("<div class='column' id=" + i + "></div>");

    // attach click event
    addClickEvent(div);

    $("div#game").append(div);
  }
}

function clearAllDivs() {
  $("div#game").empty();
}

function clearPreviousDiv() {
  var previousDiv = $("div#" + lastCardId);
  previousDiv.text("");
}

function addClickEvent(div) {
  $(div).click(function() {
    console.log(this);
    cardClick($(this));
  });
}

function lettersMatch(jObjDiv) {
  var previousLetter = shuffledLetters[lastCardId];
  var currentLetterId = jObjDiv.attr("id");
  var currentLetter = shuffledLetters[currentLetterId];

  if ( previousLetter != currentLetter ) {
    if ( !$("div#" + lastCardId).hasClass("found") ) {
      clearPreviousDiv();
    }
  } else {
    jObjDiv.toggleClass("found");
    $("div#" + lastCardId).toggleClass("found");
  }
}

function cardClick(jObjDiv) {
  lettersMatch(jObjDiv);

  var index = jObjDiv.attr("id");
  jObjDiv.text(shuffledLetters[index]);
  
  // change the last card clicked on once finished
  lastCardId = index;
  checkWinner();
}

function checkWinner() {
  var allLetterDivs = $("div.column");

  var win = _.all(allLetterDivs, function(div) {
    return $(div).hasClass("found");
  })

  if (win) {
    _.each(allLetterDivs, function(div) {
      $(div).toggleClass("won");  
    })
  }
}