// initialize the global turn variable
var turn = 0;

// Ceaate the Game
function Game() {
  this.board =  [ [document.getElementsByClassName("box_row")[0]], [document.getElementsByClassName("box_row")[1]], [document.getElementsByClassName("box_row")[2]] ];
}

// set the color of the box_cell to red then toggle to black
function setColor() {
  var cells = document.getElementsByClassName("box_cell");
    var toggleColor = function() {
      this.style.backgroundColor = "red";
    }
      _.each(cells, function(cell) {
        cell.addEventListener("click", toggleColor);
      });
}

  // check to see if there is a winner.  Horizontal, vertical and diaganol
function checkWinner() {


  // check to see  if there is a checkTie

}

function checkTie() {


}

window.onload = function(){
  console.log("Loaded!");
  Game();
  setColor();
}