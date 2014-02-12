class Calculator

  def add(x,y)
    x + y
  end

  def subtract(x,y)
    x - y
  end

  def sum(array)
    array.reduce(0,:+) 
  end

  def multiply(*numbers)
    # 1 is the initial value, :* means multiply everything
    numbers.reduce(1,:*)
  end

  def power(x,y)
    x**y
  end

  def factorial(n)
    if n == 0
      return 0
    end
    1.upto(n).inject(:*)
  end

end