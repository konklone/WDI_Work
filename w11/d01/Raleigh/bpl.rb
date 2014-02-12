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

# each(a) {|el| puts "This element is #{el}!"}
## Same as lines 9-12 if you replaced line 10 with:
# puts "This element is #{collection[index]}!"

# binding.pry

def map(collection)
  length = collection.length
  index = 0

  new_collection = []
  while index < length
    new_collection << yield(collection[index])
    index += 1
  end

  return new_collection
end

# map(a) {|el| el + 1}

# binding.pry

def select(collection)
  length = collection.length
  index = 0

  new_collection = []
  while index < length
    if yield(collection[index])
      new_collection << collection[index]
    end
    index += 1
  end

  return new_collection
end

# select(a) {|el| el.even?}

# binding.pry

def reduce(collection, initial)
  result = initial
  length = collection.length
  index = 0

  while index < length
    result = yield(result, collection[index])
    index += 1
  end

  return result
end

# reduce(a,0) {|sum, el| sum += el}
# reduce(a,0) {|sum, el| sum.to_s + " " + el.to_s}
# => "0 100 101 102 103 104 105 106 107 108 109 110"

def join(collection, delimiter)
  reduce(collection, ""){|e, o| o.to_s + delimiter + e.to_s}
end

# join(a,", ")

binding.pry

### Notes:

# What is a block?
# - chunk of code (i.e. a series of statements)
# (what we think of as a block)
#   - takes in parameters(s)
#   - works with these parameters
#   - returns a value
# - a closure
#   - has a local scope
#   - has access to an enclosing scope (1 parameter)
#   - has a series of statements
#   - may return a value

# Ruby closures: blocks, procs, lambdas, and methods
# JavaScript closures: functions

# yield(params)
#   - passes in a block and passes it the params
# yield if block_given?
#   - checks if a block was passed
# {} or do..end
#   - delimits a bock 
# |e|
#   - defines a block argument parameter

# Proc.new {}
#   - creates a saved block (i.e. a "proc")
#   - short for "procedure"
#   - wraps the block in an object

# &
  # - unwraps the proc to get the block

# .call
#   - calls the block (i.e. tells it to run)

# lambdas
#   - a bitchy proc about params
#   - AKA procs that checks parameters (unlike procs) 
