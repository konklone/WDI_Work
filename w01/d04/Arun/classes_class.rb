class MyClass
	attr_reader :tables, :chairs
	attr_writer :tables, :chairs
	
	def initialize
		@tables = "none"
		@chairs = "none"
		
	end


	# def tables= (param1)
	# 	@tables = param1
		
	# end


	# def chairs= ( param1) #setter method has equals
	# 	@chairs = param1


	# def whadda_we_got
	# 	puts "OK WE GOT SOME #{@tables} TABLES HERE!"
	# 	#puts "AND SOME #{cairs} CHAIRS, TOO!"
	# end


	# def tables #getter method does not
	# 	return @tables
	# end


	# def chairs
	# 	return @chairs
	# end


	# def what_else_we_got
	# 	whadda_we_got
	# end

end

my_class = MyClass.new

puts my_class.class
my_class.tables= "white"
puts my_class.tables