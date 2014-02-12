#User is prompted for store
info = []
puts "Which store?"
info << gets.chomp

#user is prompted for product
puts "What product?"
info << gets.chomp

#user is prompted for price
puts "What is the price?"
info << gets.chomp

file = File.new("receipts.txt", "a+")
file.puts info.join(", ")
#a = [store, product, price]




#receipt is saved in a receipts.txt file in a CSV format

###### receipts.txt #######

#barnes and novle, harry potter 4, 16.95
#potbellys, meatball parm, 8.25