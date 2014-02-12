class Calculator
   def add(num1, num2)
      num1 + num2
   end

   def subtract(num1, num2)
      num1 - num2
   end

   def sum(nums)
      nums.reduce(0, :+)
      
      # total = 0
      # if nums.empty?
      #    total
      # else
      #    nums.each do |num|
      #       total += num 
      #    end
      #    total
      # end
   end

   def multiply(*nums)
      nums.reduce(1, :*)

      ### If passing in an array
      # total = 1
      # nums.each do |num|
      #    total = total * num
      # end
      # total
   end

   def power(base, power)
      base ** power
   end

   def factorial(num)
      (1..num).reduce(1, :*)
      # (1..num).inject(1) do |total, num| 
      #    total * num 
      # end
   end

end