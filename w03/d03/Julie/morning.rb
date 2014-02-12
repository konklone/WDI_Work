# Step 1:
# - Create a User class
#   - User should have an id
#   - User should have a name
#   - User should have an street_address
#   - User should have an email_address
#   - User should have a `to_s` method
require 'faker'

class User
  def initialize(id, name, street_address, email_address)
    @id = id
    @name = name
    @street_address = street_address
    @email_address = email_address
end

def to_s
  puts "#{@id}'s name is #{@name} and lives at #{@street_address} their email is #{@email_address}"
end

end

# Step 2:
# - Create a hash with 50 User objects with junk data.
#   - key should be their id_number (auto-increment this)
#   - value should be the User object


users = {}
# @id = 0
# until @id == 50
#   users[@id + 1] = User.new(@id, Faker::Name.name, Faker::Address.street_address, Faker::Internet.email)
#   puts users
# # end

# for x in 1..50 do
#   x = @id
#   users[x] = User.new(@id, Faker::Name.name, Faker::Address.street_address, Faker::Internet.email)
#   puts users
# end

(1..50).each do |n|
  id = n
name = Faker::Name.name
street = Faker::Address.street_address
email = Faker::Internet.email

user_object = User.new(id, name, street, email)
users[id] = user_object

end
puts users
# for x in 1..50 do

# end

