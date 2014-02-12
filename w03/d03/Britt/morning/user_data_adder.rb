require 'pg'
require 'faker'

users_db_conn = PG.connect( dbname: "users" )

50.times do

name = Faker::Name.name.gsub("'","''")
address = Faker::Address.street_address.gsub("'","''")
email = Faker::Internet.email

query_str = "INSERT INTO morning_users "
query_str += "(name, street_address, email_address) VALUES "
query_str += "('#{name}', '#{address}', '#{email}');"

users_db_conn.exec( query_str )

end

users_db_conn.close