#Calculator #Backfromthedead #Halloweenweek

##Prompt

Since we know this example pretty much by heart now, we're going to write a test-driven calculator in order to get more comfortable with the RSpec syntax.

####Step 1

Run RSpec. You should see a list of all of the failed and pending tests.

####Step 2

I've written the first few tests for the add and subtract methods. Read through those tests and make them pass.

####Step 3

Write the rest of the tests for the sum, multiply, and factorial methods. Once you have written the tests and can see that they are failing, make them pass.

####Step 4 - Reading and revisiting

1. [What is that "#" that we put before each method for?](http://betterspecs.org/#describe)
2. We had to write "Calculator.new" for every test and my DRY alarm is going off! [Is there a better way?](http://betterspecs.org/#subject)
3. What else can we test for besides equality?
    * [Expectations in RSpec](https://www.relishapp.com/rspec/rspec-expectations/v/2-14/docs)
    * [Built in matchers with Rspec:](https://www.relishapp.com/rspec/rspec-expectations/v/2-14/docs/built-in-matchers)
4. [What is that context thing again and when do we use it?](http://betterspecs.org/#contexts)
5. Revisit the Water Bottle example from yesterday. What questions do you still have?

#### Bonus

Add functionality so that you can drink from your water bottle 5 times instead of just once after you fill it. What would you want to test for?