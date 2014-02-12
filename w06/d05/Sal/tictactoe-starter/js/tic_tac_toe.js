function Board() {
  this.position = [[],[],[]];
}

board = new Board();


function checkWin() {
    if((board.position[0][0] === "X" && board.position[0][1] === "X" && board.position[0][2] === "X") || (board.position[0][0] === "O" && board.position[0][1] === "O" && board.position[0][2] === "O")) {
    alert(playerCounter() + " Wins!" );  
  } else if((board.position[1][0] === "X" && board.position[1][1] === "X" && board.position[1][2] === "X") || (board.position[1][0] === "O" && board.position[1][1] === "O" && board.position[1][2] === "O")) {
    alert(playerCounter() + " Wins!" );  
  } else if((board.position[2][0] === "X" && board.position[2][1] === "X" && board.position[2][2] === "X") || (board.position[2][0] === "O" && board.position[2][1] === "O" && board.position[2][2] === "O")) {
    alert(playerCounter() + " Wins!" );   
  } else if((board.position[0][0] === "X" && board.position[1][0] === "X" && board.position[2][0] === "X") || (board.position[0][0] === "O" && board.position[1][0] === "O" && board.position[2][0] === "O")) {
    alert(playerCounter() + " Wins!" );  
  } else if((board.position[0][1] === "X" && board.position[1][1] === "X" && board.position[2][1] === "X") || (board.position[0][1] === "O" && board.position[1][1] === "O" && board.position[2][1] === "O")) {
    alert(playerCounter() + " Wins!" );  
  } else if((board.position[2][0] === "X" && board.position[2][1] === "X" && board.position[2][2] === "X") || (board.position[2][0] === "O" && board.position[2][1] === "O" && board.position[2][2] === "O")) {
    alert(playerCounter() + " Wins!" );   
  } else if((board.position[0][2] === "X" && board.position[1][2] === "X" && board.position[2][2] === "X") || (board.position[0][2] === "O" && board.position[1][2] === "O" && board.position[2][2] === "O")) {
    alert(playerCounter() + " Wins!" );  
  } else if((board.position[0][0] === "X" && board.position[1][1] === "X" && board.position[2][2] === "X") || (board.position[0][0] === "O" && board.position[1][1] === "O" && board.position[2][2] === "O")) {
    alert(playerCounter() + " Wins!" );  
  } else if((board.position[0][2] === "X" && board.position[1][1] === "X" && board.position[2][0] === "X") || (board.position[0][2] === "O" && board.position[1][1] === "O" && board.position[2][0] === "O")) {
    alert(playerCounter() + " Wins!" );  
  }
}

Board.prototype.move = function(position) {
  var row = parseInt(position.charAt(1));
  var column = parseInt(position.charAt(3));
  console.log("row: " + row + " " + "column: " + column);
    if(this.position[row][column] == undefined) {
    this.position[row][column] = playerCounter();
    counter +=1;
  }
    if(counter >= 5) {
       checkWin();
  }
}

function playerCounter() {
  if (counter%2 === 0) {
    return "X";
  } else {
    return "O";
  }
}

var counter = 0; 

window.onload = function() {

var r0c0 = document.getElementById("r0c0");
r0c0.addEventListener("click", function(){board.move("r0c0")}, false);  
r0c0.onclick = function() {
  if((counter % 2 === 0) || (counter === 0)) {
  this.style.backgroundColor = 'green';
  } else {
  this.style.backgroundColor = 'black';
  } 
};

var r0c1 = document.getElementById("r0c1");
r0c1.addEventListener("click", function(){board.move("r0c1")}, false);
r0c1.onclick = function() {
  if((counter % 2 === 0) || (counter === 0)) {
  this.style.backgroundColor = 'green';
  } else {
  this.style.backgroundColor = 'black';
  } 
};

var r0c2 = document.getElementById("r0c2");
r0c2.addEventListener("click", function(){board.move("r0c2")}, false);
r0c2.onclick = function() {
  if((counter % 2 === 0) || (counter === 0)) {
  this.style.backgroundColor = 'green';
  } else {
  this.style.backgroundColor = 'black';
  } 
};

var r1c0 = document.getElementById("r1c0");
r1c0.addEventListener("click", function(){board.move("r1c0")}, false);
r1c0.onclick = function() {
  if((counter % 2 === 0) || (counter === 0)) {
  this.style.backgroundColor = 'green';
  } else {
  this.style.backgroundColor = 'black';
  } 
};

var r1c1 = document.getElementById("r1c1");
r1c1.addEventListener("click", function(){board.move("r1c1")}, false);
r1c1.onclick = function() {
  if((counter % 2 === 0) || (counter === 0)) {
  this.style.backgroundColor = 'green';
  } else {
  this.style.backgroundColor = 'black';
  } 
};

var r1c2 = document.getElementById("r1c2");
r1c2.addEventListener("click", function(){board.move("r1c2")}, false);
r1c2.onclick = function() {
  if((counter % 2 === 0) || (counter === 0)) {
  this.style.backgroundColor = 'green';
  } else {
  this.style.backgroundColor = 'black';
  } 
};

var r2c0 = document.getElementById("r2c0");
r2c0.addEventListener("click", function(){board.move("r2c0")}, false);
r2c0.onclick = function() {
  if((counter % 2 === 0) || (counter === 0)) {
  this.style.backgroundColor = 'green';
  } else {
  this.style.backgroundColor = 'black';
  } 
};

var r2c1 = document.getElementById("r2c1");
r2c1.addEventListener("click", function(){board.move("r2c1")}, false);
r2c1.onclick = function() {
  if((counter % 2 === 0) || (counter === 0)) {
  this.style.backgroundColor = 'green';
  } else {
  this.style.backgroundColor = 'black';
  } 
};

var r2c2 = document.getElementById("r2c2");
r2c2.addEventListener("click", function(){board.move("r2c2")}, false);
r2c2.onclick = function() {
  if((counter % 2 === 0) || (counter === 0)) {
  this.style.backgroundColor = 'green';
  } else {
  this.style.backgroundColor = 'black';
  } 
};
};