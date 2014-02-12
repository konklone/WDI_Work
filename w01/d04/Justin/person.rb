# A person should have the following attributes:

# * name
# * age
# * gender
# * apartment
# ========================

# person.rb
# define class person
class Person
	attr_accessor :name, :age, :gender, :apartment

	def initialize(name, age, gender, apartment)
		@person_name = name
		@person_age = age
		@person_gender = gender
		@person_apartment = apartment
	end

	def to_s
		"I'm #{@person_name} and I am #{@person_age} years old."
	end

end


