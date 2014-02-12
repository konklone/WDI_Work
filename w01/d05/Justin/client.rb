#client.rb
#Defines the Client class

require "pry"

class Client

	def initialize(name, age)
		@name = name
		@age = age
		@pets_list = []
	end


	#string conversion method definition
	def to_s
		"The clients name is #{@name}, they are #{@age} years old and have, #{@pets_list.count}"
	end


	#Add pet to pet list method
	def add_pet(pet)
		@pets_list << pet
	end

	#binding.pry
	#client name reader method
	def name
		@name
	end


	#client age reader method
	def age
		@age
	end


	#pets list reader method
	def pets
		@pets_list
	end
end


