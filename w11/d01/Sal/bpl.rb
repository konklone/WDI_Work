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

each(a) {|el| puts "This element is #{el}!" }

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

b = map(a) {|el| 2*el}
puts b


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

c = select(a) {|el| el%2 == 0}
puts c


def reduce(arr, initial)
  result = initial
  i = 0 
  while i < arr.length
    result = yield(result, arr[i])
    i +=1 
  end
  return result
end

d = reduce(a,0) {|sum,n| sum += n}
puts d 

def join(arr, delimeter) 
  reduce(arr,"") {|out,current| out + current.to_s + delimeter}
end

