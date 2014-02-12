
info = []

# User is prompted for store name
puts "What is your store name?"
info << gets.chomp.downcase

# User is prompted for product
puts "What is your product?"
info << gets.chomp.downcase

# User is promted for price
puts "What is the price of your product?"
info << gets.chomp.to_f



# Receipt is saved in a receipts.txt file in CSV format
file = File.new("receipts.txt", "a+")
file.puts info.join(",")
file.close


