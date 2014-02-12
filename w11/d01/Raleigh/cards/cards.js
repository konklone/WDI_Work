window.onload = function(){
  console.log("Loaded");
  var cardButton = document.getElementById("card");
  
  cardButton.addEventListener("click", Card);

 };

 function Card(){
  var yourCard = [];
  var card = ['Ace', 2, 3, 4, 5, 6, 7, 8, 9, 10, 'Jack', 'Queen', 'King'];
  var suit = ['Spades', 'Clubs', 'Hearts', 'Diamonds'];
  
  yourCard.push(_.sample(card));
  yourCard.push(_.sample(suite));
  
  document.getElementById("yourCard").innerHTML =yourCard.join(" of ");
 }

function Deck(){
  var deck = []
  var card = ['Ace', 2, 3, 4, 5, 6, 7, 8, 9, 10, 'Jack', 'Queen', 'King'];
  var suit = ['Spades', 'Clubs', 'Hearts', 'Diamonds'];
  
  for(var i = 0; i < card.length; i++){
    for(var s = 0; s < suit.length; s++){
      var theCard = card[i] + " of " + suit[s];
      deck.push(theCard);
    }
  }


  return deck;
 }

Deck.prototype.shuffle = function(){
  // _.shuffle(Deck());
  this = _.shuffle(this);
  return this;
 } 

 
Deck.prototype.drawACard = function(){
  var aCard = _.sample(this.deck);
  return aCard;
 }