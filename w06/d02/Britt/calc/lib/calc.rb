class Calculator
  def add num1, num2
    num1 + num2
  end

  def subtract num1, num2
    num1 - num2
  end

  def sum ary
    ary.length == 0 ? 0 : ary.reduce(:+)
  end

  def multiply *nums
    if nums.length < 2
      "please enter at least two numbers."
    else
      nums.reduce(:*)
    end
  end

  def power base, exp
    if exp == 0
      1
    else
      result = base
      (exp - 1).times do
        result = result * base
      end
      result
    end
  end

  def factorial num
    case num
    when 0 || 1
      1
    else
      num * factorial(num - 1)
    end
  end

end