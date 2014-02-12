require_relative 'module'

class Car
	include Borrowable

	def initialize(make)
		@make = make
	end

	def make
		@make
	end

	def say
		"Hello, my make is #{make}"
	end
end

class Computer
	include Borrowable

	def initialize(make)
		@make = make
	end

	def make
		@make
	end

	def boot
		"This #{make} computer is booting up!"
	end
end

honda = Car.new("Honda")
honda.say

apple = Computer.new("Apple")
apple.boot

puts apple.borrow("Britt")
puts apple.return_stuff

puts apple.return_stuff
puts apple.can_borrow?

