require 'faker'
require_relative 'user'

user_hash = Hash.new

for x in 1..50 do
  id = x
  name = Faker::Name.name
  street = Faker::Address.street_address
  email = Faker::Internet.email
  user_object = User.new(id, name, street, email)
  user_hash[id] = user_object
end

(1..50).each do |n|
  id = n
  name = Faker::Name.name
  street = Faker::Address.street_address
  email = Faker::Internet.email
  user_object = User.new(id, name, street, email)
  user_hash[id] = user_object
end

1.upto(50) do
end