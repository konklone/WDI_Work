### Receipt Maker ###

entry = []

# User is prompted for store name
puts "Please enter the store name:"
entry << gets.chomp

# User is prompted for product
puts "Please enter the item purchased:"
entry << gets.chomp

# User is prompted for price
puts "Please enter the price of said item:"
entry << gets.chomp

# Receipt is saved in receipts.txt file in CSV format
file = File.new("receipts.txt", "a+")

file.puts entry.join(",")

file.close