function Board() {
    this.position = [["r0c0","r0c1","r0c2"], ["r1c0","r1c1","r1c2"], ["r2c0","r2c1","r2c2"]];
  }

board = new Board();

var wAlert = alert;
window.winnerAlert = function(player) { //override default alert
    wAlert(player + ' WINS!!!');
    location.reload();
}

var tAlert = alert;
window.tieAlert = function(player) { //override default alert
    tAlert('IT\'S A TIE!!!!');
    location.reload();
}

function playerCounter(){
    if ( counter%2 === 0 ) {
        return "X";
    } else {
        return "O";
    }
  }


function checkWinner(boardArr){
  for (var i=0; i < 3; i++) {
  // check columns for winner
   if ( boardArr[0][i] == boardArr[1][i] && boardArr[1][i] == boardArr[2][i] ) {
    console.log("columns winner checker")
    winnerAlert(playerCounter());
  // check rows for winner
   } else if ( boardArr[i][0] == boardArr[i][1] && boardArr[i][1] == boardArr[i][2] ) {
    console.log("rows winner checker")
    winnerAlert(playerCounter());
   }
  }
  //check diagonals
  if ( (boardArr[0][0] == boardArr[1][1] && boardArr[1][1] == boardArr[2][2]) || (boardArr[2][0] == boardArr[1][1] && boardArr[1][1] == boardArr[0][2]) ) {
    console.log("diagonals winner checker")
    winnerAlert(playerCounter());
  } else {
    return false;
  }
}

 function playerBackground(cellId){
    var cell = document.getElementById(cellId);
    if ( playerCounter() == "X" ) {
      cell.className = cell.className + " FireBrick";
    } else if ( playerCounter() == "O" ) {
      cell.className = cell.className + " goldenrod";
    }
  }

Board.prototype.move = function(cell){
  var row = parseInt(cell.charAt(1));
  var column = parseInt(cell.charAt(3));
  var cellElement = document.getElementById(cell)
  console.log("row: " + row + " " + "column: " + column );
  if ( this.position[row][column] === cell ) {
    this.position[row][column] = playerCounter();
    cellElement.innerHTML = playerCounter();
    playerBackground(cell);
      if (counter > 2) {
      console.log("winner checker:")
      checkWinner(this.position);
      }
    counter +=1;
    console.log("counter: " + counter);
      if (counter === 9 && checkWinner(this.position) === false) {
        tieAlert();
      }
  } 
  else {
    alert("That square is already selected DUMBASS!!!!");
  }
  // check for win
}

var counter = 0;

/****************** LISTENERS **********************/
  window.onload = function(){
    console.log("LOADED");
  var r0c0 = document.getElementById("r0c0");
  r0c0.addEventListener("click", function(){board.move("r0c0")}, false);

  var r0c1 = document.getElementById("r0c1");
  r0c1.addEventListener("click", function(){board.move("r0c1")}, false);

  var r0c2 = document.getElementById("r0c2");
  r0c2.addEventListener("click", function(){board.move("r0c2")}, false);

  var r1c0 = document.getElementById("r1c0");
  r1c0.addEventListener("click", function(){board.move("r1c0")}, false);

  var r1c1 = document.getElementById("r1c1");
  r1c1.addEventListener("click", function(){board.move("r1c1")}, false);

  var r1c2 = document.getElementById("r1c2");
  r1c2.addEventListener("click", function(){board.move("r1c2")}, false);

  var r2c0 = document.getElementById("r2c0");
  r2c0.addEventListener("click", function(){board.move("r2c0")}, false);

  var r2c1 = document.getElementById("r2c1");
  r2c1.addEventListener("click", function(){board.move("r2c1")}, false);

  var r2c2 = document.getElementById("r2c2");
  r2c2.addEventListener("click", function(){board.move("r2c2")}, false);
 
  
  }