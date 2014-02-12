class MyClass

  def add_tables ( param1 )
    @tables = param1
  end

  def whadda_we_got
    puts "OK we got some #{@tables} Tables Here!"
    #puts "And some #{chairs} chairs too!"
  end

  #def what_else_we_got
    #whadda_we_got
  #end

end

my_class = MyClass.new



puts my_class.class
my_class.add_tables ("white")
puts my_class.whadda_we_got