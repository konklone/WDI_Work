var TicTacToe = function(){
  this.board = [0,0,0,0,0,0,0,0,0];
  this.moveCount = 0;
  this.player = 1 //start as x, o is represented by -1  
  this.won = false;
}

TicTacToe.prototype.printBoard = function(){
  console.log("");
  console.log(this.board[0] + " | " + this.board[1]+ " | " +  this.board[2]);
  console.log("---------");
  console.log(this.board[3] + " | " + this.board[4]+ " | " +  this.board[5]);
  console.log("---------");
  console.log(this.board[6] + " | " + this.board[7]+ " | " +  this.board[8]);
  console.log("");
}

TicTacToe.prototype.quickPrint = function(){
  console.log(this.board);
}

TicTacToe.prototype.reset = function(){
  this.board = [0,0,0,0,0,0,0,0,0];
  this.player = 1;
  this.won = false;
  this.moveCount = 0;
}

TicTacToe.prototype.switchPlayer = function(){
  this.player = -this.player;
}

TicTacToe.prototype.checkForWin = function(){

  //check rows
  if((this.board[0]==-this.player) && (this.board[1]==-this.player) && (this.board[2]==-this.player)){
    this.won = true;
  }
  if((this.board[3]==-this.player) && (this.board[4]==-this.player) && (this.board[5]==-this.player)){
    this.won = true;
  }
  if((this.board[6]==-this.player) && (this.board[7]==-this.player) && (this.board[8]==-this.player)){
    this.won = true;
  }

  //check cols
  if((this.board[0]==-this.player) && (this.board[3]==-this.player) && (this.board[6]==-this.player)){
    this.won = true;
  }
  if((this.board[1]==-this.player) && (this.board[4]==-this.player) && (this.board[7]==-this.player)){
    this.won = true;
  }
  if((this.board[2]==-this.player) && (this.board[5]==-this.player) && (this.board[8]==-this.player)){
    this.won = true;
  }

  //check diags
  if((this.board[0]==-this.player) && (this.board[4]==-this.player) && (this.board[8]==-this.player)){
    this.won = true;
  }
  if((this.board[2]==-this.player) && (this.board[4]==-this.player) && (this.board[6]==-this.player)){
    this.won = true;
  }

  return this.won;
}

TicTacToe.prototype.makePlay = function(position){
  if (this.board[position]==0){
    this.board[position]=this.player;
    this.switchPlayer();
    this.moveCount++;
    //this.checkForWin(); for some reason this throws an error: property console of object is not a function.
  }
}

//Given a position, set it back to 0,
//reverse player, subtract one from the moveCount.
//Also nessecary for the recursion.
TicTacToe.prototype.undoPlay = function(position){
  this.board[position] = 0;
  this.switchPlayer();
  this.moveCount--;
  return;
}

TicTacToe.prototype.computerPlay = function() {

  //if 1st move - take upper left corner.
  if(this.moveCount==0) {                               //if 1st move, take upper left corner
    this.makePlay(0)
  } else if ((this.board[4]==0) && (this.moveCount == 2)) {    //if 3nd move in game take the center
      this.makePlay(4);
  } else {
    console.log("looking for win...");
  }  
  

  //1. move for the win.
  //2. block a win.
  //3. create fork (two non blocked lines of 2)
  //4. play two in a row if there is no fork
  //5. play oposite corner
  //6. play corner
  //7. play middle of any sides.

}

//do a deep copy of the game to use in the recursion stack -
//create new object, copy each element into new array,
//copy board, moveCount, player, and won into new game.
//=> pointer to new TicTacToe object.
TicTacToe.prototype.clone = function() {
  var clone = new TicTacToe;
  for(var i = 0; i<this.board.length; i++) {
    clone.board[i]=this.board[i];
    clone.moveCount = this.moveCount;
    clone.player = this.player;
    clone.won = this.won;
  }

  return clone;
}

//display every possible state of the board given a game.
var buildTree = function(game){
  //exit recursion
  allSquaresFilled = _.indexOf(game.board, 0); //if all full, returns -1
  if(allSquaresFilled == -1){
    return
  } else if(game.won == true) {
    console("game is won");
    return
  } else {    
    for(var i=0; i<game.board.length; i++){
      //openSpace = _.indexOf(game.board, 0, i);
      game.makePlay(i);
      game.quickPrint();
      game.switchPlayer();
      newGame = game.clone();
      buildTree(newGame);
      //game.undoPlay(openSpace);
    }
  }
}  

var game = new TicTacToe();

buildTree(game);
// game.makePlay(3);
// game.makePlay(2);
// game.makePlay(6);
// console.log(game.checkForWin());