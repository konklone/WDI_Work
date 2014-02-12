def each(collection)
    length = collection.length
    index = 0
    while index < length
      yield collection[index]
      index += 1
    end
    return collection
end

a = *100..110
each(a) {|el| puts "This element is #{el}!"}

def map(collection)
    new_collection = [] 
    length = collection.length
    index = 0
    while index < length
      x = yield collection[index]
      index += 1
      new_collection << x
    end
    return new_collection
end
map(a) {|el| el * 2}

def select(collection)
    selected_collection = [] 
    length = collection.length
    index = 0
    while index < length
      if yield collection[index]
        selected_collection << collection[index]
      end
       index += 1
    end
    return selected_collection
end

a = *100..110
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
  reduce(arr, "") {|output, current| output + current.to_s + delimiter }
end

shinynewproc = Proc.new {|el| el % 2 == 0}    
a.select &shinynewproc    
# unary ampersand: unwraps the proc to get the block.

def takes_a_proc( p )
  p.call
end

new_proc = Proc.new {puts "Hello!"}
new_proc
3.times &new_proc
takes_a_proc new_proc

def three_times( obj )
  3.times &obj
end

three_times(Proc.new{puts "Hip Hip Hooray"})

