require 'pry'
require 'pg'
require 'faker'


db_conn = PG.connect( dbname: 'sandbox')

for x in 1..50 do
  name = Faker::Name.name.gsub("'","")
  street_address = Faker::Address.street_address.gsub("'","")
  email_address = Faker::Internet.email

  sql = "INSERT INTO morning_users(name, street_address, email_address) VALUES('#{name}', '#{street_address}', '#{email_address}')"

  db_conn.exec(sql)
end

db_conn.close

