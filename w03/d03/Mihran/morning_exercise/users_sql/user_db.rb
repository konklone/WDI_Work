### write a ruby program taht will connect to our database and insert 50 randomly generated entries into our users table###

require 'pg'
require 'faker'


###open the connection
db_conn = PG.connect(:dbname => 'sandbox', :host => 'localhost')


50.times do
  name = Faker::Name.name.gsub("'","")  ###this gsub just turns names like O'Hara into OHara ###
  street_address = Faker::Address.street_address.gsub("'","")
  email_address = Faker::Internet.email

  sql = "INSERT INTO morning_users (name, street_address, email_address)"
  sql += "VALUES ( '#{name}', '#{street_address}', '#{email_address}');"
  
  db_conn.exec(sql)  ##execute the above query string##

end

###close the connection
db_conn.close

