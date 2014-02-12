var hand = [];
var suit = ["A", 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K"];
var weight = {
  "A": 1,
}

function BlackJack(){
  suit = ["A", 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K"],
  weight = {
  "A": 1,
  },
  deck = [];
}

// function threeTimes(event){
// for(i = 0; i < 4; i++){
//   event();
// }

function nTimes(num, action){
  for (var i = 0; i < num; i++){
    action();
  }
}

function fillDeck(){
  for(var i = 0; i < suit.length; i++){
    deck.push(suit[i]);
  };
}

window.onload(){
  var game = new BlackJack;
  game;
  nTimes(4, fillDeck());
}