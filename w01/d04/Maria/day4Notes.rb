scope and name spaces 

philip = {:gender => "male", :nat=> "us", :style => "preppy"} (this is a hash)

below is a method, this one:
takes a person and returns how their work day went

def ga_work(person)
	return how_went
end

(that def above is an encapsulation)

when we call
	ga_work

phils_day_went = ga_work(philip)
a method does one thing well, get ONE piece of info out of thing out of it: The last thing returned

an object incapsulates data and the procedures (methods) that work on that object(data).

__________
blocs 
it is not an object it is a statement.(cant call a method on a bloc) Two ways to show we are using a bloc:
curly braces or in other words-
begin with do and end bloc with end

concept of a bloc is that it is one or more statements. rubys specific idea of a bloc is
________
i= 0
while i<10
	puts  "The iterator is at #{i}"
	i += 1
end
_________
0.upto(9) {|i| puts "The iterator is at #{i}"}
_______________
i = 10
while i > 0 do
	puts 1
	i -= 1
end
____________
ennumerators takes the bloc and puts it inside a loop like below:

2.times {puts "hip hip hooray"}

or

3.times doputs "hip hip hooray"
puts "again"
puts "alright"

end
____________
another ennumerator:

person1 = {:name => "PJ", :hair =>"fading", :style=> "preppy"}

person1.each {|x, y| puts "Key for this element is #{x}, value for this element is #{y}"}

(http://www.ruby-doc.org/core-2.0.0/Hash.html#method-i-each)
(http://www.ruby-doc.org/core-2.0.0/Hash.html#method-i-key)

if done on an array :
pry(main)> students = ["remy the dog", "pj", "jeff", "peter"]
=> ["remy the dog", "pj", "jeff", "peter"]
[4] pry(main)> students.each do |student|
[4] pry(main)*   puts "Welcome to class #{student} !"
[4] pry(main)* end  
Welcome to class remy the dog !
Welcome to class pj !
Welcome to class jeff !
Welcome to class peter !

if done  on a hash:
pry(main)> person1 = {:name => "PJ", :hair =>"fading", :style=> "preppy"}
=> {:name=>"PJ", :hair=>"fading", :style=>"preppy"}
[6] pry(main)> person1.each do |student|
[6] pry(main)*   puts "Welcome to class #{student} !"
[6] pry(main)* end  
Welcome to class [:name, "PJ"] !
Welcome to class [:hair, "fading"] !
Welcome to class [:style, "preppy"] !
=> {:name=>"PJ", :hair=>"fading", :style=>"preppy"}

________________
students = ["remy the dog", "pj", "jeff", "peter"]
students.each do |student|
	puts "Welcome to class #{student.capitalize}!"
	puts "It's great to have you!"
	puts "________"
end
____________

for loop is not in ruby because we have ennumerators...just type each!
In ruby:

	for x in students do
		puts x
	end

or a better way:

students.each {|x| puts x}

also written as:

students.each do |x|
	puts x
end

____________

O.O.P
object oriented programming

encapsulation inside boxes. withh oop we dont just encapsulate methods other blocs etc(data)
Class vs an Object
class = we define a class nd whenever we want that thing we have to create instances of 
that class into an object. 
everything has a class.
A class must always be capitalized.

class MyClass

end   (This defines a new class)

my_class = MYClass.new  (this is creating a new instance and calling it my_class)

put my_class.class

so.....
____________

class MyClass
	attr_reader :tables, :chairs   (this is a getter it means create def tables =)
	attr_writer :tables, :chairs    (this is a setter) 

	above can be shortened to just attr_accessor :tables. :chairs 

	# def initialize
	# 	@tables = "none"
	# 	@chairs = "none"
	# end

	# def tables = (param1)
	# 	@tables = param1
	# end

	# def chairs = (param1)
	# 	@chairs = param1
	# end

	# def tables
	# 	return @tables
	# end

	# def chairs
	# 	return @chairs
	# end

	def whadda_we_got
		puts "OK we got some #{@tables} tables here!"
		#puts "and some #{chairs} chairs too!"
		puts "and some #{@chairs} chairs too!"
	end

	def whadda_else_we_got
		whadda_we_got
	end

	
end

my_class = MyClass.new

puts my_class.class
puts my_class.tables = "white"
puts "these tables asre soooo #{my_class.tables}"
#my_class.whadda_we_got
#my_class.whadda_else_we_got
____________
def initialize is a method understood by any class
	so if you put 
	def initialize
		@tables = "none"
	end
____________
setter method has an = but getter method does not

________________
Last 30 minutes of class:

we require 'pry' to DEBUG

https://github.com/nixme/pry-debugger














