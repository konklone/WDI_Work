require "active_record"
require "pry"
require "sinatra"
require "sinatra/reloader"

ActiveRecord::Base.establish_connection(
	:adapter => "postgresql",
	:host => "localhost",
	:username => "rtaff2012",
	:password => "",
	:database => "sandbox"
	)

#puts all the clowns to the terminal using ActiveRecord
class Person < ActiveRecord::Base

end

binding.pry