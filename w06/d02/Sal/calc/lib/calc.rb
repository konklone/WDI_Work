class Calculator
  def add(val1, val2)
    val1 + val2
  end

  def subtract(val1, val2)
    val1 - val2
  end

  def sum(array)
    sum = 0 
    array.each {|i| sum += i} 
    sum   
  end

  def multiply(*numbers)
   numbers.reduce(1, :*)
  end

  def power(val1, val2)
    val1 ** val2 
  end

  def factorial(val)
    if val == 0 
      return 1
    end
    (1..val).reduce(:*)
  end
end