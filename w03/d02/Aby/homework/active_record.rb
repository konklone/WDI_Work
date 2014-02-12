require 'active_record'


ActiveRecord::Base.establish_connection(
	:adapter => "postgresql",
	:host => "localhost",
	:username => "ezpawn",
	:password => "1234",
	:database => "insta"
	)

