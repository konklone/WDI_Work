module Borrowable
	def can_borrow?
		!@borrowed

	end

	def borrow(name)
		@borrowed_by = name
		@borrowed = true
		"Congrats! You have borrowed this #{self.make}"
	end
	def give_back
		@borrowed = false
	end
end