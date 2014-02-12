class MyClass
	
	def initialize
		@tables = "none"
	end

	def add_tables ( param1 )
		puts "Tables!  W3RD!"
	end

	def whadda_we_got
		puts "OK WE GOT SOME #{@tables} TABLES HERE"
		
		puts @tables.class
	end

end

my_class = MyClass.new

puts my_class.class
my_class.whatta_we_got

