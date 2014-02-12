class Calculator
  def add(n1, n2)
    n1 + n2
  end

  def subtract(n1, n2)
    n1 - n2
  end

  def sum(array)
    array.inject(0,:+)
  end

  def multiply(*n)
    n.inject(:*)
  end

  def power(n1, n2)
    n1 ** n2
  end

  def factorial(n)
    n == 0 ? 1 : (1..n).inject(:*)
  end
end
