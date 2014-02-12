# MOMA App

This app will have 2 models: Artists and Paintings. An Artist has many paintings, and a Painting belongs to an Artist.

An Artist has
* name
* nationality
* date of birth

A Painting has
* title
* year
* image_url

###First!
Create a directory called `moma_app` to hold all of your files.

###Part 1 - Database Schemas

Create a new database called `moma_db`. Create the database table schemas to model Artists, Paintings, and their relationships. Save these to a file called `moma.sql`

###Part 2 - Setting up ActiveRecord

Create a Ruby program (like we did with clown cars) that creates an ActiveRecord interface for interacting with the artists & paintings. Save this to a file called `moma.rb`

Populate your database (using ActiveRecord) with at least 3 Artists and 2 Paintings per artist (associated correctly!), including Vincent Van Gogh and Pablo Picasso.

###Part 3 - ActiveRecord Practice

Write the commands that you would enter in pry to do the following:
Save the pry commands to a file called `ar_commands.txt`

1. Create a new Artist (Vincent Van Gogh) and save him to your database

painting = Painting.new(title: "The Starry Night", year: 1889, image_url: "http://upload.wikimedia.org/wikipedia/commons/thumb/e/ea/Van_Gogh_-_Starry_Night_-_Google_Art_Project.jpg/757px-Van_Gogh_-_Starry_Night_-_Google_Art_Project.jpg")

painting.artist_id = vincent.id



3. Return all Artists

Artist.all

4. Return all Paintings

Painting.all

5. Return the artist with an id of 2

Artist.find_by(id: 2)

6. Return the artist with a name of "Vincent Van Gogh"

Artist.find_by(name: "Vincent van Gogh")

7. Return all the artists from "Spain"

Artist.where(nationality: "Spanish")

8. Return the painting with an id of 1

Painting.find_by(id: 1)

9. Return the painting with a name of "Guernica"

Painting.find_by(title: "Guernica")

10. Return the image url for the painting with title "Starry Night"

Painting.find_by(title: "The Starry Night").image_urlight").image_url 

11. Return all the paintings that "Pablo Picasso" painted

artist = Artist.find_by(name: "Pablo Picasso")
artist.paintings

12. Return the image urls for all the paintings that "Pablo Picasso" painted in an array

pablo_array = artist.paintings
pablo_array.each { |painting| painting.image_url }

13. Return the artist of "Guernica"

painting = Painting.find_by(title: "Guernica")
id = painting.artist_id
Artist.find_by(id: id)

14. Change Vincent Van Gogh's nationality to USA

vincent = Artist.find_by(name: "Vincent van Gogh")
vincent.nationality = "USA"

15. Change "Starry Night" to be one of Pablo Picasso's paintings

pablo = Artist.find_by(name: "Pablo Picasso")
painting = Painting.find_by(title: "The Starry Night")
painting.artist_id = pablo.id

### Bonus

* SINATRA APPPPPPP!!!