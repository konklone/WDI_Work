a = *100..110 # an array of the numbers 100 to 110

# below are each, map, select & reduce "functions" that take a collection of elements as an argument
def each(collection)
  length = collection.length
  index = 0
  while index < length
    yield collection[index]
    index += 1
  end
  return collection # return the input for chaining
end

each(a) {|e| puts "Yay! It's #{e}!"}

def map(input_collection)
  length = input_collection.length
  index = 0
  output_collection = []
  while index < length
    output_collection << yield(input_collection[index])
    index += 1
  end
  return output_collection
end

doubled = map(a) {|e| e*2}

def select(input_collection)
  length = input_collection.length
  index = 0
  output_collection = []
  while index < length
    if yield(input_collection[index])
      output_collection << input_collection[index]
    end
    index += 1
  end
  return output_collection
end

evens = select(a) {|e| e%2==0}

def reduce(collection, start=0)
  length = collection.length
  index = 0
  output = start
  while index < length
    output = yield(collection[index], output)
    index += 1
  end
  return output
end

sum = reduce(a){|e, o| o+e}

def join(collection, delimiter)
  reduce(collection, ""){|e, o| o.to_s + delimiter + e.to_s}
end