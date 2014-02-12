function Board () {
  this.game = [[0,0,0],
              [0,0,0],
              [0,0,0]];
}


Board.prototype.makePlay = function(row,column,player) {
  
};

Board.prototype.checkWin = function() {
  
  if (
       (1 == this.game[0][0]) && (1 == this.game[1][0]) && (1 == this.game[2][0]) ||
       (1 == this.game[0][1]) && (1 == this.game[1][1]) && (1 == this.game[2][1]) ||
       (1 == this.game[0][2]) && (1 == this.game[1][2]) && (1 == this.game[2][2])
      ) //vertical wins player 1
  {
    console.log("1 WINS VERTICAL");
  } else if (
       (2 == this.game[0][0]) && (2 == this.game[1][0]) && (2 == this.game[2][0]) ||
       (2 == this.game[0][1]) && (2 == this.game[1][1]) && (2 == this.game[2][1]) ||
       (2 == this.game[0][2]) && (2 == this.game[1][2]) && (2 == this.game[2][2])
      ) //vertical wins by player 2
  {
    console.log("2 WINS VERTICAL!");
  
  } else if ( 
            (1 == this.game[0][0]) && (1 == this.game[0][1]) && (1 == this.game[0][2])||
            (1 == this.game[1][0]) && (1 == this.game[1][1]) && (1 == this.game[1][2]) ||
           (1 == this.game[2][0]) && (1 == this.game[2][1]) && (1 == this.game[2][2])
       )
  {

   }else if (
          (2 == this.game[0][0]) && (2 == this.game[0][1]) && (2 == this.game[0][2])||
          (2 == this.game[1][0]) && (2 == this.game[1][1]) && (2 == this.game[1][2]) ||
         (2 == this.game[2][0])  && (2 == this.game[2][1]) && (2 == this.game[2][2]) 
      )
  {
  }
    
            
 };

var board;
var player1 = 1
var player2 = 2

window.onload = function(){
  board = new Board();
};