class Calculator

  def add(x,y)
    x+y
  end

  def subtract(x,y)
    x-y
  end
  
  def sum(num_array)
   num_array.reduce(0,:+) 
  end

  def multiply(*numbers)
    numbers.reduce(1,:*)
  end

  def power(base,exponet)
    base**exponet
  end

  def factorial(number)
   if number == 0
    return 1
   end
   (1..number).reduce(:*)
  end
end