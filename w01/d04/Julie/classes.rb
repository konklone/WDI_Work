class MyClass

  def add_tables(param1)
    tables = param1
    puts "HERE BE #{tables} TABLES"
  end

end

my_class = MyClass.new

puts my_class.class

puts my_class.add_tables("great")