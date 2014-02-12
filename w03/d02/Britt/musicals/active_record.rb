require 'active_record'
require 'pry'

dbconn = ActiveRecord::Base.establish_connection(
	:adapter => "postgresql",
	:host => "localhost",
	:username => "brittlewis",
	:password => "",
	:database => "sandbox"
)

class Musical < ActiveRecord::Base

end

puts Musical.find(1)

binding.pry