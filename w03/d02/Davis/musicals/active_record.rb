require 'active_record'
require 'pry'
# ActiveRecord NOT: create table, create schema for table


# within activerecord mod, base/core class
ActiveRecord::Base.establish_connection(
	:adapter => "postgresql",
	:host => "localhost",
	:username => "daviskoh",
	# no password because local connection
	:password => "",
	:database => "sandbox"
)

# convention
	# name of DB in singular
	# inherit from ActiveRecord mod, Base class
# activerecord find table matching plural version of class name
class Musical < ActiveRecord::Base
end

binding.pry

