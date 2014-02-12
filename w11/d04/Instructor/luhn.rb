class Integer
  def digits
    to_s.chars.map(&:to_i)
  end
end

def valid?(number)
  reversed_digits = number.digits.reverse

  luhn_sum = reversed_digits.each_with_index.map do |num, i|
    i.odd? ? (num * 2).digits.reduce(&:+) : num
  end.reduce(&:+)

  luhn_sum % 10 == 0
end

puts valid?(1234567890123456) #should be false
puts valid?(4408041234567893) #should be true
puts valid?(38520000023237) #should be true
puts valid?(4222222222222) #should be true