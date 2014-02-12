class MyClass
  
  def add_tables ( param1 ) ## encapsulating this method add_tables into the Class
    tables = param1
    puts "OK WE GOT SOME TABLES HERE!"
    end

def whadda_we_got
    puts "OK WE GOT SOME #{tables} TABLES HERE!"
    puts "AND SOME #{chairs} CHAIRS, TOO!"
    end

end

my_class = MyClass.new

puts my_class.class
puts my_class.add_tables( "white" )
my_class.what_else_we_got
