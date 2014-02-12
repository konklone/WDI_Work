# Store: Barnes and Noble
# Product: Harry Potter
# Price: 16.95

# Store: Potbelly's
# Product: Meatballs
# Price: $125.25

file = File.new("receipts.txt", "r")

file.each do |line|
  info = line.split(",")
  puts "Store: #{info[0]}"
  puts "Product: #{info[1]}"
  puts "Price: $#{info[2]}\n"
end

file.close
