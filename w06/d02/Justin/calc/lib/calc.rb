class Calculator

	def add (a, b)
		a + b
	end

	def subtract (a, b)
		a - b
	end

	def sum (a)
		sum = 0
		if a.length == 0
			sum
		else
			a.each {|e| sum += e}
			sum
		end
	end

	def multiply (*a)
		p = 1
		a.each {|e| p *= e}
		p
	end

	def power(n, e)
		n ** e
	end

	def factorial(num)
		if num == 0
			1
		else
			(1..num).reduce(:*)
		end
	end
end