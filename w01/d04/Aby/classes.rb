class MyClass

	def initialize(name, age, gender, apartment)
		@name = name
		@age = age
		@gender = gender
		@apartment = apartment
	end
 end
	

	def whadda_we_got
		puts "OK WE GOT SOME #{@tables} TABLES HERE!"
		puts "AND SOME #{chairs} CHAIRS, TOO!"
	end

def initialize(param1)
	@babies = param1
end

my_class.new
my_class = MyClass.new
puts my_class.class
my_class.tables = {:num => 3, :color => "white"}
puts "These tables are sooo #{my_class.tables}!"