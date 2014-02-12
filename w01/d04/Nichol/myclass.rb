class MyClass

	attr_accessor :tables, :chairs

	# attr_reader :tables, :chairs
	# attr_writer :tables, :chairs

	# def initialize
	# 	@tables = "none"
	# 	@chairs = "none"
	# end

	# def add_tables(param1)
	# 	@tables = param1
	# end

	# def add_chairs(param1)
	# 	@chairs = param1
	# end

	# def whadda_we_got
	# 	puts "we got #{@tables}, and some #{@chairs}"
	# end

	# def tables
	# 	return @tables
	# end

	# def tables=(param1)
	# 	@tables = param1
	# end

	# def tables+(param1)
	# 	@tables = @tables + " " + param1
	# end
end

my_class = MyClass.new
#my_class.add_tables("white")

my_class.tables = {:num => 3, :color =>"white"}

puts my_class.tables

#my_class.tables += " gray"

puts my_class.tables
my_class.each {|x| puts x}


