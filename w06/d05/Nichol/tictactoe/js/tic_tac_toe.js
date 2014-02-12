//set up all squares as buttons

//add event listeners to all


//set up board
var ticTacToeBoard = [ [] , [], [] ];

// //set up board
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
    win = true;
    winner = ticTacToeBoard[0][2];
  }

  if (win == true) {
    alert("there's a winner! and winner is " + winner);
   }
} 
  
var makePlay = function(x,y,player){
  ticTacToeBoard[x][y] = player;
}

var currentPlayer = "x";

var switchPlayer = function(current){
  if(current=="x"){
    currentPlayer = "o";
  } else {
    currentPlayer = "x";
  }
}



window.onload = function(){
  console.log("loaded and about to play tic tac toe!");

  //create buttons for each square to play
  var elr0c0 = document.getElementById("r0c0");
  var elr0c1 = document.getElementById("r0c1");
  var elr0c2 = document.getElementById("r0c2");
  
  var elr1c0 = document.getElementById("r1c0");
  var elr1c1 = document.getElementById("r1c1");
  var elr1c2 = document.getElementById("r1c2");

  var elr2c0 = document.getElementById("r2c0");
  var elr2c1 = document.getElementById("r2c1");
  var elr2c2 = document.getElementById("r2c2");

  elr0c0.addEventListener("click", function(){
   makePlay(0,0, currentPlayer);
   switchPlayer(currentPlayer);
   checkForWin();
  }, false);

  elr0c1.addEventListener("click", function(){
   makePlay(0,1, currentPlayer);

   if(currentPlayer == "x"){
      elr0c1.className += " red"; 
     } else {
      elr0c1.className += " black";
     }

   switchPlayer(currentPlayer);
   checkForWin();
  
  }, false);

  elr0c2.addEventListener("click", function(){
   makePlay(0,2, currentPlayer);
   if(currentPlayer == "x"){
      elr0c2.className += " red"; 
     } else {
      elr0c2.className += " black";
     }

   switchPlayer(currentPlayer);
   checkForWin();

  }, false);


  //row 1
    elr1c0.addEventListener("click", function(){
   makePlay(1,0, currentPlayer);
   if(currentPlayer == "x"){
      elr1c0.className += " red"; 
     } else {
      elr1c0.className += " black";
     }

   switchPlayer(currentPlayer);
   checkForWin();
   
  }, false);

  elr1c1.addEventListener("click", function(){
   makePlay(1,1, currentPlayer);
   if(currentPlayer == "x"){
      elr1c1.className += " red"; 
     } else {
      elr1c1.className += " black";
     }

   switchPlayer(currentPlayer);
   checkForWin();
   
  }, false);

  elr1c2.addEventListener("click", function(){
   makePlay(1,2, currentPlayer);
   if(currentPlayer == "x"){
      elr1c2.className += " red"; 
     } else {
      elr1c2.className += " black";
     }

   switchPlayer(currentPlayer);
   checkForWin();
   
  }, false);

  //row 2

   elr2c0.addEventListener("click", function(){
   makePlay(2,0, currentPlayer);
   if(currentPlayer == "x"){
      elr2c0.className += " red"; 
     } else {
      elr2c0.className += " black";
     }

   switchPlayer(currentPlayer);
   checkForWin();
   
  }, false);

  elr2c1.addEventListener("click", function(){
   makePlay(2,1, currentPlayer);
   if(currentPlayer == "x"){
      elr2c1.className += " red"; 
     } else {
      elr2c1.className += " black";
     }

   switchPlayer(currentPlayer);
   checkForWin();
   
  }, false);

  elr2c2.addEventListener("click", function(){
   makePlay(2,2, currentPlayer);
   if(currentPlayer == "x"){
      elr2c2.className += " red"; 
     } else {
      elr2c2.className += " black";
     }

   switchPlayer(currentPlayer);
   checkForWin();
   
  }, false);


}
