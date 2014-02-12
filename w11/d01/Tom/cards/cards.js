window.onload = function(){
  console.log("Loaded");
}

function Card(suit, value) {
  this.suit = suit;
  this.value = value;
}

Card.prototype.toString = function(){
  return this.value + 'of' + this.suit;
}


var card_one = new Card ('club', '3');
var card_two = new Card ('diamond', '10');
var card_three = new Card ('spade', '8');
var card_four = new Card ('club', '7');
var card_five = new Card ('heart', '6');


function Deck(cards) {
  this.cards = [];
}


Deck.prototype.addCardsToDeck = function(card){
  this.cards.push(card);

}

deck_one = new Deck (card_two, card_five);


Deck.prototype.draw = function(card){

}

function Hand(){
  this.cards = [];
}

Hand.prototype.hasCard = function(card){
  this.cards.push(card);
}

hand_one = new Hand();


