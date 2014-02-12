require 'faker'
require 'pry'

class User
	attr_reader :name, :address, :email

	def initialize(id, name,address,email)
		@id = id
		@name = name
		@address = address
		@email = email
	end

	def to_s
		"\nName:#{@name} \nEmail: #{@email} \nAddress: #{@address}"
	end
end

@junk_data = {}

1.upto(50) do |i|
	id = i
	name = Faker::Name.name
	address = Faker::Address.street_address
	email = Faker::Internet.email

	@junk_data[id] = User.new(id, name, address, email)
	
end

@junk_data.each do |id, object|
	puts object.to_s
end