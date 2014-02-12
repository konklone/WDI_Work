def valid?(num)
  num = num.to_s.split('').map(&:to_i).reverse
  x = 0
  newNum =  num.map do |i|
    x += 1
    if x.even?
      num = i*2
    else
      num = i
    end
    num
  end
  newNum = newNum.join.split("").to_a.map{|i| i.to_i}
  sum = newNum.reduce(:+) % 10 == 0
end

puts valid?(1234567890123456) #should be false
puts valid?(4408041234567893) #should be true
puts valid?(38520000023237) #should be true
puts valid?(4222222222222) #should be true
