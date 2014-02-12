#Cards

Quick refresher/practice on creating objects in JavaScript using constructors.

## Part 1
We are going to model a single-player poker game. We can shuffle a deck of cards and draw 5 cards from it to put in our hand. We can then determine what our hand is.

What objects do you think we'll need?

## Part 2

### Define a Card
- It has a value
- It has a suit
- You should be able to find out what card it is by calling the `toString` method
    
### Define a Deck
- It should start with all the cards that make up a typical deck
    - values should include: ['Ace', 2, 3, 4, 5, 6, 7, 8, 9, 'Jack', 'Queen', 'King']
    - suits should include: ['Spade', 'Club', 'Heart', 'Dimond']
- You should be able to shuffle it
- You should be able to draw a card from the top of it

### Define a Hand
- It can have cards
- You should be able to add a card to your hand
- You should be able to announce the cards in your hand

### Bonus - Poker
- Add functionality to your Hand so you can build a 5 card poker hand
- Add functionality so you can figure out what category of poker hand you have:
  - http://en.wikipedia.org/wiki/List_of_poker_hands
