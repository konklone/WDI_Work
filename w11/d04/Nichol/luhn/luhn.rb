require 'pry'

def valid?(creditCardNumber)
  creditCardNumber = creditCardNumber.to_s
  
  #construct new credit card number
  counter = creditCardNumber.length - 2
  while counter >= 0 do
    creditCardNumber[counter] = (creditCardNumber[counter].to_i * 2).to_s
    counter = counter - 2; 
  end

  #sum new number
  counter = 0
  sum = 0
  while counter < creditCardNumber.length do
    sum = sum + creditCardNumber[counter].to_i
    counter += 1
  end

  puts creditCardNumber
  

  if (sum%10 == 0)
    return true
  else
    return false
  end

end

def elegantValid?(creditCardNumber)
  
  creditCardNumber = creditCardNumber.to_s.split('')
  
  elements = creditCardNumber.length - 1
  elements.step(0, -2){|i| creditCardNumber[i] = (creditCardNumber[i].to_i * 2).to_s}
  creditCardNumber = creditCardNumber.join.split('')
  sum = creditCardNumber.inject{|sum, x| sum.to_i + x.to_i}

  puts creditCardNumber.to_s

  if (sum%10 == 0)
    return true
  else
    return false
  end

 
end

puts valid?(1234567890123456) #should be false
puts valid?(4408041234567893) #should be true
puts valid?(38520000023237) #should be true
puts valid?(4222222222222) #should be true

puts elegantValid?(1234567890123456) #should be false
puts elegantValid?(4408041234567893) #should be true
puts elegantValid?(38520000023237) #should be true
puts elegantValid?(4222222222222) #should be true
