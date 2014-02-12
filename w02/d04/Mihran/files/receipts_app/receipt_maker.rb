# user is promted for store

# user is prompted for product

# user is prompted for price

# receipt is saved in a receipts.txt file in csv format

# ###receipts.txt ####

# barnes and noble, harry potter 4, 4, 16.95

info = [ ]

puts "Which store?"
info << gets.chomp.downcase

puts "Which product?"
info << gets.chomp.downcase

puts "What price?"
info << gets.chomp.to_i

file = File.new("receipts.txt", "a+")

file.puts info.join(",")

file.close

