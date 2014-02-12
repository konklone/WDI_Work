require 'pg'
require "faker"

db_conn = PG.connect(dbname: "sandbox", host: "localhost")

50.times do 
name = Faker::Name.name.gsub("'","") 
address = Faker::Address.street_address.gsub("'","") 
email = Faker::Internet.email

sql ="INSERT INTO morning_users (name,address,email)"
sql+="VALUES ('#{name}','#{address}','#{email}' );" 

db_conn.exec(sql) 
end

db_conn.close