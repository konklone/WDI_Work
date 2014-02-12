class MyClass
  attr_reader :tables, :chairs
  attr_writer :tables, :chairs
 
  #def initialize
    #@tables = "none"
    #@chairs = "none"
  #end
 
  # def tables=( param1 )
  #   @tables = param1
  # end
 
  # def chairs=( param1 )
  #   @chairs = param1
  # end
 
  # def tables
  #   return @tables
  # end
 
  # def chairs
  #   return @chairs
  # end
 
  def whadda_we_got
    puts "OK WE GOT SOME #{@tables} TABLES HERE!"
    puts "AND SOME #{@chairs} CHAIRS, TOO!"
  end
 
end
 
my_class = MyClass.new
 
puts my_class.class
 
my_class.tables = {:num => 3, :color => "white"}
 
puts "These tables are soooo #{my_class.tables}!"
 
 
#my_class.whadda_we_got