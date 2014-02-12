function Game(letters){
  this.randomOrder = _.shuffle(letters);
}

Game.prototype.initialize = function(){
  var randomOrder = this.randomOrder;
  var game = document.getElementById("game");
  for (var i = 0; i<this.randomOrder.length; i++) {
    var column = document.createElement("div");
    column.className = "column";
    game.appendChild(column);
    column.id = i;
    column.addEventListener("click", function(){
      this.innerHTML = randomOrder[this.id];
    })
  }
}

window.onload = function(){
  startButton = document.querySelector("button")
  startButton.addEventListener("click", function(){
    $(game).empty();
    memory = new Game(['A','A','B','B','C','C','D','D', 'E', 'E']);
    memory.initialize();
  });
}


