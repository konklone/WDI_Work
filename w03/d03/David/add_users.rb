require 'faker'
require 'PG'
require 'pry'



db_conn = PG.connect( dbname: "sandbox")

50.times do
  name = Faker::Name.name.gsub("'", "")
  address = Faker::Address.street_address.gsub("'", "")
  email = Faker::Internet.email
  query_str = "INSERT INTO morning_users "
  query_str += "(name, street_address, email_address) VALUES "
  query_str += "('#{name}', '#{address}', '#{email }');"
  db_conn.exec( query_str )
end

db_conn.close