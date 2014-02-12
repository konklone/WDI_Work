class Calculator

  def add(a, b)
    a+b
  end

  def subtract(a, b)
    a-b
  end

  def sum(array)
    ans = 0
    array.each do |num|
      ans += num
    end
    ans
  end

  def multiply(*args)
    product = 1
    args.each do |arg|
      product *= arg
    end
    product
  end

  def power(num1, num2)
    num1 ** num2
  end

  def factorial(n)
    (2 .. n - 1).each {|i| n *= i}
    n
  end

end