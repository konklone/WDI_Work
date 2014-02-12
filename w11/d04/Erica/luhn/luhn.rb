require 'pry'

# puts valid?(1234567890123456) #should be false
# puts valid?(4408041234567893) #should be true
# puts valid?(38520000023237) #should be true
# puts valid?(4222222222222) #should be true

def validCreditCard(cardNumber)
  sum = 0
  nums = cardNumber.to_s.split("")
  nums.each_with_index do |n, i|
    sum += if (i % 2 == 0)
             n.to_i * 2 >9 ? n.to_i*2-9 : n.to_i*2
           else
             n.to_i
           end
  end
  if (sum % 10) == 0
    return true
  else
    return false
  end
end

binding.pry
