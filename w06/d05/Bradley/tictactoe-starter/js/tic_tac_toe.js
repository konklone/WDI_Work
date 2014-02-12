function Board() {
  this.board = [['', '', ''], ['', '', ''], ['', '', '']]
  this.draw = false;
  this.color = 'red';
  this.marker = 'x';
}

Board.prototype.gameOver = function() {
  if ( this.draw ) {
    alert("Looks like it's a draw! Click 'OK' to start a new game.");
  }
  else {
    var player = "Player 1";
    if (this.turn % 2 === 0){
      player = "Player 2";
    };
    alert(player + " wins! Click 'OK' to start a new game.");
  }
  location.reload();
}

Board.prototype.updateBoard = function(row, column) {
  this.board[row][column] = this.marker;
  this.turn++;
  this.checkWin();
  if (this.color === 'red') {
    this.color = 'black'
    this.marker = 'o'
  }
  else {
    this.color = 'red'
    this.marker = 'x'
  }
}

Board.prototype.updateDisplay = function(color, spot) {
  spot.style.backgroundColor = color;  
}

Board.prototype.checkWin = function() {
  if ( this.turn > 4 ) {

    //draw

    if (this.turn > 9 ) {
      this.draw = true;
      this.gameOver();
    }

    //win by row 

    _.each ( this.board, function(row) {
      if (row[0] != '' && _.uniq( row ).length === 1) {
        this.gameOver();
      };
    }.bind(this));

    //win by column

    for ( var i = 0; i <= 2; i++ ) {
      if ( this.board[0][i] != '' && this.board[0][i] === this.board[1][i] && this.board[1][i] === this.board[2][i] ) {
        this.gameOver();
      };
    };

    //win by diagonal

    if (this.board[0][0] != '' && this.board[0][0] === this.board[1][1] && this.board[1][1] === this.board [2][2]) {
      this.gameOver();
    }
    else if (this.board[0][2] != '' && this.board[0][2] === this.board[1][1] && this.board[1][1] === this.board[2][0]){
      this.gameOver();
    };
  };

      

  }


Board.prototype.initialize = function() {
  this.r0c0 = document.querySelector('#r0c0');
  this.r0c1 = document.querySelector('#r0c1');
  this.r0c2 = document.querySelector('#r0c2');
  this.r1c0 = document.querySelector('#r1c0');
  this.r1c1 = document.querySelector('#r1c1');
  this.r1c2 = document.querySelector('#r1c2');
  this.r2c0 = document.querySelector('#r2c0');
  this.r2c1 = document.querySelector('#r2c1');
  this.r2c2 = document.querySelector('#r2c2');
  this.turn = 1;
}

Board.prototype.attachListeners = function() {

  this.r0c0.addEventListener('click', function() {
    this.updateDisplay(this.color, this.r0c0);
    this.updateBoard(0, 0);
  }.bind(this));

  this.r0c1.addEventListener('click', function() {
    this.updateDisplay(this.color, this.r0c1);
    this.updateBoard(0, 1);
  }.bind(this));

  this.r0c2.addEventListener('click', function() {
    this.updateDisplay(this.color, this.r0c2);
    this.updateBoard(0, 2);
  }.bind(this));

  this.r1c0.addEventListener('click', function() {
    this.updateDisplay(this.color, this.r1c0);
    this.updateBoard(1, 0);
  }.bind(this));

  this.r1c1.addEventListener('click', function() {
    this.updateDisplay(this.color, this.r1c1);
    this.updateBoard(1, 1);
  }.bind(this));

  this.r1c2.addEventListener('click', function() {
    this.updateDisplay(this.color, this.r1c2);
    this.updateBoard(1, 2);
  }.bind(this));

  this.r2c0.addEventListener('click', function() {
    this.updateDisplay(this.color, this.r2c0);
    this.updateBoard(2, 0);
  }.bind(this));

  this.r2c1.addEventListener('click', function() {
    this.updateDisplay(this.color, this.r2c1);
    this.updateBoard(2, 1);
  }.bind(this));

  this.r2c2.addEventListener('click', function() {
    this.updateDisplay(this.color, this.r2c2);
    this.updateBoard(2, 2);
  }.bind(this));
}

window.onload = function() {
  alert('Player 1 is BLACK and Player 2 is RED. Have fun!')
  newGame = new Board();
  newGame.initialize();
  newGame.attachListeners();
}




