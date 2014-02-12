module Borrowable
	def can_borrow?
		!@borrowed
	end

	def borrow(name)
		@borrowed_by = name
		@borrowed = true
		"Congrats! you have borrowed my #{self.make}"
	end

	def give_back(name)
		@borrowed = false
	end
end