require_relative 'user'
require 'faker'

user_hash = {}

1.upto(50) do |n|
  id = n
  name = Faker::Name.Name
  street = Faker::Address.street_address
  email = Faker::Internet.email

  user_object = User.new(id, name, street, email)
  user_hash[id] = user_object  
end