var maximum_cards = 5
var myCard = [];


window.onload = function(){
  var button = document.getElementById('draw');
  button.addEventListener("click", Shuffle);
}

function Shuffle(){
  var myCard = [];
  var cards = ['Ace', 2, 3, 4, 5, 6, 7, 8, 9, 10, 'Jack', 'Queen', 'King'];
  var suite = ['Spade', 'Club', 'Heart', 'Diamond'];
  for (var i = 0; i < cards.length; i++){
    for(var j = 0; suite.length; j++){
      this.myCard.push(cards[i]), suits[j]);
    }
  } 
  
  console.log(myCard.join(""));

  var result = document.getElementById('result');
  result.innerHTML = myCard.join("");
}

