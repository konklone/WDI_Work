require "active_record"
require "pry"

ActiveRecord::Base.logger = Logger.new('./sql.log')


ActiveRecord::Base.establish_connection(
	:adapter => "postgresql",
	:host => "localhost",
	:username => "rtaff2012",
	:password => "",
	:database => "moma_db"
	)

class Artist < ActiveRecord::Base
has_many :paintings

end

class Painting < ActiveRecord::Base	
	belongs_to :artist

end

binding.pry