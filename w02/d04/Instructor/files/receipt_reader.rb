# ruby receipt_reader.rb
#
# Store: Barnes and Noble
# Product: Harry Potter
# Price: $16.95
#
# Store: Potbelly's
# Product: Meatballs
# Price: $125.25

file = File.new("receipts.txt", "r")

file.each do |line|
  values = line.split(",")
  puts "Store: #{values[0]}"
  puts "Product: #{values[1]}"
  puts "Price: #{values[2]}"
end

file.close