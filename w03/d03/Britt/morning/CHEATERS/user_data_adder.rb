require 'active_record'
require 'faker'
require_relative './models/morning_user'

ActiveRecord::Base.establish_connection(
	adapter: 'postgresql',
	host: 'localhost',
	username: 'brittlewis',
	password: "",
	database: 'users'
)

1.upto(50) do |i|
	name = Faker::Name.name
	address = Faker::Address.street_address
	email = Faker::Internet.email
	user = Morning_user.new({ name: name, street_address: address, email_address: email })
	user.save
end