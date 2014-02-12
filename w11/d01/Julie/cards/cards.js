// function Shelter(name){
//   this.name = name;
//   this.animal = [];
//  }

//  Shelter.prototype.animals = function() {
//   console.log(this.animal);

//  }


var deck = new Deck();
var hand = new Hand();


function Card(value, suit){
  this.value = value;
  this.suit = suit;
}


Card.prototype.toString = function() {
  return this.value + " of " + this.suit + "s";
} 


// ### Define a Deck
// - It should start with all the cards that make up a typical deck
//     - values should include: ['Ace', 2, 3, 4, 5, 6, 7, 8, 9, 'Jack', 'Queen', 'King']
//     - suits should include: ['Spade', 'Club', 'Heart', 'Dimond']
// - You should be able to shuffle it
// - You should be able to draw a card from the top of it

function Deck(){
  this.values = ['Ace', 2, 3, 4, 5, 6, 7, 8, 9, 10, 'Jack', 'Queen', 'King'];

  this.suits = ['Spade', 'Club', 'Heart', 'Diamond'];

  this.cards = [];

  this.populate = function() { 
     for (var i = this.suits.length - 1; i >= 0; i--) {
        for (var j = this.values.length - 1; j >= 0; j--) {
         this.cards.push(new Card(this.values[j],this.suits[i]));
      };  
    };
  };
  
  this.populate();
}


 Deck.prototype.shuffle = function() {
    this.cards = _.shuffle(this.cards);
 }

 Deck.prototype.draw = function() {
    return this.cards.splice(0,1);
 }


// ### Define a Hand
// - It can have cards
// - You should be able to add a card to your hand
// - You should be able to announce the cards in your hand

function Hand(){
  this.cards = [];
}

Hand.prototype.pokerHand = function() {
  var i = 0
  do {
   i += 1;
   this.cards.push(deck.draw());
  } while (i < 5);
}

Hand.prototype.myHand = function() {
  return this.cards.join(", ");
}









