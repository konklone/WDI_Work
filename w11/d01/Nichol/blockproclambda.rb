# in short:
# ruby has 4 closure types.  a closure has a local scope, does something, and can except parameters.
#
# a block is a chunk of code which is passed as a string to the ruby interpreter and run in place.
# a proc is a chunk of code which is encapsulated in an object and which can be used later using & (the dereferencer)
#      or by using .call.
# a lambda is an anonymous method (as in from javascript) and it checks argument numbers.  return functions differently.
# a method is a named lambda (similar to a proc) that also has the properties of a lambda.

require 'pry'

a = *100..110

def each (collection)
  length = collection.length
  index = 0
  while index<length
    yield collection[index]
    index += 1
  end
  return collection
end


def map (collection)
  length = collection.length
  index = 0
  newarray = []
  while index<length
    newarray << yield(collection[index])
    index+=1
  end
  return newarray
end

def select(collection)
  length = collection.length
  index = 0
  newarray = []
  
  while index < length
    newarray << collection[index] if yield(collection[index])
    index += 1
  end

  return newarray
end


each(a) {|el| puts "this element is #{el}!"}

test = map(a) {|el| el + 100}
puts test

test = select(a) {|el| el%2==0}
puts test

def reduce(collection, initial)
  length = collection.length
  result = initial
  index = 0
  while index < length
    result = yield( result, collection[index] )
    index += 1
  end
  return result
end

puts (reduce(a,0) {|sum, n| sum + n})
