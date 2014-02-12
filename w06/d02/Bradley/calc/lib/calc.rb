class Calculator

  def add(x, y)
    x + y
  end

  def subtract(x, y)
    x - y
  end

  def sum(arr)
    arr.inject(0) {|sum, num| sum + num }
  end

  def multiply(*nums)
    nums.inject(1) { |product, num| product * num}
  end

  def power(base, exp)
    base ** exp
  end

  def factorial(num)
    if num == 0
      return 1
    else
      (1..num).reduce(:*)
    end
  end


end