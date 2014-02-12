window.onload = function(){
	game();
};

function game(){

	function Card(suit, val){
		this.suit = suit;
		this.val = val;
	}

	function Deck(){
		this.cards = [];
		var suits = ["♥","♦","♣","♠"];
	  var values = [2,3,4,5,6,7,8,9,10,"J","Q","K","A"];
	  for(var s = 0; s < suits.length; s++){
	    for(var i = 0; i < values.length; i++){
	      this.cards[this.cards.length] = new Card(suits[s], values[i]);
	    }
	  }
	}

	function Hand(){
		this.inHand = [];
	} 

var player1 = new Hand();
var deck = new Deck();
var shuffled;

	Deck.prototype.shuffleCards = function(){
		 shuffled = _.shuffle(this.cards);
	}

	Deck.prototype.drawCard = function(){
		var drawn = shuffled.shift();
		player1.inHand.push(drawn);
	}

	Hand.prototype.displayHand = function(){
		var card = []
		 _.each(this.inHand, function(e){
			words = e.suit+ " of "+ e.val;
			card.push(words);
	});

		var a = document.createElement("div");
		var title = document.createElement("h1");
		title.innerHTML = "These be your cards bro!!!";
		a.innerHTML = card.join(" <> ");
		var body = document.querySelector("body");
		body.appendChild(title);
		body.appendChild(a);
	}

	deck.shuffleCards();
	for(var i = 0; i < 5; i++){
		deck.drawCard();
	}
	player1.displayHand();
};