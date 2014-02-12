require_relative 'module'

class Car
	include Borrowable

	def initialize(make)
		@make = make
	end

	def say
		"Hello, I am a #{self.name}"
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
end

tesla = Car.new("Tesla")
puts tesla.say

tesla.borrow("Justin")
puts tesla.canborrow?

puts tesla.give_back
puts tesla.can_borrow?


apple = Computer.new("Apple")
puts apple.boot

