class MyClass
	attr_accessor :tables, :chairs

	def initialize(optional_param = "default")
		@tables = optional_param
	end

	def whadda_we_got
		puts "ello, some #{@tables}"
		puts "oyoy, some #{@chairs}"
	end
end

my_class = MyClass.new

my_class.tables == "default"

