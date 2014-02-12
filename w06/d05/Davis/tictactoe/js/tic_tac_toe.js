function TicTacToe() {
  this.r0 = ["aaa", "aaa", "aaa"];
  this.r1 = ["aaa", "aaa", "aaa"];
  this.r2 = ["aaa", "aaa", "aaa"];
  this.allRows = [this.r0, this.r1, this.r2];

  this.currentColor = "black";
}

TicTacToe.prototype.allColumns = function() {
  return _.zip(this.r0, this.r1, this.r2);
}

TicTacToe.prototype.setColor = function() {
  this.currentColor = this.currentColor === "red" ? "black" : "red";
  return this.currentColor;
}

TicTacToe.prototype.makeMove = function(rowNum, columnNum) {
  if ( this.allRows[rowNum][columnNum] === "aaa" ) {
    this.allRows[rowNum][columnNum] = this.setColor();
  } else {
    alert("Spot already taken!");
  }
  
  if ( this.checkWinner() ) {
    alert( "Winner!" );
  } else if ( this.checkTie() ) {
    alert( "A tie!" );
  }
}

TicTacToe.prototype.isCurrentColor = function(item) {
  return item === this.currentColor;
}

TicTacToe.prototype.isEntireRowCurrentColor = function(row) {
  // because "this" inside _ refers to scope defined at function creation
  var game = this;
  return _.every(row, function(e) { return e === game.currentColor; })
}

TicTacToe.prototype.anyThreeInRow = function(allRowsOrColumns) {
  var game = this;
  return _.some(allRowsOrColumns, function(e) {
    return game.isEntireRowCurrentColor(e);
  })
}

TicTacToe.prototype.checkDiagonalCombo = function() {
  var diag1 = [this.r0[0], this.r2[2]];
  var diag2 = [this.r0[2], this.r2[0]];

  if ( this.r1[1] === this.currentColor ) {
    return this.isEntireRowCurrentColor(diag1) || this.isEntireRowCurrentColor(diag2);
  }
}

TicTacToe.prototype.checkWinner = function() {
  return this.anyThreeInRow(this.allRows) || this.anyThreeInRow(this.allColumns()) || this.checkDiagonalCombo();
}

TicTacToe.prototype.checkTie = function() {
  var game = this;
  return _.every(this.allRows, function(row) {
    return _.every(row, function(coordinate) { return coordinate != "aaa"; })
  })
}

TicTacToe.prototype.setDiv = function(id) {
  var div = document.getElementById(id);
  if ( div.style.backgroundColor === "" ) {
    div.style.backgroundColor = this.currentColor;
  }
}

window.onload = function() {
  var tic = new TicTacToe;

  var divs = document.getElementsByClassName("box_cell");
    _.each(divs, function(div) {
      div.addEventListener('click', function() {
      tic.setDiv(div.id);
      tic.makeMove(div.id[1], div.id[3]);
    })
  })
}