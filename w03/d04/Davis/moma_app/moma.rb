require 'active_record'
require 'pry'

ActiveRecord::Base.establish_connection(
	adapter: "postgresql",
	hostname: "localhost",
	username: "daviskoh",
	password: "",
	database: "moma_db"
)

def create_artist(name, birth_date, nationality)
	artist = Artist.create(name: name, birth_date: birth_date, nationality: nationality)
end

def connect_painting(title, year, image_url, artist_id = nil)
	painting = Painting.create(title: title, year: year, image_url: image_url, artist_id: artist_id)
end

class Artist < ActiveRecord::Base
end

class Painting < ActiveRecord::Base
end

# requirements: 
# 							2 paintings each

# Picasso already added inside psql
# create_artist("Vincent Van Gogh", "Netherlands", "18900330")
# need some photographers & photos for variety
# create_artist("Man Ray", "USA", "18900827")

# connect_painting("Starry Night",1889,"http://uploads2.wikipaintings.org/images/vincent-van-gogh/the-starry-night-1889(1).jpg", Artist.where(name: "Vincent Van Gogh")[0].id)
# connect_painting("Irises", 1889, "http://upload.wikimedia.org/wikipedia/commons/c/c4/Gogh%2C_Vincent_van_-_Irises_-_Google_Art_Project.jpg", Artist.where(name: "Vincent Van Gogh")[0].id)

# connect_painting("Rayograph", 1922, "http://artsearch.nga.gov.au/IMAGES/MED/88113.jpg", Artist.where(name: "Man Ray")[0].id)
# connect_painting("Ridgefield Landscape", 1914, "http://www.terminartors.com/files/artworks/2/0/2/20258/Man_Ray-Ridgefield_Landscape.normal.jpg", Artist.where(name: "Man Ray")[0].id)



# # NOTE: forgot about nationality in schema so just adding them in here
# van = Artist.where(name: "Vincent Van Gogh")[0]
# ray = Artist.where(name: "Man Ray")[0]
# picasso = Artist.where(name: "Pablo Picasso")[0]

# van.nationality = "Netherlands"
# van.save
# ray.nationality = "USA"
# ray.save
# picasso.nationality = "Spain"
# picasso.save
