
// Quick refresher/practice on creating objects in JavaScript using constructors.

// ## Part 1
// We are going to model a single-player poker game. We can shuffle a deck of cards and draw 5 cards from it to put in our hand. We can then determine what our hand is.

// What objects do you think we'll need?

// var game. holds everything below. 
// var deck = [52 cards]
  // behavior: shuffle, draw
    // attribute: cards
// var card = [a selection from a bunch of stuff]
  // attr: suit
  // attr: value
  // behavior: read/tostring
// var hand. attach cards to this element
  // behavior: read
  // attribute: cards


function Deck(cards) {
  this.cards = [];
};

var deck = new Deck('cards');

Deck.prototype.getCards = function {
  var n1=1;
  var n2=52;
  var cards=[];
  while(n1 < n2); 
  this.cards.push(n1++);
};

Deck.prototype.shuffle = function {
  var shuffledCards = _.shuffle(this.cards);
};

Deck.prototype.selectHand = function {
  hand = [];
  hand << _.sample(this.cards, 5);
};

Deck.prototype.draw = function {
  draw = _.sample(this.cards);
}

// card 

function Card(suit, value) {
  this.suit = suit;
  this.value = value;
};

// reader
Card.prototype.toString = function() {
  return this.value + of + this.suit;
}

Card.prototype.selectValuenSuit = function {
  this.suit = _.sample(['Spade', 'Club', 'Heart', 'Dimond']);
  this.value = _.sample(['Ace', 2, 3, 4, 5, 6, 7, 8, 9, 'Jack', 'Queen', 'King']);
};

function displayHand(hand) {
  var game = document.createElement('section');
  game.id = "game";
  for (var i = 0; i < hand.length; i ++) {
    var articleTage = document.createElement('article');
    var h1Tag = document.createElement('h1');
    h1Tag.textContent = hand[i];
    articleTag.appendChild(h1Tag);
    game.appendChild(articleTag);
  }
  document.body.appendChild(game);
}

window.onload = function() {  
  displayHand(hand);
};

// haven't connected my card object with the deck object, even though I've created a card attribute for the deck. 
// need help with display/reader functions, appending to the DOM, calling in window.onload. Creating initialize methods might help? 
// Yay, life. 







