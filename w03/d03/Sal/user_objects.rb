require 'faker'
require_relative 'user'

users = Hash.new

(1..50).each do |n|
	id = n
	name = Faker::Name.Name
	street = Faker::Address.street_address
	email = Faker::Internet.email
	user_object = User.new(id, name, street, email)
	user_hash[id] = user_object
end

#Can also use:
#for x in 1..50 
#50.times 
#1.upto(50) do  