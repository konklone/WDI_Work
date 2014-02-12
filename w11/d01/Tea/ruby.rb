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

each(a) {|el| puts "This element is #{el}!"}

def map(collection)
  length = collection.length
  new_collection = []
  index = 0
  while index < length
    new_collection << yield collection[index]
    index += 1
  end
  return new_collection
end

map(a) {|el| el + 1}

def select(collection)
  length = collection.length
  new_collection = []
  index = 0
  while index < length
    if yield(collection[index])
      new_collection << collection[index]
    end
    index += 1
  end
  return new_collection
end

select(a) {|el| el % 2 == 0 }

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

sum = reduce(a){|e, o| o + e}

def join(delimiter)
  reduce(arr, "") {|out, current| out + current.to_s + delimiter}
end
