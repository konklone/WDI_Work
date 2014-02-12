#Costume.ly #RailsRefresher #CamelCase

AHHH I still don't know what to be for Halloween! Can you build me a Rails app to help me keep track of ideas?

## Part 1 - 1 Model

#### User Stories
* As a user I want to be able to see a list of all the Costumes I've entered so I can try to decide between them
* As a user I want to be able to add a new Costume so I can have more options
* As a user I want to be able to look at an individual Costume to take a closer look
* As a user I want to be able to edit a Costume in case I want to change it's name or image
* As a user I want to be able to delete a Costume if I decide later that I don't like it

#### Getting Started - Remember how to build a Rails app?

The first version of this app has just one model. A `Costume` has:

* name
* image

1. Create a new rails app `rails new costumely -d postgresql`
2. Configure your database.yml file
3. Create a database for your app (using rake db:create or psql)
4. Create a migration file that will help you create your database table
5. Run rake db:migrate to actually create that table
6. Create your Costume model
7. Seed your database with some information using the seed file, run rake db:seed, and test it using the Rails console. (I included a seed file that you can use to save some time)

Tackle the User Stories ONE AT A TIME. It will involve some combination of the following:

1. Create the required route
2. Create your controller and and the actions you need
3. Define the method for a controller action, then create any corresponding views for that action.

Commit after you implement each user story!

## Part 2 - 2 Models

#### User Stories
* As a user I want to be able to add Notes to a Costume to keep track of my thoughts about it
* As a user I want to be able to see all the Notes I've written about a particular Costume

#### Remember how to do associations?

A `Note` has:

* text
* date

What is the relationship between a Costume and a Note?