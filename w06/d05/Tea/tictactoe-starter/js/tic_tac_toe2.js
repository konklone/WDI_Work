
window.onload = function(){
  alert("HELLO");
  game();
};

var clicks = 0;
var player;



function returnPlayer (clicks, item) {
  var cells = document.querySelectorAll("box_cell");
    if(clicks % 2 === 0){
      item.className = "box_cell red";
    } else {
      item.className = "box_cell black";
    };
    return player;
};


var game = function(){
  var board = document.querySelector("tbody");
  board.onclick = function(event) {
    clicks++;
  };

};

