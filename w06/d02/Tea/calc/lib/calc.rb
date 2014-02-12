class Calculator
  def add(num1, num2)
    num1 + num2
  end

  def subtract(num1, num2)
    num1 - num2
  end

  def sum(arr)
    return 0 if arr == []
    sum = 0
    arr.inject{|sum,x| sum + x }
  end

  def mul(*num)
    result = 1
    num.each{ |n| result = result * n }
    result
  end

  def pow(num1, num2)
    arr = Array.new
    num2.times do 
      arr << num1
    end
    result = 1
    arr.each do |x|
    result = result * x
    end
    result
  end

  def fac(num)
    if num == 1
      return 1
    elsif num == 0
      return 0
    else
      result = num * fac(num-1)
    end
    result
  end
end