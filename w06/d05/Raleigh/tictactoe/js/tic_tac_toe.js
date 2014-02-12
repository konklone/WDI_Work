function Player(color){
  // bonus feature : prompt for list of color choices
  this.color = color;
}
 
Player.prototype.makeMove = function(tileClicked) {
  // // make sure tile isn't already clicked; if already clicked, alert STOP THAT
  if (tileClicked.getAttribute("class") === "clicked") {
    return alert("That spot is already taken... move again.");
  } else {
    tileClicked.setAttribute("style", "background-color: " + this.color + ";");
    tileClicked.setAttribute("class", "clicked");
    play.counter++;
  };
}
 
function attachListener(tile){
  tile.addEventListener('click', function(){
    if(play.counter % 2 === 0){
      play.player1.makeMove(tile);
    } else {
      play.player2.makeMove(tile);
    }
  });
};
 
function createBoard(){
  var board = [];
 
  var tiles = document.querySelectorAll("td");
 
  _.each(tiles, function(tile){
    board.push(tile.getAttribute("id"));
  });
 
  _.each(tiles, function(tile){
    attachListener(tile);
  });
 
  return board;
}
 
function Game() {
  this.player1 = new Player("red");
  this.player2 = new Player("blue");
  this.board = createBoard();
  this.counter = 0;
}
 
window.onload = function(){
  window.play = new Game();
}