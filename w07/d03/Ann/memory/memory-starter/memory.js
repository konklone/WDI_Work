// This is one way you could approach this. 
// This is more of a functional approach than an object-oriented one, but it works well in this scenario.
// If you don't like this approach feel free to throw this code out and write your own :)

// //Code In Here gets executed once code is ready. This is like window.onload.
$(function() {

  startGame(); 

});

// function Memory() {
//   this.letters = ['A','A', 'B', 'B', 'C', 'C', 'D', 'D', 'E', 'E' ];
//   this.
// }

// var newGame = new Memory ();

// Memory.prototype.initialize = function() {
//   //commonly accessed DOM elements
//   this.
// }


//array of letters in the game
var letters = ['A','A', 'B', 'B', 'C', 'C', 'D', 'D', 'E', 'E' ];

//Id of the last card you clicked on.
var lastCardId = ''; 

// Code that runs to set up the game
function startGame() {
    var cardBox = $("#game"); 
    $('button').click(function(){
        for(number = 0; number < 10; number++){
        var card = $("<div>").attr("id", number).attr("class", "column"); 
        $(cardBox).append(card); 

//look at SLICE method 
        newLettersArray = $.makeArray(letters); 
        randomLetter = newLettersArray[Math.floor(Math.random()*items.length)]; 
        console.log(randomLetter)

        }
    };
  }); 
    


   // div.addEventListener = letters[i]; 

}



//Code that runs when you click on a card
function cardClick() {

}