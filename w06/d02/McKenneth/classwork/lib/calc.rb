
class Calculator

  def add(num1,num2)
    num1 + num2
  end

  def subtract(num1,num2)
    num1-num2
  end

  def sum(numbers)
    # total = 0
    # if numbers[0].nil?
    # total
    # else
    #   numbers.each do |num|
    #     total +=num.to_i
    #   end
    #   total
    # end
    numbers.reduce(0,:+)
  end

  def multiply(*args)
    # total = 1
    # args.each do |arg|
    #   total *= arg
    # end
    # total
    args.reduce(1,:*)
  end  

  def power(base, power)
    total = 1
    while power > 0 do
      total *= base
      power-=1
    end
    total
  end

  def factorial(num)
    # total = 1
    # if num > 0
    #   while num > 0
    #     total *=num
    #     num-=1
    #   end
    #   total
    # else
    #   total
    # end
    if num == 0
      return 1
    end
    (1..num).reduce(:*)
  end

end