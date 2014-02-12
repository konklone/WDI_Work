class Calculator

  def add(x, y)
    x + y
  end

  def subtract(x, y)
    x - y
  end

  def sum(num_array)
    num_array.reduce(0, :+)
  end

  # Using the * will expect any number of arguements and will put them into an array and return an integer
  def multiply(*numbers)
    numbers.reduce(1, :*)
  end

  def power(x, y)
    x**y
  end

end