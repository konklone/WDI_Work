function Card(value, suit) {
  this.value = value;
  this.suit = suit;
}

Card.prototype.toString = function() {
    return this.value + ' of ' + this.suit;
};

function Deck() {
  this.cards = [];
  var values = ['Ace', 2, 3, 4, 5, 6, 7, 8, 9, 10, 'Jack', 'Queen', 'King'];
  var suits = ['Spades', 'Hearts', 'Clubs', 'Diamonds'];
  for( var i = 0; i < values.length; i++) {
    for( var j = 0; j < suits.length; j++) {
      this.cards.push( new Card(values[i], suits[j]));
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

Hand.prototype.addCard = function(deck) {
  this.cards.push(deck.draw());
}