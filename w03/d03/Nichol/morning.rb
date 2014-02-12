require "pry"
require "faker"
require "active_record"
require "pg"

class User
    
    def initialize(id,name,street_address, email_address)
        @id = id
        @name = name
        @street_address = street_address
        @email_address = email_address
    end

    def to_s
        return "ID: #{@id} NAME:#{@name} STREET:#{@street_address} EMAIL:#{@email_address}"
    end

end

my_db = PG.connect(dbname:"sandbox_db")

for x in 1..50 do
  id, name, street, email = x, Faker::Name.name.gsub("'",""), Faker::Address.street_address.gsub("'",""), Faker::Internet.email

  #user_object = User.new(t_id, t_name, t_street, t_email)
  sql_query = "INSERT INTO morning_users (id, name, street_address, email_address) VALUES ("
  sql_query += "'#{x}', '#{name}', '#{street}', '#{email}'"
  sql_query += ");"
  my_db.exec(sql_query)

end

my_db.close

