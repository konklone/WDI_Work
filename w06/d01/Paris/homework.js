window.onload = console.log("Loaded!");

* [Find the exchange rate between dollars and pounds](http://www.bloomberg.com/quote/GBPUSD:CUR)

* Store the exchange rate in a variable

###### ANSWERS TO HOMEWORK START HERE ############

##### Converting dollars to pounds:

exchange_rate = 1.6141


function dollar_to_pound_converter( dollars ){ console.log("$" + dollars + " is " + "£" + (dollars / exchange_rate).toFixed(2) + "."); }

##### Converting pounds to dollars:

exchange_rate = .617

function pound_to_dollar_converter( pounds ){ console.log("£" + pounds + " is " + "$" + (pounds / exchange_rate).toFixed(2) + "."); }

###### END ############

## Part 2 - Intro to JS Reading

Read the first three chapters of [Eloquent JavaScript](http://eloquentjavascript.net/) and work through the examples

1. [Introduction](http://eloquentjavascript.net/chapter1.html)
2. [Basic JavaScript](http://eloquentjavascript.net/chapter2.html)
3. [Functions](http://eloquentjavascript.net/chapter3.html)