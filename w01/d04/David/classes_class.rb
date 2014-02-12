class MyClass

  #gets and sets the variables
  # attr_reader :tables, :chairs
  # attr_writer :tables, :chairs

  #replaces attr_reader and attr_writer
  attr_accessor :tables, :chairs
 
  def initialize
    @tables = "none"
    @chairs = "none"
  end

  # #### attr_writer
  # def tables=( param1)
  #   @tables = param1
  # end

  # def chairs=( param1)
  #   @chairs = param1
  # end

  # #attr_reader
  # def tables
  #   return @tables
  # end

  # def chairs
  #   return @chairs
  # end

  def whadda_we_got
    puts "OK WE HAVE SOME #{@tables} TABLES HERE"
    puts "AND SOME #{@chairs} CHAIRS, TOO!"
  end

end


#this creates an instance 
my_class = MyClass.new

puts my_class.class
my_class.tables=("white")
my_class.chairs = "big"



puts "These tables are so #{my_class.tables}!"
puts "These tables are so #{my_class.chairs}!"
