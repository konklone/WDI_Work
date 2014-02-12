# Memory

### To Do

* I want to see 10 cards on the screen when I click the "Start Game" button
* I want each of the 10 cards on the screen to be associated with a letter
* I should be able to click on the card and see the letter corresponding with that card
* I should be able to keep track of which card I clicked most recently
* A card should flip back over if it is not the card I clicked most recently
* When I click two cards in succession that have the same letter, they should turn brown (have the .found class)
* When I win, I want all of the cards to turn green (have the .won class)
* When I click the same card twice in a row, it shouldn't mistakenly think it is a match.

###Tips

* Some jQuery functions you might want to read up about:

  * Selectors([ID](http://api.jquery.com/id-selector/), [Class](http://api.jquery.com/class-selector/), [Tag](http://api.jquery.com/element-selector/))
  * [.on](http://api.jquery.com/on/)
  * [.html](http://api.jquery.com/html/)
  * [.text](http://api.jquery.com/text/)
  * [.attr](http://api.jquery.com/attr/)
  * [.addClass](http://api.jquery.com/addclass/), [.removeClass](http://api.jquery.com/removeclass/), [.toggleClass](http://api.jquery.com/toggleclass/)
  * [.append](http://api.jquery.com/append/)

* One way to make sure that each card is associated with a letter is to assign each card a CSS id with a number, starting with 0. Match that id number to an index in a letters array to associate your card with a letter.

* To attach event listeners to dynamically created elements, use the [jQuery .on function](http://stackoverflow.com/questions/8110934/direct-vs-delegated-jquery-on)

### Bonus:
* Add a game timer. It should stop when the player wins. Hint: Look at [JavaScript Timers](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Timers) and check out setInterval and clearInterval.
* Give the player the option to play a game that is small(10 cards), medium(20 cards) or large(40 cards).

