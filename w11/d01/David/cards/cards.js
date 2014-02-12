var suits = ["clubs", "spades", "hearts", "diamonds"];
var card_values = ["Ace", "2", "3", "4", "5", "6", "7", "8", "9", "10", "Jack", "Queen", "King"];

function Card(suit, val) {
  this.suit = suit;
  this.val = val;
}

function Deck() {
  this.cards = [];
  var self = this;
  _.each(suits, function(suit) { 
    _.each(card_values, function(card_value) {
      self.cards.push(new Card(suit, card_value));
    });
  });
}

Deck.prototype.shuffle = function(){
  var self = this;
  this.cards = _.shuffle(self.cards);
}

Deck.prototype.draw = function(){
  var self = this;
  return _.shift(self.cards);
  // shift is destructive so removes the card from the array
  // removes the first item from the array
}

function Hand() {
  this.cards = [];
}

Hand.prototype.takeCard = function(deck) {
  this.cards.push(deck.draw());
  // var index = deck.cards.indexOf(card);
  // deck.cards.splice(index, 1);
}

Hand.prototype.announce = function() {
  var self = this;
  _.each(this.cards, function(card) {
    console.log("You are holding a " + card.val + " of " + card.suit);
  })
}

deck = new Deck();
hand = new Hand();


