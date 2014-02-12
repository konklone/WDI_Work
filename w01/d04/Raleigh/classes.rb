class MyClass

   def add_tables(param1)
      @tables = param1
   end
   
   def we_have
      puts "WE GOT #{@tables.upcase} TABLES!"
      #puts "AND SOME #{chairs} CHAIRS, TOO!!!"
   end

end

my_class = MyClass.new

puts my_class.class
my_class.add_tables("white")
my_class.we_have