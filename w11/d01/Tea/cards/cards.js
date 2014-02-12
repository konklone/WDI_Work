

function Card(suit, value) {
  this.suit = suit;
  this.value = value;
}

Card.prototype.toString = function() {
  console.log(this.suit + " " + this.value);
}

function Deck() {
  this.cards = [];
  var suits = ["♥","♦","♣","♠"];
  var values = [2,3,4,5,6,7,8,9,10,"J","Q","K","A"];
  // make card objects out of suits and values
  for(var s = 0; s < suits.length; s++){
    for(var i = 0; i < values.length; i++){
      this.cards.push(new Card(suits[s], values[i]));
    }
  }
}

function Hand() {
  this.cards = [];
}

var deck = new Deck();
var hand = new Hand();

Deck.prototype.shuffle = function() {
  this.cards = _.shuffle(this.cards);
}

Deck.prototype.draw = function(hand) {
  hand.cards.push(this.cards[0]);
  this.cards.splice(0, 1);
}

Hand.prototype.announce = function() {
  var publicHand = []
  var i = this.cards.length;
  for(var i = 0 ; i < 5 ; i++) {
    publicHand.push(this.cards[i]);
  }
  console.log(publicHand);
}

function Poker(){
  deck.shuffle();
  this.pokerHand = new Hand();
  for(var i = 0 ; i < 5 ; i++) {
    deck.draw(this.pokerHand);
  }
}