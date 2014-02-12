require "pg"
require "faker"

db_conn = PG.connect(:dbname => "sandbox")

50.times do 
   name = Faker::Name.name.gsub("'", "")
   street = Faker::Address.street_address.gsub("'", "")
   email = Faker::Internet.email
   
   sql = "INSERT INTO morning_users (name, street_address, email_address) "
   sql += "VALUES ('#{name}', '#{street}', '#{email}');"

   db_conn.exec(sql)
end

db_conn.close