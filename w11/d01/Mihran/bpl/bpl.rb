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

each(a) {|el| puts "This element" is #{el}!"}

def map(collection)
  length = collection.length
  index = 0
  new_array = []
  while index < length
    new_array.push(yield collection[index])
    index += 1
  end
  return new_array
end

print ( map(a) {|el| el+3 } )

def select(collection)
  length = collection.length
  index = 0
  new_array = []
  while index < length
    if yield(collection[index]) == true
      new_array.push(collection[index])
    end
    index += 1
  end
  return new_array
end

select(a) {|el| el.even?}


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
