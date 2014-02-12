// This is one way you could approach this. 
// This is more of a functional approach than an object-oriented one, but it works well in this scenario.
// If you don't like this approach feel free to throw this code out and write your own :)

//Code In Here gets executed once code is ready. This is like window.onload.
$(function() {
  $("button").on('click', function(){
    startGame();
  });
});

//array of letters in the game
var letters = ['A', 'A', 'B', 'B', 'C', 'C', 'D', 'D', 'E', 'E' ];
var mixedUp = _.shuffle(letters);
//Id of the last card you clicked on.
var lastCardId = '';

// Code that runs to set up the game
function startGame() {
  var arrayOfTiles = [];
   
  for(var i = 0; i < letters.length; i++){
  arrayOfTiles.push($( "<div>" ).attr( "id", i ).addClass("column").appendTo($("#game")));
  }
  cardClick();
}

//Code that runs when you click on a card
function cardClick() {

  function checkWin(){
    if ($(".column"+".found").length === 10 ){
        $(".column"+".found").removeClass("found").addClass("won");
        $("body").addClass("won");
        setTimeout(function() {alert("Do You want to play again?");window.location.reload(startGame());}, 7000);
        
      }
    }
      
  for(var i = 0; i< letters.length; i++){
    $(".column")[i].addEventListener("click", function(){


      if(this.className === "column" && this.id === lastCardId){
        this.innerText = "";
        lastCardId = this.id;
      }
      else if(mixedUp[lastCardId] === mixedUp[this.id]){
       this.innerText = mixedUp[this.id]
        $("div#"+lastCardId).addClass("found");
        $("div#"+this.id).addClass("found");
        lastCardId = '';
        checkWin();
      }
      else if(this.className === "column" && this.id === lastCardId){
        this.innerText = "";
        lastCardId = this.id;
      }
      else if(lastCardId === ''){
      this.innerText = mixedUp[this.id];
      lastCardId = this.id;
      checkWin();
      }
      else if(mixedUp[lastCardId] != mixedUp[this.id]){
        this.innerText = mixedUp[this.id];
        var reset = document.getElementById(lastCardId);
        reset.innerText = "";
        lastCardId = this.id;
        checkWin();
      }
    })
  }
}