#create 1 building
#create person
#get person info to initialize
#Class MyClass
#def initialize(param1)
	# a tables = param1
	#end 
	#aClass.new
#createNewPerson
class Person 
	attr_accessor :name, :age, :gender
	def initialize (name, age, gender)
		@name = name
		@age = age
		@gender = gender

	end

puts "What is your name?"
	name = gets.chomp.to_s
puts "What is your age?"
	age = gets.chomp.to_i
puts "What is your gender?"
	gender = gets.chomp.downcase
puts "Your name is: #{name}, you are #{age} years old, a #{gender} and you looking for an apartment! Let's get you started."
end

	person = Person.new("name", "age", "gender")
	puts person.to_s

