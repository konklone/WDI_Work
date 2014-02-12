require 'active_record'
require 'pry'

ActiveRecord::Base.establish_connection(
	:adapter => "postgresql", 
	:host => "localhost", 
	:username => "sal", 
	:password => "", 
	:database => "moma_db"
)

class Painting < ActiveRecord::Base
	belongs_to :artists
end


class Artist < ActiveRecord::Base
	has_many :paintings
end

binding.pry