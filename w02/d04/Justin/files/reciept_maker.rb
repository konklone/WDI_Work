info = []

# User is prompted for store
puts "Please enter a store:"
# store = gets.chomp
info << gets.chomp

# User is prompted for product
puts "What product did you buy?:"
# product = gets.chomp
info << gets.chomp

# User is prompted for price
puts "what did the product cost?:"
# price = gets.chomp
info << gets.chomp

#a = [store,product,price]

# Receipt is saved in a receipts.txt file in CSV format
file = File.new("receipts.txt", "a+")
file.puts info.join(",")
file.close

#### receipts.txt ######

# barens and noble,harry potter 4, 16.95
# potbellys, meatball parm, 8.25