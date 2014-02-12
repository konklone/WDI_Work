# ruby receipt_reader.rb 
# store: barnes and noble 
# product: harry potter 
# price: $16.95
#

# store. potbelly's   
# product: meatballs  
# price: $125.25

# info = []

# puts "What store would you like to shop at?"
# info << gets.chomp
# puts "What product would you like to buy?"
# info << gets.chomp
# puts "How much?"
# info << gets.chomp





file = File.new("receipts.txt", "r")

file.each do |line|
  line.split(", ")
  values = line.split(",")
  puts "Store: #{values[0]}"
  puts "Product: #{values[1]}"
  puts "Price: #{values[2]}"
end

file.close



