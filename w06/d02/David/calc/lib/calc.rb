class Calculator

  def add(val1, val2)
    val1 + val2
  end

  def subtract(val1, val2)
    val1 - val2
  end

  def sum(arr)
    # sum = 0
    # arr.each do |item|
    #   sum = sum + item
    # end
    sum = arr.reduce(0, :+)
    sum
  end

  def multiply(*numbers)
    numbers.reduce(1, :*)
  end

  def power(base, power)
    # if power == 0
    #   result = 1
    # else
    #   result = 1
    #   power.times do
    #     result = result * base
    #   end
    # end
    # result
    base ** power
  end

  def factorial(val)
    if val <= 1
      result = 1
    else
      result = val * factorial(val -1 )
    end
    result

    if val == 0
      return 1
    end
    # (1..number).reduce(:*)
  end

end