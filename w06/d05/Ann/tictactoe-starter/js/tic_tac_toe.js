board = [[0,0],[0,1],[0,2],[1,0],[1,1],[1,2],[2,0],[2,1],[2,2]];

rows = [[board[0],board[1],board[2]], [board[3], board[4], board[5]], [board[6], board[7], board[8]]];
columns = [[board[0],board[3],board[6]], [board[1], board[4], board[7]], [board[2], board[5], board[8]]];
diagonals = [[board[0],board[4],board[8]], [board[2],board[4],board[6]]];

turn = "X"
gameOver = false;
counter = 0

function checkRowforWin(row){
  if(_.reduce(row, function(b, entry){ return (b && entry.indexOf(turn) > -1)}, true)){
  alert( turn + "  has won");
  gameOver = true;
    }
   else return null;
 }
 
 
 function checkIfTied(){
    if( counter == 9 && gameOver == false){
     alert("Oh no, you've tied!!");
   }
   else{
     return null;
   }
 
 
 function checkIfWon(){
 
 for (var i = rows.length - 1; i >= 0; i--) {
     checkRowforWin(rows[i]);
   };
 
 for (var j = columns.length - 1; j >= 0; j--) {
     checkRowforWin(columns[j]);
   };
 
 for (var g = diagonals.length - 1; g >= 0; g--) {
     checkRowforWin(diagonals[g]);
   };
 }
 
  
 function makeMove(index){
 
if(gameOver){
     return false;
  }
    else{
      var gameArray = board[index];
      if (gameArray.length == 2) {
      board[index].push(turn);
      console.log(board); 
    }
      else {
        return false;
       }
    if (turn === "X"){
      turn = "O";
    }
    else {
      turn = "X";
     }   
  }
   counter ++;
  checkIfTied();
  }



 window.onload = function() {
  var elr0c0 = document.getElementById("r0c0");
  var elr0c1 = document.getElementById("r0c1");
  var elr0c2 = document.getElementById("r0c2");
    
 }
  var elr1c0 = document.getElementById("r1c0");
  var elr1c1 = document.getElementById("r1c1");
  var elr1c2 = document.getElementById("r1c2");
  
  var elr2c0 = document.getElementById("r2c0");
  var elr2c1 = document.getElementById("r2c1");
  var elr2c2 = document.getElementById("r2c2");
  
 elr0c0.addEventListener("click", function(){
 makePlay(0,0, currentPlayer);
  
 if(currentPlayer == "x"){
     elr0c0.className += " red"; 
    } else {
     elr0c0.className += " black";
    } 
  
    switchPlayer(currentPlayer);
 
    checkForWin();
   }, false);
