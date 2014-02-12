# require 'active_record'
require 'faker'
require 'pg'

# ActiveRecord::Base.establish_connection(
#   :adapter => "postgresql",
#   :host => "localhost",
#   :username => "postgres",
#   :password => "postgres",
#   :database => "users"
# )

# require_relative 'user'
# require_relative 'morning_users'
# id = 0

db_conn = PG.connect(:dbname => 'users')

50.times do
	name = Faker::Name.name.gsub("'","''")
	street = Faker::Address.street_address.gsub("'","''")
	email = Faker::Internet.email
	# user_object = User.new(id, name, street, email)
	
	sql =  "INSERT INTO morning_users (name, street_address, email_address)
	VALUES ('#{name}', '#{street}', '#{email}');"

	db_conn.exec(sql)

end

db_conn.close