class Calculator

  def add (value1, value2)
    value1 + value2
  end

  def subtract(value1, value2)
   value1 - value2
  end

  def sum(array1)
    array1.reduce(:+)
  end

  def multiply(*numbers)
    numbers.reduce(1, :*)
  end

  def power(base, exponent)
    (exponent == 1) ? (return base) : (base * power(base, exponent-1))
  end

  def factorial (number)
    (number == 0) ? (return 1) : (number * factorial(number-1))
  end

end

