require 'pry'
require_relative 'user'
require 'pg'
require 'faker'

# ActiveRecord::Base.establish_connection(
#   :adapter => "postgresql",
#   :host => "localhost",
#   :username => "T-Virus",
#   :password => "",
#   :database => "sandbox"
# )


# 1.upto(50) do |n|
#   name = Faker::Name.Name
#   street = Faker::Address.street_address
#   email = Faker::Internet.email

#   user_object = MorningUser.new(name: name, street: street, email: email)
#   user_object.save  
# end


db_conn = PG.connect(dbname: 'sandbox', host: 'localhost') 

50.times do

  name = Faker::Name.name.gsub("'","")
  street_address = Faker::Address.street_address.gsub("'","")
  email_address = Faker::Internet.email

  query_str = "INSERT INTO morning_users"
  query_str += "(name, street_address, email_address) "
  query_str += "VALUES('#{name}','#{street_address}','#{email_address}');"

  db_conn.exec( query_str)

end

db_conn.close