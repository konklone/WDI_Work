function Card(value, suit){
  this.value = value;
  this.suit = suit;
}

Card.prototype.toString = function(){
  return this.value + " " + "of" + " " + this.suit + "s" ;
};

function Deck(){
  this.cards = [];
  var values = ['Ace', 2, 3, 4, 5, 6, 7, 8, 9, 10, 'Jack', 'Queen', 'King']
  var suits = ['Spade', 'Club', 'Heart', 'Diamond'];
  for (var i=0;i<values.length;i++) {
    for (var j=0; j<suits.length; j++) {
      this.cards.push(new Card(values[i], suits[j]));
    }
  }
}

Deck.prototype.shuffle = function(){
  this.cards = _.shuffle(this.cards);
    // console.log(this.cards[0].toString());
}

Deck.prototype.draw = function(){
  return this.cards[0];    
}

function Hand(){
  this.cards = [];
}

Hand.prototype.announce = function(){ 
  _.each(this.cards, function(card){
    console.log(card.toString());
  });
}

Hand.prototype.takeCard = function(deck){
  this.cards.push(deck.draw());
  deck.cards.shift();
}

var theDeck = new Deck();
var mihransHand = new Hand();

theDeck.shuffle();

for (i=0; i<5; i++) {
  mihransHand.takeCard(theDeck);
}

mihransHand.announce();

