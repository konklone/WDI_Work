require 'active_record'
require 'pry'

ActiveRecord::Base.establish_connection(
adapter: "postgresql",
host: "localhost",
username: "Paris",
password: "",
database: "moma_db"
  )

# be sure to camel case
class Painting < ActiveRecord::Base
  belongs_to :artist
end

class Artist < ActiveRecord::Base
  has_many :paintings
end


