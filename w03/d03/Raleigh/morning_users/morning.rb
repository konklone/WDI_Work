require "faker"

class User
   def initialize(id, name, address, email)
      @id = id
      @name = name
      @address = address
      @email = email
   end

   def to_s
      "#{@name} lives at #{@street_address} and can be reached by email at #{@email}."
   end

end

### Definitions End, Program Begins ###

user_hash = Hash.new

(1..50).each do |n|
   id = n
   name = Faker::Name.name
   street = Faker::Address.street_address  + ", " + Faker::Address.city + ", " + Faker::Address.state_abbr + Faker::Address.zip_code
   email = Faker::Internet.email
   user_object = User.new(id, name, street, email)
   user_hash[id] = user_object
end
# puts user_hash