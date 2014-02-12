def each(collection)
  index = 0

  while index < collection.length
    yield(collection[index])
    index += 1
  end

  return collection
end

def map(array)
  result = []

  i = 0
  while i < array.length
    result << yield(array[i])
    i += 1
  end

  result
end

def select(array)
  result = []

  i = 0
  while i < array.length
    result << array[i] if yield(array[i])
    i +=1
  end

  result
end

def reduce(array, initial)
  if block_given?
    result = initial

    i = 0
    while i < array.length
      result = yield(result, array[i])
      i +=1
    end
  else
    result = if initial == :+ || initial :-
      0
    elsif initial == :* || initial == :/
      1
    end

    array.each { |e| result &initial(e) }
  end

  result
end

def join(array, delimeter)
  result = reduce(array, "") { |output, current| "#{output + current.to_s}#{delimeter} " }[0..-3]
end

a = (1..5).to_a
# p reduce(a, 0) { |sum, n| sum + n }

# b = %w{a b c}
# p join(b, ",")

def takes_a_proc(p)
  p.call
end

reduce(a, :+)