info = []


#User is prompted for store
puts "What's the store?"
info << gets.chomp
#User is prompted for product

puts "Whats the product?"
info << gets.chomp

puts "What's the price?"
info << gets.chomp

file = File.new("receipts.txt", "a+")

file.puts info.join(", ")


#User is prompted for price

#Receipt is saved in a receipts.txt file in CSV format

#### receipt.txt ####
#barnes and noble, harry potter 4, 16.95
#potbellys, meatball parm, 8.25