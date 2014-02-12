module Borrowable
	def can_borrow?
		# @borrowed_by.nil?
		!@borrowed
	end

	def borrow(name)
		@borrowed_by = name
		@borrowed = true
		"Congrats! You have borrowed this #{make}"
	end

	def return_stuff
		@borrowed = false
	end
end
