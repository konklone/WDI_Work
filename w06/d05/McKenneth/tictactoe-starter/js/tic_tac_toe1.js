window.onload = function(){
  game();
}
var pieces,board,play;
var count = 0;
var moves = [];

function Piece(){
  this.playable = true;
  this.clicked = false;
};

var game = function(){
  board = document.querySelector("tbody"); 
  pieces = document.querySelectorAll(".box_cell");

  board.addEventListener("click", function(){
    if ( count % 2 === 0 ){
      play = 0;
    }else{
      play = 1;
    }
    count++;
  });
  for(var i = 0; i < pieces.length; i++){
    pieces[i] = new Piece();
    pieces[i].findBy = i;
    pieces[i].addEventListener("click", function(){
      if (this.playable == false && this.clicked == true){
        alert("That has been clicked already.");
        count = Math.abs(count - 1);
      }else{
        this.playable = false;
        this.clicked = true; 
          if(play === 0){
            this.className = "box_cell red";
            moves[this.findBy] = 1;
            checkWinner();
          }else{
            this.className = "box_cell black";
            moves[this.findBy] = 0;
            checkWinner();
          }
      }
    });
  }
};
  
  var checkWinner = function (){
    console.log(count)
    if (count >7){
        alert("Draw, all done. Try again.");
        window.location.reload();
      }
    
    else if (moves[0] + moves[1] + moves[2] === 3){
        alert("Red Wins, game over");
        window.location.reload();
      }
    else if (moves[0] + moves[1] + moves[2] === 0){
        alert("Black Wins, game over");
        window.location.reload();
      }
      
    else if (moves[3] + moves[4] + moves[5] === 3){
        alert("Red Wins, game over");
        window.location.reload();
      }
      else if (moves[3] + moves[4] + moves[5] === 0){
        alert("Black Wins, game over");
        window.location.reload();
      }
      
    else if (moves[6] + moves[7] + moves[8] === 3){
        alert("Red Wins, game over");
        window.location.reload();
      }
    else if (moves[6] + moves[7] + moves[8] === 0){
        alert("Black Wins, game over");
        window.location.reload();
      }
  
    else if (moves[0] + moves[4] + moves[8] === 3){
        alert("Red Wins, game over");
        window.location.reload();
      }
    else if (moves[0] + moves[4] + moves[8] === 0){
        alert("Black Wins, game over");
        window.location.reload();
      }

    else if (moves[2] + moves[4] + moves[6] === 3){
        alert("Red Wins, game over");
        window.location.reload();
      }
    else if (moves[2] + moves[4] + moves[6] === 0){
        alert("Black Wins, game over");
        window.location.reload();
      }
    
    else if (moves[0] + moves[3] + moves[6] === 3){
        alert("Red Wins, game over");
        window.location.reload();
      }
    else if (moves[0] + moves[3] + moves[6] === 0){
        alert("Black Wins, game over");
        window.location.reload();
      }
   
    else if (moves[1] + moves[4] + moves[7] === 3){
        alert("Red Wins, game over");
        window.location.reload();
      }
    else if (moves[1] + moves[4] + moves[7] === 0){
        alert("Black Wins, game over");
        window.location.reload();
      }
    
    else if (moves[2] + moves[5] + moves[8] === 3){
        alert("Red Wins, game over");
        window.location.reload();
      }
    else if (moves[2] + moves[5] + moves[8] === 0){
        alert("Black Wins, game over");
        window.location.reload();
      }
    }
