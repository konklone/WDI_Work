class User
	def iniitialize(id, name, street_address, email_address)
		@id = id 
		@name = name 
		@street_address = street_address
		@email_address = email_address
	end

	def to_s 
		"Name: #{@name} Address: #{@street_address} Email: #{@email_address}"
	end
end

