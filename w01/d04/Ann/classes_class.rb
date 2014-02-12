class MyClass

  att_reader :tables, :chairs  
  att_writer :tables, :chairs 

  def initialize 
    @tables = "none"
    @chairs = "none"
  end 

  def whadda_we_got 
      puts "OK WE GOT SOME #{tables} TABLES HERE!"
      puts "AND SOME #{chairs} CHAIRS, TOO!"
    end 
end 

my_class = MyClass.new 

my_class.tables("white") 

puts "These tables are sooo #{my_class.tables}."


