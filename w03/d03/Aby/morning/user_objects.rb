require 'faker'
require_relative 'user'

user_hash = Hash.new

for x in 1..50 do 
	id = x
	name = Faker::Name.name
	street_address = Faker::Address.street_address
	email_address = Faker::Internet.email
	user_object = User.new(id, name, street, email)
	user_hash[id] = user_object
end
