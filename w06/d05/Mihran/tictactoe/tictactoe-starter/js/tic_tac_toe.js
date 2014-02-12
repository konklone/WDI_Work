var counter = 0;
var player ;

function winningConditions(){
  if ((rows() === true) || (columns() === true) || (diagonals() === true))
    return true; 
  else {return false};
} 

function rows(){
  return ( ( document.getElementById("r0c0").className === document.getElementById("r0c1").className && document.getElementById("r0c1").className === document.getElementById("r0c2").className && document.getElementById("r0c2").className != "box_cell" || (document.getElementById("r1c0").className === document.getElementById("r1c1").className && document.getElementById("r1c1").className === document.getElementById("r1c2").className) && document.getElementById("r1c2").className != "box_cell" || (document.getElementById("r2c0").className === document.getElementById("r2c1").className && document.getElementById("r2c1").className === document.getElementById("r2c2").className) && document.getElementById("r2c2").className != "box_cell" ) )
}

function columns(){
  return ( ( document.getElementById("r0c0").className === document.getElementById("r1c0").className && document.getElementById("r1c0").className === document.getElementById("r2c0").className && document.getElementById("r2c0").className != "box_cell" || (document.getElementById("r0c1").className === document.getElementById("r1c1").className && document.getElementById("r1c1").className === document.getElementById("r2c1").className) && document.getElementById("r2c1").className != "box_cell" || (document.getElementById("r0c2").className === document.getElementById("r1c2").className && document.getElementById("r1c2").className === document.getElementById("r2c2").className) && document.getElementById("r2c2").className != "box_cell" ) ) 
}

function diagonals(){
  return ( (document.getElementById("r0c0").className === document.getElementById("r1c1").className && document.getElementById("r1c1").className === document.getElementById("r2c2").className) || (document.getElementById("r0c2").className === document.getElementById("r1c1").className && document.getElementById("r1c1").className === document.getElementById("r2c0").className) )
} 

function newGame(){
  counter = 0;
  cells = document.querySelectorAll("td");
  _.each(cells, function(cell){
    cell.className = "box_cell";
  })
}

function returnPlayer(){
  if(counter % 2 === 0) {
    player = "red";
  } else {
    player = "black";
  };
  return player;
}

var game = function(){
  cells = document.querySelectorAll("td");

  _.each(cells, function(cell){
    cell.addEventListener("click", function(){
      var player = returnPlayer();
      if (this.className === "box_cell") {
        counter++ ;
        this.className = "box_cell " + player;
      } else {
        return;
      };

      if (counter >= 5 && winningConditions() === true) {
        returnPlayer();
        alert("Game over! " + player + " has won!");
        newGame();
      } 

      if (counter === 9 && winningConditions() === false) {
        alert("It's a tie.");
        newGame();
      }

    });
  });
}
  
window.onload = function(){ 
  game();
}