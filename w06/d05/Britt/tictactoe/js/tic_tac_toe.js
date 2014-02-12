function attachListener(tile){
  tile.addEventListener('click', function(){
    if (play.counter % 2 === 0){
      var player = play.player1;
    } else {
      var player = play.player2;
    }
    player.makeMove(tile);
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

  var twodboard = [[board[0], board[1], board[2]], [board[3],board[4],board[5]], [board[6], board[7],board[8]]];

  return twodboard;
}

function winnerChecker(){
  // check horizontals, check verticals, check diagonals
  for (var i = 0; i < 3; i++){
    if (play.board[0][i] === play.board[1][i] && play.board[1][i] === play.board[2][i]){
      return true;
    } else if (play.board[i][0] === play.board[i][1] && play.board[i][1] === play.board[i][2]){
      return true;
    } else if (play.board[0][0] === play.board[1][1] && play.board[1][1] === play.board[2][2]){
      return true;
    } else if (play.board[2][0] === play.board[1][1] && play.board[1][1] === play.board[2][2]){
      return true;
    };
  };

}

function Player(name, color){
  // bonus feature : prompt for list of color choices
  this.name = name;
  this.color = color;
}

Player.prototype.makeMove = function(tileClicked) {
  var nonos = ["Das cute... NO.", "Don't embarrass yourself.", "Nice try, SUCKA"]
  
  if (tileClicked.getAttribute("class") === "clicked") {
    return alert(_.sample(nonos));
  } else {
    tileClicked.setAttribute("style", "background-color: " + this.color + ";");
    tileClicked.setAttribute("class", "clicked");
    play.counter++;

    var tileId = tileClicked.getAttribute("id") // "r1c2"
    var helperArray = tileId.split(""); // ["r", "1", "c", "2"]

    var firstIndex = helperArray[1] // "1"
    var secondIndex = helperArray[3] // "2"

    play.board[firstIndex][secondIndex] = this.name;

    if (winnerChecker() === true){
      alert(this.name + " (" + this.color +") won! Refresh to play again.")
    }

    if (play.counter === 9 && (!winnerChecker())){
      // this will eventually be a confirm popup
      var response = alert("Looks like you tied. Sorry! Refresh to try again.");
      // if (response){
      //   window.play = new Game();
      // };
    };
  };
}

function Game(){
  this.player1 = new Player("Player 1", "red");
  this.player2 = new Player("Player 2", "blue");
  this.board = createBoard();
  this.counter = 0;
}

window.onload = function(){
  window.play = new Game();
}
