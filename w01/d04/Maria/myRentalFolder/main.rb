# Hi Peter,
# This is what I have been trying to accomplish : 
# 1. my program will get information from user to create a "Person"
# 2. my program will get information from user to create an "Apt"
# 3. my program will get information from user to create a "Building"
# 4. the person will have an Apt 
# 5. the apt will be in a Building 

 

require 'pry'
require_relative './person'

def main_menu
	puts "Welcome to Apt Finder App"
	puts "Do you want to (S)ign up? or (L)ist?"
end

def get_info
	#here we will put gets.chomp
	puts "give us your name"
	name = gets.chomp
	puts "give us your age"
	age = gets.chomp
	puts "give us your gender"
	gender = gets.chomp
	puts "give us your apartment"
	apartment = gets.chomp


	#puts "Welcome to apartment finder"

	#main_menu
	new_person_obj = Person.new(name, age, gender, apartment)
	return new_person_obj
end

###### Program Starts Here ###########
get_info 

# Here I am thinking about creating an array of persons 

 
# persons_array = Array.new
# have loop here to get array
# persons_array << get_info
