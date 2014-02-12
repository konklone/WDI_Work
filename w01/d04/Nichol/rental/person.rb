class Person
	attr_accessor :name, :age, :gender, :apartment

	@@total_persons = 0

	def initialize (name, age, gender, apartment)
		@name = name
		@age = age
		@gender = gender
		@apartment_name = apartment

		@@total_persons += 1
	end

	def to_s 
		"#{@name} #{age} #{gender} #{apartment}"
	end

end
