require 'PG'
require 'faker'

db_conn = PG.connect( dbname:"sandbox" , host: "localhost" ) 

50.times do 
  t_name = Faker::Name.name.gsub("'", " ")
  t_street = Faker::Address.street_address
  t_email = Faker::Internet.email
  
query = "INSERT INTO morning_users"
query += "(name, street_address, email_address) VALUES "
query += "("
query += "'#{t_name}', '#{t_street}', '#{t_email}'"
query += ");"
db_conn.exec( query )

end 

db_conn.close 



