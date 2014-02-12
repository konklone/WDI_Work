class Calculator

  def add(var1, var2)
    var1 + var2
  end

  def subtract(var1, var2)
    var1 - var2
  end

  def sum (array)
    array.reduce(0, :+)
  end

  def multiply(*numbers)
    numbers.reduce(1, :*)
  end

  def power(var1, var2)
    var1**var2
  end

  def factorial(num)
    if num == 0
      return
    end
    (1..num).reduce(:*)
  end
end