require 'active_record'
require 'pry'


ActiveRecord::Base.establish_connection(
	:adapter => "postgresql",
	:host => "localhost",
	:username => "rtaff2012",
	:password => "",
	:database => "sandbox"
	)

class Musical < ActiveRecord::Base

end

binding.pry