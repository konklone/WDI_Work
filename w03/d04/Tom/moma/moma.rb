# require database tools and pry
require 'active_record'
require 'pg'
require 'pry'

ActiveRecord::Base.establish_connection(
:adapter => 'postgresql',
:host => 'localhost',
:username => 'thomasbrennan',
:password => '',
:database => 'moma_db'
)

# create the artist class, which will look for the artists table
class Artist < ActiveRecord::Base
 has_many :paintings

end

# create the painting class, which will look for the painters table
class Painting < ActiveRecord::Base
  belongs_to :artist

end

binding.pry