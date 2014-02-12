# students = ["remy the dog", "pj", "jeff", "peter"]

# students.each do |x| 
# puts "welcome students!"
# puts "#{x.capitalize}"
# puts "it's great to have you."
# end  


# i = 0
# while i < 10
#   xx
#  i +=1
#  end

# for x in students do
#   puts x
# end

# students.each do |x|
#   puts x
# end


# philip = {gend: "m", nat: "us", style: "preppy"} 
# => {:gend=>"m", :nat=>"us", :style=>"preppy"}

# def ga_work(person)
#   # namespace is declaring a variable in here that doesn't get confusing with the variables outside of the definition.
#   return could be var = {how went hash items}
# end

# phils_day_went = ga_work(philip)


#######CLASSES#########

#define a new class
class MyClass

  attr_accessor :tables, :chairs #these are symbols, therefore strings
  # attr_reader :tables, :chairs #these are symbols, therefore strings
  # attr_writer :tables, :chairs #these are symbols, therefore strings

  def initialize
    @tables = "none"
    @chairs = "none"
  end

#   def tables=(param1)
#     @tables = param1
#   end

#   def chairs=(param1)
#     @chairs = param1
#   end

# def tables
#   return @tables
# end

# def chairs
#   return @chairs
# end

  def whadda_we_got
    puts "we got #{@tables} tables"
    puts "we got #{@chairs} chairs"
    #puts "and some #{chairs}"
  end

end

####create a new instance of that class and then assigning it to the variable my_class. 
my_class = MyClass.new


puts my_class.class
my_class.tables = "white"
my_class_tables = my_class.tables

puts "these tables are so #{my_class.tables}."

#my_class.whadda_we_got
## it's like calling a method on a string. ("hello").length


#########

# 2.+(3)

# two is an instance of class Fixnum. .+ is the method. 3 is the parameter.



