class Elevator
	def initialize(name, floors)
		@name = name
		@floors = []
		@current_floor = 1
		@direction = "up"
		(1..floors).each do |i|
			@floors.push(i)
		end
	end

	def floors
		@floors
	end

	def call(floor)
		if @floors.include?(floor)
			if @current_floor < floor
				@direction = "up"
			else
				@direction = "down"
			end
			@current_floor = floor
		else
			false
		end
	end

	def current_floor
		@current_floor
	end

	def direction
		if @current_floor == 10
			 @direction = "down"
		elsif @current_floor == 1
			@direction = "up"
		else
			@direction
		end

	end
end