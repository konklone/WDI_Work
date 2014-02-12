# only create attr_accessor for
# attributes you'd like to be
# able to change/write USING the
# method_name_set=('stuff') syntax

class Person
	attr_accessor :name, :age, :apartment
	attr_reader :gender

	# Prompts for user input; sets gennder to male or female
	def get_gender
		puts "Is this person (m)ale or (f)emale?"
		input = gets.chomp.downcase
		if input == "m" || input == "male"
			@gender = "male"
		else
			@gender = "female"
		end
	end

	def initialize(name, age)
		@name = name
		@age = age
		@apartment = nil
		get_gender
	end

	def to_s
		"#{@name}: #{@gender}, #{@age} years old; living in #{@apartment}."
	end

end