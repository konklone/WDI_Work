puts valid?(1234567890123456) #should be false
puts valid?(4408041234567893) #should be true
puts valid?(38520000023237) #should be true
puts valid?(4222222222222) #should be true

#   function valid(num){
#     arr = [];
#     arr.push(num)
# }

def valid(num)
  arr = []
  arr.push(num)
end


turn variable passed in to method
into an ARRAY.

split the numbers in the array so that they are 
in their own index.

make a loop that doubles each number in the 
array but stops before the ast number.

make a loop that then adds all of them

If statement that checks if it is a multiple of 10
(num % 10 == 0)

