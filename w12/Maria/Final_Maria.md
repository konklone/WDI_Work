## Maria's Final Project: 
# World Wide Web Against Humanity?

## Proposal

The project will work with a postgres database in Rails and Backbone.js in a BDD/TDD development manner using Rspec and Jasmin.

**WWWAH?** is a web app that you use to play a "Cards Against Humanity" style game with your friends. Here is how it works:

1. You sign into app.
2. You wait until there are enough people signed in to play a game(a game is 1 round).
3. Game begins!
4. You see a black card and 10 white cards
5. You pick which white card goes best with black card.
6. You see list of other players cards and you choose wich one is best.
7. Game lets you know which card combo had the most votes and won.


* **[User Stories](https://www.pivotaltracker.com/s/projects/972462)

* The look will be similar to the actual card game B/W Helvetica font 
* Must be mobile ready.
* Will use AJAX to refresh and send pages to players instantly.
* Would like to employ jazzy card flip animation if possible.
* **[Wireframes](https://wireframe.cc/pro/p/795a536ba)

##Data Model
    *Game 
      *has many Rounds
      *has many Players

    *Round
      *belongs to a Game
      *belongs to Players
      *has many Black_Cards
      *has many White_cards

    *Player 
      *belongs to a Round
      *has 1 Black_Card
      *has many White_Cards

    *Black_Card 
      *has many Players
      *belongs to a Round
  
    *White_Card 
      *has many Players 
      *belongs to a Round

##Schmeeema
      *Game - round, winner
      *Player - name, email
      *Black_Card - text, blank_space_one, blank_space_two
      *White_Card - text


  -------------------------------------------------------------------------------------

## CORE REQUIREMENTS

1. Rails back-end with a Postgres Database
2. Developed with BDD & TDD using Rspec
3. The application is deployed to Heroku
4. The application is well-documented in your github repo

**Note:** You may use any sweet libs or gems that you like, but remember to focus on code quality, good tests and documentation. Those will be the things that potential employers will care about the most.


## TIMELINE
* The project will start on Wednesday, December 11th
* We'll be doing a scrum every day in groups of 3/4

## DELIVERABLES

* **Proposal** (Due Tuesday, December 10th)
   * The description of the project
   * Data Model
   * Wireframes
   * User Stories
* **Final Deliverables** (Due Thursday, December 19th)
  * Link to Github Repo
  * Link to Heroku App

**Note:** Don't let the December 19th date limit you in your vision. After the course ends, you can continue working on and improving your app. Remember, the GA hiring events are not until January.

## Good luck! We are really proud of you!
