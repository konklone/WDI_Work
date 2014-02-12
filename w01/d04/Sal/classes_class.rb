class MyClass

  attr_accessor :tables, :chairs

  def initialize
  	@tables = "none"
  	@chairs = "none"
  end

  def whadda_we_got
  	puts "OKAY WE GOT SOME #{@tables} TABLES HERE!"
  	puts "AND SOME #{@chairs} CHAIRS, TOO!"
  end

end

my_class = MyClass.new

puts my_class.class

my_class.tables = {:num => 3, :color => "white"}

puts "These tables are soooo #{my_class.tables}!"

puts my_class.tables = "white" 
puts my_class.tables
#puts my_class.whadda_we_got