function Card(val, suit) {
  this.val = val;
  this.suit = suit;
}

Card.prototype.toString = function() {
  return "Your card is the " + this.number + " of " + this.suit;
}

function Deck() {
  this.cards = [];
  var suits = ['Spades', 'Clubs', 'Hearts', 'Diamonds'];
  var values = ["2", "3", "4", "5", "6", "7", "8", "9", "10", "Jack", "Queen", "King", "Ace"];
  for(var s = 0; s < suits.length; s++){
    for(var i = 0; i < values.length; i++){
      this.cards.push(new Card(values[i], suits[s]));
    }
  }
}

Deck.prototype.shuffle = function() {
  this.cards = _.shuffle(this.cards);
}

Deck.prototype.draw = function() {
  return this.cards.shift();
}

function Hand() {
  this.cards = [];
}

Hand.prototype.addCard = function() {
  this.cards.push(deck.draw());
}

deck = new Deck()








