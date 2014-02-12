$(function() {
  console.log("loaded")
});

var letters = ['A', 'A', 'B', 'B', 'C', 'C', 'D', 'D', 'E', 'E'];

function appendCards() {
  counter = -1
  for (var i = 0; i < 10; i++) {
  card = $("<div class='column'>").appendTo($('#game'));
  var cardId = $(card).attr('id', counter + 1);
  counter++;
  };
  cardClick(); 
}

function cardClick() {
    var shuffledLetters = _.shuffle(letters);
    $("#0").on('click', function(){
      var cardZero = jQuery("#0").text(shuffledLetters[0]);
      $( "prev + next" ).click( function() {
      $( this ).toggleClass("column");  
      });  
    });
    $("#1").on('click', function(){
    var cardOne = jQuery("#1").text(shuffledLetters[1]);
    });
    $("#2").on('click', function(){
    var cardTwo = jQuery("#2").text(shuffledLetters[2]);
    });
    $("#3").on('click', function(){
    var cardThree = jQuery("#3").text(shuffledLetters[3]);
    });
    $("#4").on('click', function(){
    var cardFour = jQuery("#4").text(shuffledLetters[4]);
    }); 
    $("#5").on('click', function(){
    var cardFive = jQuery("#5").text(shuffledLetters[5]);
    }); 
    $("#6").on('click', function(){
    var cardSix = jQuery("#6").text(shuffledLetters[6]);
    }); 
    $("#7").on('click', function(){
    var cardSeven = jQuery("#7").text(shuffledLetters[7]);
    }); 
    $("#8").on('click', function(){
    var cardEight = jQuery("#8").text(shuffledLetters[8]);
    }); 
    $("#9").on('click', function(){
    var cardNine = jQuery("#9").text(shuffledLetters[9]);
    });
}






