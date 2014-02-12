class Calculator

  def add (x, y)
    x+y
  end

  def subtract (x, y)
    x-y
  end

  def sum (array)
    sum = array.reduce(0, :+)
  end

  def multiply (*numbers)
    numbers.reduce(1,:*)
  end

  def power(x,y)
    x**y
  end

  def factorial(x)
    array = [1]
      i = 1
        while i <= x
          array.push i
          i += 1
        end
    array.reduce(1,:*)
  end
    
end