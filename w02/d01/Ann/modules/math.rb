# module OurMath 
#   def add(a,b)
#     a + b 
#   end 
# end 

# users = {
#   "Peter" => {
#     :github => "peterylai",
#     :favorite_numbers => [12, 42, 75],
#   },
#   "PJ" => {
#     :github => "h4w5",
#     :favorite_numbers => [8, 12, 24],
#   },
#   "Jeff" => {
#     :github => "jkonowitch",
#     :favorite_numbers => [12, 14, 85],
#   },
# }

nums = [1,2,3]

new_array = []

nums.each do |num|
  new_array.push(num +2) 
end 

sum = 0; nums.each do |num|
  sum += num
end 

nums.reduce(0) do |sum, nxt|
  sum + nxt 
end 
#REDUCE takes a block as an argument --> 
#sum is the sum of all the numbers so far 

names = ["Jeff", "PJ", "Peter"]

names.reduce do |string, nxt_name|
  strong + nxt_name
end 