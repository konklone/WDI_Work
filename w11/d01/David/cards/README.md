#Cards

Quick refresher/practice on creating objects in JavaScript using constructors.

## Part 1
We are going to model a single-player poker game. We can shuffle a deck of cards and draw 5 cards from it to put in our hand. We can then determine what our hand is.

What objects do you think we'll need?

Deck
-- Behavior => Shuffle, Draw
-- Attribute => Cards

Hand
-- Attribute => Cards
-- Behavior => Read

Card
-- Attribute => Suit, Value
-- Behavior => Read/To String