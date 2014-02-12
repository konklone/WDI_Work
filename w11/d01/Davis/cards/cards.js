function Card(suit, value) {
  this.suit = suit;
  this.val = value;
}
Card.prototype.read = function() {
  // if 11,12,13,14 change: "jack", "queen", "king", "ace"
  newSuit = if (this.suit === 11) {
    return "jack";
  } else if (this.suit === 12) {
    return "queen";
  } else if (this.suit === 13) {
    return "king";
  } else if (this.suit === 14) {
    return "ace";
  } else {
    return this.suit();
  }

  console.log(this.val + " of " + newSuit);
}

var suits = ["spades", "hearts", "clubs", "diamonds"];
var values = [2,3,4,5,6,7,8,9,10,11,12,13,14];

function Deck() {
  this.cards = [];

  for(var i=0; i<values.length; i++) {
    for(var j=0; j<suits.length; j++) {
      // console.log(values[i] + suits[j]);
      this.cards.push( new Card(suits[j], values[i]) );
    }
  }
}
Deck.prototype.shuffle = function() {
  this.cards = _.shuffle(this.cards);
}
Deck.prototype.draw = function(hand) {
  hand.addCard(this.cards.shift());
}

function Hand() {
  this.cards = [];
}
Hand.prototype.checkFlush = function() {
  // iterate through each suit & check if hand is all 1
  for(var i=0; i < suits.length; i++) {
    var flush = _.every(this.cards, function(card) {
      return card.suit === suits[i];
    })

    if (flush) { console.log("FLUSH"); }
  }
}
Hand.prototype.checkStraight = function() {
  // sort hand, iterate through each hand card, check if increment order
  // check for non number cards
  var sorted = this.cards.sort();
  for(var i=0; i<sorted.length; i++) {

  }
}
Hand.prototype.checkHand = function() {
  this.checkFlush();
  

}
Hand.prototype.read = function() {
  for(var i=0; i < this.cards.length; i++) {
    console.log(this.cards[i].read());
  }
}
Hand.prototype.addCard = function(card) {
  if (this.cards.length < 5) {
    this.cards.push(card);
  } else {
    console.log("5 cards: Hand already full");
  }
}


deck = new Deck;
hand = new Hand;

var flushCards = [];
_.each(values, function(value) {
  flushCards.push( new Card(suits[0], value) );
})

for(var i=0; i<5; i++) {
  hand.cards.push( flushCards.pop() );
}