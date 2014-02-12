
input = []
# prompt  for store name
puts "Where'd you get it?"
input << gets.chomp

# prompt for product
puts "What'd you buy?"
input << gets.chomp

# prompt for price
puts "What did it cost you?"
input << gets.chomp
# save receipt in receipts.txt file in CSV format, puts to string
file = File.new("receipts.txt", "a+")

file.puts input.join(", ")

file.close