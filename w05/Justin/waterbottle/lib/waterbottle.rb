class WaterBottle
	def initialize
		@empty = true
	end

	def empty?
		@empty
	end

	def drink
		raise "This bottle is empty!" if empty?
		@empty = true
		:water
	end

	def fill
		@empty = false
	end

	# def empty!
	# 	@empty = true
	# end

	# def full!
	# 	@empty = false
	# end

	# def empty?
	# 	@empty
	# end
end