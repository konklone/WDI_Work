function Card(value, suit){
  //suit, value = attributes
  //read/tostring = behavior
  // this.drawValue = deck.sample.valueCard.to_s;
  // this.drawSuit = deck.sample.suitCard;
  // card = "Card: #{drawValue} + #{drawSuit}";
  this.value = value;
  this.suit = suit;
}

// Card.prototype.toString = function(){
//   return this.value + 'of' + this.suit;
// }

// function Deck(){
//   //2 methods shuffle and draw= behavior
//   //52 cards = attribute
//   this.valueCard = ['Ace', 2, 3, 4, 5, 6, 7, 8, 9, 10 'Jack', 'Queen', 'King'];
//   this.suitCard = ['Spade', 'Club', 'Heart', 'Diamond'];
  
//   //this.shuffle = shuffle;


// }

// function Hand(){
//   //read= behavior
//   //cards= attribute
//   //loop to create hand?
//   this.cardHand = {};

// }

//  Deck.prototype.draw = function(drawValue, drawSuit) {
//    "Card: #{drawValue} + #{drawSuit}";
//  };