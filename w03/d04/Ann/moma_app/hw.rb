# 1. Create a new Artist (Vincent Van Gogh) and save him to your database

vincent = Artist.new(name: "Vincent Van Gogh", nationality:"Netherlands", date_of_birth: "1853-03-30")

# 2. Create a new Painting (Starry Night) and save it to your database

eternity = Painting.new(title:"At Eternity's Gate", year:"1890", image_url:"http://upload.wikimedia.org/wikipedia/commons/thumb/3/38/Vincent_Willem_van_Gogh_002.jpg/467px-Vincent_Willem_van_Gogh_002.jpg")

# 3. Return all Artists

Arist.all 

# 4. Return all Paintings

Painting.all 

# Return the artist with an id of 2

Artist.find_by(id:"2")

# Return the artist with a name of "Vincent Van Gogh"

Artist.find_by(name:"Vincent Van Gogh")

# Return all the artists from "Spain"

Artist.find_by(nationality:"Spain")

# Return the painting with an id of 1

Painting.first

# Return the painting with a name of "Guernica"

Painting.find_by(title:"Guernica")

# Return the image url for the painting with title "Starry Night"

Painting.find_by(title:"Starry Night").image_url

# Return all the paintings that "Pablo Picasso" painted

Painting.where(artist_id:2) 

# Return the image urls for all the paintings that "Pablo Picasso" painted in an array

Painting.where(artist_id:2).pluck(:image_url)

# Return the artist of "Guernica"

artist_id = Painting.find_by(title: "Guernica").artist_id
Artist.find_by(id: Painting.find_by(title:"Guernica").artist_id).name

# Change Vincent Van Gogh's nationality to USA

Artist.find_by(name: "Vincent Van Gogh").nationality 

# Change "Starry Night" to be one of Pablo Picasso's paintings

Artist.find_by(name: "Pablo Picasso").paintings << Painting.find_by(title: "Starry Night")


