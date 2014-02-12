require_relative './module.rb'

class Person

  def initialize(name)
    @name = name
  end

  def say
    "hello, my name is #{@self.name}"
  end

  def name
    @name
  end


end


class Car
  include Borrowable

  def initialize(make)
    @make = make
  end

  def say
    "hello, my name is #{@self.make}"
  end

  def make
    @make
  end

end

class Laptop < Computer #inherits from module and inherits from computer. everything in laptop that's specific does not get inherited by computer.

  def do
    @do
  end
end


class Computer
  include Borrowable

  def initialize(make)
    @make = make
  end

  def boot
    "hello, my name is #{@self.make}"
  end

  def make
    @make
  end

end

honda = Car.new("Honda")

puts honda.make

  puts honda.borrow("Britt")
puts honda.say

  puts honda.give_back
  putshonda.can_borrow?



apple = Computer.new("Apple")

puts apple.boot



jeff = Person.new("Jeff")

puts jeff.say


#in pry:

# apple.respond_to? :make

# will return true or will return false

######USE OF MODULE #1

#Responds to (in this order):

# 1. implemented on by class #methods in its own class

# 2. implented by parents #methods in its parent 

# 3. included in module #in a separate module file with shared behavior with ther classes

# 4. included by parents #included in parent modules


######USE OF MODULE #2

#Math.sqrt(9) #Math is a module. 

#need behavior without data. Math is a module. 


# What's unique about is a class is that we instantiate classes, it's a general idea that we manifest into particular representations. class Person, instance Person Jeff, jeff has a name, jeff has hopes and dreams.

#Computer tracked 3 pieces of data: make, borrowed, borrowed_by, name, etc.



#######################################


# USING A CSV

# Example 1:

# people = ["Jeff", "Mary"]

# people.each do |name| puts elements.each 
  
# end


# class CSV

#   def initialize
#     @data = " "
#   end

#   def push(item)

#     self.data << item
#     self.data << ", "
#   end

#   def data
#     @data
#   end

# #.split -> when it sees a coma, it's going to cleave the string and turn it into an array. 

  # def each(&block)
  # for item in data.split(", ") 
  #  puts "local variable: #{item}"
  #  puts "instance variable: #{@data}"
  #   block.call(item)                                  #item is a local variable
  # end
  # end

#   c = CSV.new



#   puts c.data
#   c.push "Jeff"
# c.push "PJ"
#   puts c.data


# c.each do |name|
#   puts name
# end 





# example 2

# class CSV

#   def initialize
#     @data = " "
#   end

#   def push(item)

#     self.data << item
#     self.data << ", "
#   end

#   def data
#     @data
#   end

# #.split -> when it sees a coma, it's going to cleave the string and turn it into an array. 

  # def each(&block)
  # for item in data.split(", ") 
  #  puts "local variable: #{item}"
  #  puts "instance variable: #{@data}"
  #   block.call(item, "static")                                  #item is a local variable
  # end
  # end

#   c = CSV.new



#   puts c.data
#   c.push "Jeff"
# c.push "PJ"
#   puts c.data


# c.each do |name, some_string|
#   puts name
# end 






# RETURNS:


# the return is:

# Local variable: Jeff
# Instance variable Jeff, PJ, 
# Jeff
# Local variable: PJ
# Instance variable Jeff, PJ, 
# Jeff

# with the static example the return is:


# Jeff
# static
# PJ
# static
# Jeff
# PJ
# blah



# NOTE:
#  the $block refers to this: 
# c.each do |name|
#   puts name
# end 

# ###############################


# nums = [1, 2, 3]
# Incremented_by_two = nums.map do |num|
# num + 2
# end


# .map 

# creates a new array and populates a new array with whatever you're runing on each element in the array in the block. 

# returns [3,4,5]

#  sum = 0 ; nums.each do |num|
# x += num
# this will add all the numbers and return the sum in a block. 


#  .reduce takes two arguments. it will reduce items in an array and collapse into one value.

# nums.reduce do |sum, nxt|
# sum + nxt
# end 
# with a string it would make names in an array list together without a break: jeffpjpeter















