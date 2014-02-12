require 'Pry'
require.relative '/.person'

puts "Welcome to Apartment Finder. "
puts "What's your name?"

# Should prompt user for info, then return a new person to the array.

def get_person_info
	name = gets.chomp
	puts "What's your age?"
	age = gets.chomp.to_i
	puts = "What's your gender?"
	gender = gets.chomp
	puts = "What apartment are you in?"
	apartment = gets.chomp

	new_person_obj = Person.new(name, age, gender, apartment)
	return new_person_obj
end


