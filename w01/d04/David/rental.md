#Rental App

###Objectives:
- Practice creating and initializing objects

###Prompt:
You will be creating an app that models the rental process. What types of objects might you have in an app that manages rentals? We are going to have buildings, apartments and people.

#### Phase 1 - Creating the objects

Create each of the classes in its own rb file. Call them `person.rb`, `apartment.rb`, and `building.rb`

A person should have the following attributes:

* name
* age
* gender
* apartment

An apartment should have the following attributes:

* price
* is_occupied
* sqft
* num_beds
* num_baths
* renters (an array of people(person objects))

A building should have the following attributes:

* address
* style
* has_doorman
* is_walkup
* num_floors
* apartments (a hash where the keys are the names of the apartments)

Each class should have the following:

* Appropriate attr_readers, attr_writers, or attr_accessors for each attribute.
* An initialize method
* A to_s method

The apartment class should have a list_renters method that returns a string with all of the renters.

The building class should have a list_apartments method that returns a string with all of the apartments.

__Hint__: Make sure all of your classes work and you can create objects before moving on. You can use pry to help do this.


#### Phase 2 - Creating a main.rb file
* Create a main.rb
* You should include functionality from your other Ruby files
* It should create a new building for you
* It should display a menu of options for the user to choose from:
  * Create a new apartment, getting the appropriate input from the user
    * Make sure to add the apartment to the building it belongs to
  * Create a new person, getting the appropriate input from the user
    * Make sure to add the person to the apartment it belongs to
  * Quit

#### Phase 3 - Listing Options
* Expand your menu options so that you can
  * List all the apartments in the building
  * List all the people in a given apartment