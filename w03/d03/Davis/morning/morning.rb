require 'faker'
# require 'active_record'
require 'pg'
require 'pry'

class User
	def initialize(id, name, street_address, email_address)
		@id = id
		@name = name
		@street_address = street_address
		@email_address = email_address
	end

	def to_s
		"Person #{@name} has id of #{@id} lives in #{@street_address}. Contact at #{@email_address}."
	end
end

# hash = {}

# (1..50).each do |n|
# 	hash[n] = User.new(n, Faker::Name.name, Faker::Address.street_address, Faker::Internet.email)
# end

# establish connection
# ActiveRecord::Base.establish_connection(
#   :adapter => "postgresql",
#   :host => "localhost",
#   :username => "daviskoh",
#   :password => "",
#   :database => "sandbox"
# )

# require_relative './morning_user.rb'

# (1..50).each do |n|
# 	name = Faker::Name.name
# 	street_address = Faker::Address.street_address
# 	email_address = Faker::Internet.email
	
# 	morning_user = MorningUser.new(name: name, street_address: street_address, email_address: email_address)
# 	morning_user.save
# end

db_conn = PG.connect( dbname: "sandbox" )

50.times do
	name = Faker::Name.name.gsub("'","")
	street_address = Faker::Address.street_address.gsub("'","")
	email_address = Faker::Internet.email

	query_str = "INSERT INTO morning_users (name,street_address,email_address) "
	query_str += "VALUES ('#{name}','#{street_address}','#{email_address}');"

	db_conn.exec( query_str )
end

db_conn.close
