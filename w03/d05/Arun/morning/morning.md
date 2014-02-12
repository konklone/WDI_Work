#Tripp'd Up

## Prompt

We are going to create an app using Sinatra & ActiveRecord to keep a leaderboard of the number of times Jeff, PJ or Peter trips (usually over power cords) in the classroom.

Our app has one model: a person. A person has the following attributes:

* name
* num_trips (an integer counting the number of trips)

## Part 1 - Database set up

* Plan your schema & create your database table in your `sandbox` database. Put this in a file called `trips.sql`

## Part 2 - ActiveRecord
* In a ruby file called `server.rb`, set up your ActiveRecord connection and set up your person class using ActiveRecord
* Using pry, create 3 new person objects (jeff, pj, peter) and save them to your database. Initialize each one with 0 trips.


## Part 3 - Sinatra

Expand on your `server.rb` file to make it a Sinatra App. Your Sinatra app should respond to the follow requests:

* GET '/' (Displays all 3 people and the number of trips for each. People should be ordered by most trips to least trips. Next to each person there is an "HAHA Tripped!" button which increments the number of trips for that person)
* POST '/:person' (Increments the number of trips for the person, saves it to the database, and redirects to '/')

## Bonus
* Style it to make it look nice!
