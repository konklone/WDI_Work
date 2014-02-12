# Hangman

We're going to tackle another lab to continue to solidy JavaScript concepts. This one should be a lot of fun since it is a game you can play once you are done :)

####Key concepts you will need to apply today:

* [Create objects in JavaScript.](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Guide/Working_with_Objects#creating_new_objects)  (Know how to do it using an object initializer AND using a constructor). [Objects Example from class](https://github.com/ga-students/WDI_NYC_Array_Work/blob/master/w06/d02/Instructor/js/objects.js)
* [Create and manipulate HTML Elements and append them to the DOM.](http://christianheilmann.com/stuff/JavaScript-DOM-Cheatsheet.pdf) (Check out Ghoulify and LOTR for help with this)
* Use window.onload to run JavaScript after the DOM has loaded.
* [Write JavaScript that responds to events using listeners.](https://developer.mozilla.org/en-US/docs/Web/API/EventTarget.addEventListener) (ATM & TicTacToe are good examples of this)

## Other tips and things to consider:
* Tackle user stories one at a time
* Play with the working version and inspect it. That should help you see what DOM elements are created where
* How can we design this in an object oriented way / How might we model our objects?
* As you implement each user story, look back at the code you wrote. Is there a way to refactor it to make it DRYer or more clear?

#### Word List Array:

```
['ruby', 'rails', 'javascript', 'array', 'hash', 'underscore', 'sinatra', 'model', 'controller', 'view', 'devise', 'authentication', 'capybara', 'jasmine', 'cache', 'sublime', 'terminal', 'system', 'twitter', 'facebook', 'function', 'google', 'amazon', 'development', 'data', 'design', 'inheritance', 'prototype', 'gist', 'github', 'agile', 'fizzbuzz', 'route', 'gem', 'deployment', 'database'],
```

## User Stories

#### Tonight
* As a user I would like to input a letter
* As a user I would like to see the letters I've guessed already
* As a user I would like to See the number of incorrect guesses I have left

#### Tomorrow
* As a user I would like to get a random word for the game
* As a user I would like to see the number of letters in the word
* As a user I would like see the letters I've guessed correctly filled in
* As a user I would like to be able to give up
* As a user I would like to be able to reset the game
* As a user I would like to be congratulated when I win