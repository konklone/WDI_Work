require 'pry'

a = *100..110

def each(collection)
	length = collection.length
	index = 0

	while index < length
		yield collection[index]
		index += 1
	end
	return collection
end

def map(collection)
	length = collection.length
	index = 0

	while index < length
		changed = yield collection[index]
		index += 1
	end
	return changed
end

def select(collection)
	length = collection.length
	index = 0
	selection = []

	while index < length
		if yield collection[index]
			selection << collection[index]
		end
		index +=1
	end
	puts selection
end

def reduce(collection, starter)
	length = collection.length
	index = 0
	start = starter
	# binding.pry
	
	while index < length
		start = yield(start, collection[index])
		index+=1
	end
	puts start
end

each(a){|el| puts "#{el}"}
puts ""
map(a){|poop| puts "#{poop + 1}"}
puts ""
select(a){|poo| poo % 2 == 0}
puts ""
reduce(a, 0){ |test, val| test+val}




