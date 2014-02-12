//set up all squares as buttons

//add event listeners to all


//set up board
var ticTacToeBoard = [ [] , [], [] ];

// //set up pretend board
ticTacToeBoard[0][0] = '1';
ticTacToeBoard[0][1] = '2';
ticTacToeBoard[0][2] = '3';

ticTacToeBoard[1][0] = '4';
ticTacToeBoard[1][1] = '5';
ticTacToeBoard[1][2] = '6';


ticTacToeBoard[2][0] = "7";
ticTacToeBoard[2][1] = "8";
ticTacToeBoard[2][2] = "9";

// //check for win
// //check columns


var win = false;
var winner = "e";



var checkForWin = function(){  
  //check rows
  var row = 0;
  for(var col = 0; col < ticTacToeBoard.length; col++){
    if((ticTacToeBoard[row][col]==ticTacToeBoard[row+1][col]) && (ticTacToeBoard[row][col]==ticTacToeBoard[row+2][col])){
      win = true;
      winner = ticTacToeBoard[row][col];
    }
  }

  //check cols
  var col = 0;
    for(var row = 0; row < ticTacToeBoard.length; row++){
      if((ticTacToeBoard[row][col] == ticTacToeBoard[row][col+1]) && (ticTacToeBoard[row][col] == ticTacToeBoard[row][col+2])){
        win = true;
        winner = ticTacToeBoard[row][col];
      }
    }

  //check diag
  if((ticTacToeBoard[0][0] == ticTacToeBoard [1][1]) && (ticTacToeBoard[0][0] == ticTacToeBoard [2][2])){
    win = true;
    winner = ticTacToeBoard[0][0];

  }

  //check other diag
  if((ticTacToeBoard[0][2]==ticTacToeBoard[1][1]) && (ticTacToeBoard[0][2]==ticTacToeBoard[2][0])){
  }
}
  
var makePlay = function(x,y,player){
  ticTacToeBoard[x][y] = player;
};

