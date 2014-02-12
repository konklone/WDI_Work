 function Player(name) {
    this.name = name;
    this.position = [];
  }

  var player0 = new Player("player1");
  var player1 = new Player("player2");

  playerArr = [player0, player1]

  function playerCounter(){
    if ( counter%2 === 0 ) {
        return playerArr[0];
    } else {
        return playerArr[1];
    }
  }


  Player.prototype.move = function(move){
    if ( this.player.position.indexOf(move) != -1 ||  ) {

    }
    else {
    this.position.push(move);
    console.log("counter after increment: " + counter)
    var counter = 0;
    }
  }

  


  /****************** LISTENERS **********************/
  window.onload = function(){

  var r0c0 = document.getElementById("r0c0");
  r0c0.addEventListener("click", function(){playerCounter().move("r0c0")}, false);

  var r0c1 = document.getElementById("r0c1");
  r0c1.addEventListener("click", function(){playerCounter().move("r0c1")}, false);

  var r0c2 = document.getElementById("r0c2");
  r0c2.addEventListener("click", function(){playerCounter().move("r0c2")}, false);

  var r1c0 = document.getElementById("r1c0");
  r1c0.addEventListener("click", function(){playerCounter().move("r1c0")}, false);

  var r1c1 = document.getElementById("r1c1");
  r1c1.addEventListener("click", function(){playerCounter().move("r1c1")}, false);

  var r1c2 = document.getElementById("r1c2");
  r1c2.addEventListener("click", function(){playerCounter().move("r1c2")}, false);

  var r2c0 = document.getElementById("r2c0");
  r2c0.addEventListener("click", function(){playerCounter().move("r2c0")}, false);

  var r2c1 = document.getElementById("r2c1");
  r2c1.addEventListener("click", function(){playerCounter().move("r2c1")}, false);

  var r2c2 = document.getElementById("r2c2");
  r2c2.addEventListener("click", function(){playerCounter().move("r2c2")}, false);
 
  
  }