var currentPlayer;
var clicks = 0;
var domBoard = [];
var playerBoard = new Array(9);
var cells = document.getElementsByTagName("td");

// Objects
function TicTacToe(){
  domBoard: boardToDom(),
  player1 = new Player("red"),
  player2 = new Player("black")

  // winningSolutions
}

function Player(playerColor){
  // board
  this.color = playerColor,
  this.board = new Array(9)
}

// Object functions 
Player.prototype.markCell = function(item){
  if(item.className === "box_cell"){
    item.className = "box_cell " + currentPlayer.color;
  } else {
    alert( "This space has already been played!");
    clicks--;
  }
}

Player.prototype.markOwnBoard = function (item){
  this.board[domBoard.indexOf(item.id)] = 1;
}

Player.prototype.checkBoard = function(){
var winningSolutions = [
// // Horizontal Wins
(this.board[0] + this.board[1] + this.board[2]),
(this.board[3] + this.board[4] + this.board[5]),
(this.board[6] + this.board[7] + this.board[8]),

// Vertical Wins
(this.board[0] + this.board[3] + this.board[6]),
(this.board[1] + this.board[4] + this.board[7]),
(this.board[2] + this.board[5] + this.board[8]),

// Diagonal Wins
(this.board[0] + this.board[4] + this.board[8]),
(this.board[2] + this.board[2] + this.board[6])];

for(i = 0; i < winningSolutions.length; i++){
  if(winningSolutions[i]===3){
    alert(this.color + " wins");
  } else if (clicks > 9) {
    alert("It's a tie!");
    clicks ++
  }
}
}



function boardToDom(){
  for(i = 0; i < cells.length; i++){
    domBoard[i] = cells[i].id;
  }
}

function eachMove(spot){
  clicks++;
  setCurrentPlayer();
  currentPlayer.markCell(spot);
  currentPlayer.markOwnBoard(spot);
  currentPlayer.checkBoard();
}

function setCurrentPlayer() {
    if(clicks % 2 === 0){
      currentPlayer = player1;
    } else {
      currentPlayer = player2;
    }
}

window.onload = function(){
  var newGame = new TicTacToe;
  newGame;
};