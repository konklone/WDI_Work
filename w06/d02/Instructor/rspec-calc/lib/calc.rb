class Calculator

def add(first, second)
  first + second
end

def subtract(first, second)
  first - second
end

def sum(num_array)
  num_array.reduce(0, :+)
end

def multiply(*numbers)
  numbers.reduce(1, :*)
end

def power(first, second)
  first**second
end

def factorial(number)
  if number == 0
    return 1
  end
  (1..number).reduce(:*)
end

end