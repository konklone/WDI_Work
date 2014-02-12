require 'pry'
require 'active_record'

ActiveRecord::Base.establish_connection(
  adapter: "postgresql",
  host: "localhost",
  username: "MihranAbrahamian",
  password: "",
  database: "moma_db"
)


class Painting < ActiveRecord::Base
  # belongs_to :artist
end

class Artist < ActiveRecord::Base
  # has_many :paintings
end



vincent = Artist.new(name:"Vincent Van Gogh", nationality:"Netherlands", date_of_birth:"1853-03-30")
vincent.save
pablo = Artist.new(name:"Pablo Picasso", nationality:"Spain",date_of_birth:"1881-10-15")
pablo.save
bush = Artist.new(name:"George W Bush", nationality:"USA", date_of_birth:"1946-07-06")
bush.save

guernica = Painting.new(title:"Guernica", year:"1937", image_url:"http://upload.wikimedia.org/wikipedia/en/7/74/PicassoGuernica.jpg", artist_id: 2)
guernica.save

nude_woman = Painting.new(title:"Nude Woman with Necklace", year:"1968", image_url:"http://www.tate.org.uk/art/images/work/T/T03/T03670_10.jpg", artist_id: 2)
nude_woman.save

starry = Painting.new(title:"Starry Night" , year:"1889", image_url:"http://en.wikipedia.org/wiki/File:Van_Gogh_-_Starry_Night_-_Google_Art_Project.jpg", artist_id: 1)
starry.save

eternity = Painting.new(title:"At Eternity's Gate", year:"1890", image_url:"http://upload.wikimedia.org/wikipedia/commons/thumb/3/38/Vincent_Willem_van_Gogh_002.jpg/467px-Vincent_Willem_van_Gogh_002.jpg", artist_id: 1)
eternity.save

dog_wh = Painting.new(title:"Sad Dog at the White House", year: "2005", image_url:"http://static3.businessinsider.com/image/514e2cf76bb3f7c748000000-630-/edfa57d0b899016f47849c7c8d8a3b22_400x294.jpg", artist_id: 3)
dog_wh.save

shower = Painting.new(title:"Self Reflection in the Shower", year: "2003", image_url: "http://www.newrepublic.com/sites/default/files/u18507/bush_shower.jpg", artist_id: 3)
shower.save

binding.pry





