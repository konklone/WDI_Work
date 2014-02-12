### Receipt Reader ###

# Run receipt_reader.rb

# Store: store name
# Item: item name
# Price: $item price

file = File.new("receipts.txt", "r")

file.each do |line|
   entry = line.split(",")
   puts "\nStore: #{entry[0]}\nItem: #{entry[1]}\nPrice: $#{entry[2]}"
end

file.close
