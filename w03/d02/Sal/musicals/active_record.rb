require 'active_record'
require 'pry'

ActiveRecord::Base.establish_connection(
	:adapter => "postgresql", 
	:host => "localhost",
	:username => "sal",
	:password => "", 
	:database => "sandbox"
)

class Musical < ActiveRecord::Base
end


puts Musical.find(1)

binding.pry