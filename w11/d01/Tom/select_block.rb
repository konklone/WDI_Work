def select(input_collection)
  length = input_collection.length
  index = 0
  output_collection = []
  while index < length
    if yield(input_collection[index])
    end
    index += 1
  end
  return output_collection
end

def reduce(arr, initial)
  result = initial
  i = 0
  while i < arr.length
    result = yield( result, arr[i] )
    i += 1
  end
  return result
end

def join( arr, delimiter )
  reduce(arr, "") { |out, current| out + current.to_s + delimiter }
end


def takes_a_proc( p )
  p.call
end


def args( closure )
  one, two = 1, 2
  closure.call( one, two )
end



########## PJ's Code
# THE METHOD FUNCTION
def method_name
 puts "Running the method!"
end

method_reference = method(:method_name)

method_name
# => Running the method!
# => nil # is returned…

method_name.call
# => Running the method!
# => NoMethodError: undefined method `call' for nil:NilClass
# ie, it was understood as (method_name).call, running the .call method on whatever method_name returned, which was nil

method_reference.call
# => Running the method!

method_reference.to_proc
# => #<Proc:0x007f87232eebc0 (lambda)>
# ie, it returns a lmbda!

def takes_a_block
  yield if block_given?
  puts "It lies, it was a lambda!"
end

takes_a_block &method_reference
# => Running the method!
# => It lies, it was a lambda!

# THE & OPERATOR (IE Symbol.to_proc)
(0..5).to_a.reduce(&:+)
(0..5).to_a.reduce &(:+.to_proc)
(0..5).to_a.reduce &Proc.new {|first_arg, second_arg| first_arg.send(:+, second_arg)}
(0..5).to_a.reduce {|first_arg, second_arg| first_arg.send(:+, second_arg)}
(0..5).to_a.reduce {|first_arg, second_arg| first_arg.+(second_arg)}
(0..5).to_a.reduce {|first_arg, second_arg| first_arg + second_arg }
# => 15 # all return...






