people = ["Jeff", "Barney the Dinosaur", "Joseph (dream coat)"]

class CSV
	def initialize
		@data = ""
	end

	def push(item)
		data << item
		data << ","
	end

	def data
		@data
	end

	def each(&block)
		for item in data.split(",")
			yield item
			#or
			#block.call(item)
		end
	end
end

c = CSV.new

# puts c.data
c.push "Jeff"
c.push "PJ"
# puts c.data

c.each do  |name|
	puts name
end
