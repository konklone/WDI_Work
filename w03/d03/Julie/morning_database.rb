require "pg"

require 'faker'

db_conn = PG.connect( dbname: 'sandbox', host: 'localhost')

# class User
#   def initialize(id, name, street_address, email_address)
#     @id = id
#     @name = name
#     @street_address = street_address
#     @email_address = email_address
# end

# def to_s
#   puts "#{@id}'s name is #{@name} and lives at #{@street_address} their email is #{@email_address}"
# end

# end



50.times do

name = Faker::Name.name.gsub(" ' ", "")
street = Faker::Address.street_address.gsub(" ' ", "")
email = Faker::Internet.email

db_conn.exec( "INSERT INTO morning_users (name, street_address, email_address) VALUES ('#{name}','#{street}','#{email}');" )

end

# user_object = User.new(id, name, street, email)
# users[id] = user_object

db_conn.close

