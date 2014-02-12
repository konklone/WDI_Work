# only create attr_accessor for
# attributes you'd like to be
# able to change/write USING the
# method_name_set=('stuff') syntax

class Building
	attr_accessor :address, :style, :num_floors
	attr_reader :has_doorman, :is_walkup, :apartments

	# Prompts user input; returns true if 'y' or 'yes', else returns false
	def get_true_or_false
		print "'y' or 'n': "
		input = gets.chomp.downcase
		if input == 'y' || input == 'yes'
			true
		else
			false
		end
	end

	def has_doorman?
		puts "Does this building have a doorman?"
		@has_doorman = get_true_or_false
	end

	def is_walkup?
		puts "Is this building a walkup?"
		@is_walkup = get_true_or_false
	end

	def initialize (address, style, num_floors)
		@address = address
		@style = style
		@num_floors = num_floors
		@apartments = Hash.new
		has_doorman?
		is_walkup?
	end

	def add_apartment(key, value)
		@apartments[key] = value
	end

	def list_apartments
		@apartments.keys.join(", ")
	end

	def to_s
		if @has_doorman == false && @is_walkup == false
			"#{@address} is a #{@style}, #{@num_floors}-story building with #{@apartments.keys.count} units."
		elsif @has_doorman == true && @is_walkup == true
			"#{@address} is a #{@style}, #{@num_floors}-story doorman building with #{@apartments.keys.count} units and a walkup."
		elsif @has_doorman == true && @is_walkup == false
			"#{@address} is a #{@style}, #{@num_floors}-story doorman building with #{@apartments.keys.count} units."
		else
			"#{@address} is a #{@style}, #{@num_floors}-story building with #{@apartments.keys.count} units and a walkup."
		end
	end

end