require 'PG'
require 'faker'
require 'pry'

connection = PG.connect( dbname: "sandbox" ) 


50.times do 
	name = Faker::Name.name.gsub("'","")
	street_address = Faker::Address.street_address
	email_address = Faker::Internet.email
	query = "INSERT INTO morning_users "
	query += "(name, street_address, email_address) VALUES"
	query += "('#{name}', '#{street_address}','#{email_address}');"
	connection.exec( query )
end



connection.close