receipt_info = []

# User is prompted for store
puts "What store is the purchase from?"
receipt_info << gets.chomp


# User is prompted for product
puts "What product did you purchase?"
receipt_info << gets.chomp

# User is prompted for price
puts "How much did it cost?"
receipt_info << gets.chomp.to_f

# Receipt is saved in a receipts.txt file in CSV format
file = File.new("receipts.txt", "a")

file.puts info.join(",")