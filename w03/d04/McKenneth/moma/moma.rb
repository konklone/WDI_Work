require 'active_record'
require 'pry'

ActiveRecord::Base.establish_connection(
adapter: "postgresql",
host: "localhost",
username: "macadocious",
password: "",
database: "moma_db"
)

class Painting < ActiveRecord::Base
  belongs_to :artist
  validates :title, :year, :image_url, presence: true
end

class Artist < ActiveRecord::Base
  has_many :paintings
  validates :name, :nationality, :dob, presence: true
end


binding.pry

# #Artists
# van_gogh = Artist.new(name: 'Vincent Van Gogh', nationality: 'Dutch', dob: 'March 30 1853')
# van_gogh.save

# picasso = Artist.new(name: 'Pablo Picasso', nationality: 'Spanish', dob: 'October 25 1881')
# picasso.save
# goya = Artist.new(name: 'Francisco Goya', nationality: 'Spanish', dob: 'March 30 1746')
# goya.save

# #Van Gogh Paintings
# starry_night = Painting.new(title: 'Starry Night', year: 1889, image_url: 'http://uploads2.wikipaintings.org/images/vincent-van-gogh/the-starry-night-1889(1).jpg')
# self_portrait = Painting.new(title: 'Self Portrait', year: 1889, image_url: 'http://www.evangogh.org/images/paintings/self-portrait.jpg')

# starry_night.save
# self_portrait.save
# # Picasso Paintings
# guernica = Painting.new(title: 'Guernica', year: 1937, image_url: 'http://www.jkrweb.com/art/images/guernica.jpg')
# guitarist = Painting.new(title: 'The Old Guitarist', year: 1903, image_url: 'http://www.pablopicasso.org/images/paintings/the-old-guitarist.jpg')

# guernica.save
# guitarist.save

# #Goya paintings
# sleep = Painting.new(title: 'The Sleep of Reason Produces Monsters', year: 1799, image_url: 'http://davidmendez213.files.wordpress.com/2010/10/amico_boston_103831191.jpg')
# yard = Painting.new(title: 'Courtyard with Lunatic', year: 1794, image_url: 'http://upload.wikimedia.org/wikipedia/commons/8/87/Courtyard_with_Lunatics_by_Goya_1794.jpg')

# sleep.save
# yard.save
