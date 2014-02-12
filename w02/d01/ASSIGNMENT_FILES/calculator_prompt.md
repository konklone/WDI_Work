#Sinatra Calculator

###Objectives:
- Building a simple Sinatra app with GET and POST

###Prompt
- You will be building a calculator (AGAIN?!?). But this time it will work with the internet :)
- You should make git commits as you finish each phase, so you can see the history.

###Specification:
- When they visit the homepage (GET) (`/`), a user should see some text to welcome them to the calculator
- When they visit the `/calculator` page (GET), a user should be able to see all of the calculations that have been done in the past
- A user can see a the third calculation they've done in the past by visiting `/calculator/3` (GET). Same with any other number. If the calculation doesn't exist, they should see text saying that the id wasn't found.



- A user can POST an Addition calculation to `/calculator/add` by providing 2 numbers as parameters.


- Same with `/calculator/subtract`, `/calculator/multiply`, and `/calculator/divide`
- The calculator can add, subtract, multiply and divide.

###Hints
- Use curl to try out your POST
  - `curl -i http://localhost:port`
  - `-X POST,PUT,DELETE,GET`
  - `-F name=jeff`
- When a user POSTs a calculation, they should get back the string saying what the calculation was printed to the terminal like we did in class.

###Bonus
- Translate one line of your MTA app to Sinatra
- When I visit `/mta/ts/us` using a GET, I should see "Your trip length from ts to us is 4 stops." in the browser.
