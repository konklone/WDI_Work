class User
	def initialize(id, name, street_address, email)
		@id = id
		@name = name
		@street_address = street_address
		@email = email
	end
	def to_s
		"Name: #{@name} Street: #{@street_address} Email: #{@email}"
	end
end



