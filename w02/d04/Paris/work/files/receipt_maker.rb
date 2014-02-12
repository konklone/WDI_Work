# bn 
# harry potter book
# price
# receipt is saved in receipts.txt file in CSV format

### receipts.txt ###

# barnes and noble, harry potter 4, 16.95
# potbellys, meatball parm, 8.25

info = []

puts "What store would you like to shop at?"
info << gets.chomp
puts "What product would you like to buy?"
info << gets.chomp
puts "How much?"
info << gets.chomp

# a = [store, product, price]

file = File.new("receipts.txt", "a+")

file.puts info.join(", ")

