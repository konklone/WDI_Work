# Morning Exercise

The purpose is focus on your problem solving using Ruby. As such, I am much more interested in your thought process and pseudo-code than anything you actually implement.

## Pig Latin Translater

Plan FIRST. You'll have 15 mins to plan your app before you can open your computer.

Implement a Ruby method `translate` that takes a word (string) as an argument and returns its pig latin equivalent. Description of the rules from Wikipedia:

For words that begin with consonant sounds, the initial consonant or consonant cluster is moved to the end of the word, and "ay" is added, as in the following examples:

* "happy" → "appyhay"
* "duck" → "uckday"
* "glove" → "oveglay"

For words that begin with vowel sounds or silent letter, "way" is added at the end of the word. Examples are

* "egg" → "eggway"
* "inbox" → "inboxway"
* "eight" → "eightway"

### BONUS 1

The letter 'y' can play the role of either consonant or vowel, depending on its location

* "yellow" → "ellowyay"
* "rhythm" → "ythmrhay"

### BONUS 2

How do you deal with words starting with "qu" or "squ" ?

* "queen" → "eenquay"
* "squeal" → "ealsquay"