class MyClass
	attr_reader :tables, :chairs
	attr_writer :tables, :chairs

	# def initialize
	# 	@tables = "none"
	# end

		
	# end
	
	def intitialize
		@tables = "none"
		@chairs = "none"
	end


	# def set_tables=( param1 )
	# 	@tables = param1
	# end


	# def set_chairs=( param1 )
	# 	@chairs = param1
	# end


	def whadda_we_got
		puts "OK WE GOT SOME #{@tables} tables here"
		puts "and some #{@chairs} chairs too!"
		# puts "and some #{chairs} here, too"
	end


	# def tables
	# 	return @tables
	# end


	# def chairs
	# 	return @chairs
	# end

	
end

my_class = MyClass.new

puts my_class.class
my_class.tables =( "white" )
puts "These tables are soooo #{my_class.tables}"
puts my_class.tables

