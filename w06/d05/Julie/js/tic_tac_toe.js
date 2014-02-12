//here is my board and the broken down ways a win can be made

board = [[0,0],[0,1],[0,2],[1,0],[1,1],[1,2],[2,0],[2,1],[2,2]];

rows = [[board[0],board[1],board[2]], [board[3], board[4], board[5]], [board[6], board[7], board[8]]];
columns = [[board[0],board[3],board[6]], [board[1], board[4], board[7]], [board[2], board[5], board[8]]];
diagonals = [[board[0],board[4],board[8]], [board[2],board[4],board[6]]];

// 0 1 2
// 3 4 5
// 6 7 8


//Game initializes with the first player being X
turn = "X"
isGameWon = false;
turnCount = 0

//this checks a rows, columns, or diagonals array if there are 3 consective subarrays that contain a player "tag"
function checkRowforWin(row){
//if the indexOf("X") is -1, then it is not contained in the sub-array
  if (row[0].indexOf("X") > -1 == true && row[1].indexOf("X") > -1 == true && row[2].indexOf("X") > -1 == true){
    alert("Player 1 has won");
    isGameWon = true;
  }
  else if (row[0].indexOf("O") > -1 == true && row[1].indexOf("O") > -1 == true && row[2].indexOf("O") > -1 == true){
    alert("Player 2 has won");
    isGameWon = true;
  }
  else {
    return null;
  }

}


function checkIfTied(){
  if( turnCount == 9 && isGameWon == false){
    alert("It's a tie");
  }
  else{
    return null;
  }
}

//checks each way a win could be obtained
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

if(isGameWon == true){
  return true;
}
else{
  return false;
}
}


function makeMove(index){

   if(isGameWon){
    return false;
   }
   else{
    //if the subarray only has a length of 2, push the turn character into the subarray
    var subArray = board[index];
    if (subArray.length == 2) {
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
  turnCount ++;
  return true;
}



function addEvent(elem, index){

elem.addEventListener("click", function(){
  if(checkIfWon() == false){
    if (makeMove(index)){
     checkIfWon();
     if(turn == "X"){
      elem.setAttribute("style","background-color: red;"); 
     } else {
      elem.setAttribute("style","background-color: black;");
     }
     checkIfTied();
   }
 }
 })

}



window.onload = function() {


 elr0c0 = document.getElementById("r0c0");
 elr0c1 = document.getElementById("r0c1");
 elr0c2 = document.getElementById("r0c2");
  
 elr1c0 = document.getElementById("r1c0");
 elr1c1 = document.getElementById("r1c1");
 elr1c2 = document.getElementById("r1c2");

 elr2c0 = document.getElementById("r2c0");
 elr2c1 = document.getElementById("r2c1");
 elr2c2 = document.getElementById("r2c2");


addEvent(elr0c0,0);
addEvent(elr0c1,1);
addEvent(elr0c2,2);

addEvent(elr1c0,3);
addEvent(elr1c1,4);
addEvent(elr1c2,5);

addEvent(elr2c0,6);
addEvent(elr2c1,7);
addEvent(elr2c2,8);

}


