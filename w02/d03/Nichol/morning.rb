require 'pry'

class Person

	def initialize(name) 
		@name = name 
	end

	def self.learn 
		puts "I'm a class method" 
		puts self 
	end

	def learn 
		puts "I'm an instance method" 
		puts self 
	end

	def hello 
		self.learn 
	end

	def hello_again 
		learn 
	end

end

pj = Person.new("PJ")

pj.learn
pj.hello
pj.hello_again

#=>
# I'm an instance method
# #<Person:0x007fc1440bb0a0>
# I'm an instance method
# #<Person:0x007fc1440bb0a0>
# I'm an instance method
# #<Person:0x007fc1440bb0a0>

random_animals = ["porpoise", "camel", "lobster", "kangaroo", 
	"wombat", "chameleon"]

random_animals.each {|x| puts x+"s"}
puts random_animals.sort
puts random_animals.sort.reverse

new_array = Array.new
random_animals.each do |x|
	new_array << x.reverse
end

binding.pry
random_animals.each {|x| new_array << x.reverse}

random_animals.map {|x| x.reverse}

puts new_array

puts random_animals.sort_by {|x| x.length}

puts random_animals.sort_by {|x| x.split("").last}


















