class Person
	attr_accessor :name, :age, :gender, :apartment

	def initialize(name = nil, age = nil, gender = nil, apartment = nil)
		@name = name
		@age = age
		@gender = gender
		@apartment = apartment
	end

	def to_s
		"#{@name}"	
	end
end