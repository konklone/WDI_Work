  Cuddl'r
  
  What problem are you trying to solve?
  
  Dating is not just for humans. Dogs want dates, too!

  What will your app do / what features will it have?

  * dog database
  * sign-in form / create new user profile form
  * add a dog to the database
  * find dogs by breed, age range, spayed/neutered (yes/no), favorite dog park and zip code
    * drop down menu 
  * send, accept and/or deny a play date request

  What do you think you can reasonably implement in 1 week?
  * create seed files for dogs with their name, breed, age range, sex, spayed/neutered boolean, zip code
  * create a CRUD app with models for dogs, dates and locations and their associations
    - class Dog has_many :dates
    - class Dates belongs_to :dog
    - class Location has_many :dogs
  * use Google Maps API to locate the dog parks on a map.
  * use NY Open Data .XML file to list all of the dog parks.
  * "prettify" with visuals, HTML and CSS 

  What APIs or other resources might you use / do you plan on using?

  * Google Maps API
  * Open Maps API 
  *Directory of Dog Runs and Off-Leash Areas
  Dog runs in New York City Department of Parks & Recreation properties and properties with off-leash hours for dogs.
  http://www.nycgovparks.org/bigapps/DPR_DogRuns_001.xml