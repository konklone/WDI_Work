require 'faker'
require 'pry'
require_relative 'user'

id = 1
user_hash = {}
50.times do 
  name = Faker::Name.name
  address = Faker::Address.street_address
  email = Faker::Internet.email
  user = User.new(id, name, address, email)
  user_hash[id] = user
  id += 1
end
puts user_hash
