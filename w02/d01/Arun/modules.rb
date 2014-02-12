require_relative 'modules2'
class Car
	include Borrowable
	def initialize(make)
		@make = make
	end
	def say
		"Hello, I am a #{self.make}"
	end
	def make
		@make
	end
end


class Computer
	include Borrowable
	def initialize(make)
		@make = make
	end
	def boot
		"This #{self.make} computer is booting up!"
	end
	def make
		@make
	end
	
end

honda = Car.new("honda")
puts honda.say


puts honda.borrow("Britt")
puts honda.can_borrow?

puts honda.give_back
puts honda.can_borrow?

samsung = Computer.new("Samsung")
puts samsung.boot

puts samsung.borrow("Russell")
puts apple.can_borrow?

puts apple.give_back
puts apple.can_borrow?