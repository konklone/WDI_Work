$(function() {
  memory = new Game;
});

function Game() {
  this.letters = ['A', 'A', 'B', 'B', 'C', 'C', 'D', 'D', 'E', 'E' ];
  $('button').click( function() {
    this.startGame();
  }.bind(this));
}

Game.prototype.startGame = function() {
  this.shuffledLetters = _.shuffle(this.letters);
  this.correct = 0;
  this.flippedCards = [];
  this.addCards(); 
}

Game.prototype.addCards = function() {
  $('#game').html("");
  for (var i = 0; i < 10; i++) {
    var $div = $('<div>').attr('id', i).addClass('column');
    var self = this;
    $div.click( function() {
      self.cardClick(this.id);
    });
    $('#game').append($div);
  }
}

Game.prototype.cardClick = function(id) {
  var $div1 = $('#' + id).html(this.shuffledLetters[id]);
  this.flippedCards.push(id);
  if (this.flippedCards[1] != undefined) {
    var $div2 = $('#' + this.flippedCards[0])
    
    if ($div1.html() != $div2.html()) {
      $div2.html("");
    }
    else {
      $div1.addClass("found");
      $div2.addClass("found");
      this.flippedCards.shift();
      this.correct++ ;
      this.checkForWin();
    }

    this.flippedCards.shift();
  }
}

Game.prototype.checkForWin = function() {
  if (this.correct == 5) {
    $('#game').children().each(function() {
      $(this).html("");
      $(this).css({"background-image": "url(http://media.giphy.com/media/WsKVAem02Efuw/giphy.gif)", "background-size": "cover"});
    });
  }
}



