# people = ["Jeff", "Barney the dinosaur", "Joseph (dream coat)"]

# people.each do |name|
# 	puts name
# end

class CSV
	def initialize
		@data = ""
	end
	def push(item)
		data << item
		data << ", "
	end
	def data
		@data
	end
end
c = CSV.new

puts c.data
c.push "Jeff"
c.push "PJ"
puts c.data