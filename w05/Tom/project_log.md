Scrum (10/23)

What I worked on yesterday
* I worked on my routes.  They were rerouted from games/questions to user/games.  This added the user to the game, which is how my model is et up with a foreign key
* I also worked on my form to display the category and question with a field for the user to supply an answer


What will i work on today/Obstacles

* I will continue to work on the form.  I am having issues updating the form.
* I need to do the following:
  - route the form properly, it is using a put action and is losing the user id when I hit the check answer button
  - compare the user answer to the correct answer
  - update the score, add 10 points if correct, add 0 is incorrect
  - Display the correct answer and the upste score
  - The game should finish after 5 questions
  - It should then show the user the final score
  - route back to the page to play again or log out

  **** Major Issue - understanding the relationship between the controller and model *******


Scrum (10/22)

What did I work on yesterday

* I worked a bit furthe with the API to pull more questions from the database
* I reworked my models and simplified the relationships a bit
* I then adjusted my paths to fit the new model
* I believe I now have flow working properly in the document


What will I work on today?

* Highest level priority is the concept of "games"  I want a game to only be associated with one user
  - I will not be saving a users answers, just comparing them to the correct answer and assigning a score
  - a game should save the user who played it and the score of the game
  - what will questions save to the DB?????
* I will also work on the views, displaying a question and then once submitted, moving on to the next question

Problems:

* Letting it get to complicated!!
* it feels like a need a form for the games that contains a form for the questions
  - once a question is submitted it moves to the next question
  - once the specificed # of questions have been played the game ends

If I can get through this logic today, I will be in good shape.


Original User Stories:

  1. I am a new user, I would like to be able to sign up an start playing trivia
  2. I am a user and I would like to be able to choose a genre so I can play a game I feel I have a better chance of doing well at
  3. I am a user and i would like to see all of my results to see if I am improving over time
  4. I am a user and I would like to see a leader board to compare myself to other players
  5. I am a user and i would like the questions to have a countdown clock so that there are very few ties in the games.  I would earn more points if I get the question answered quickly















