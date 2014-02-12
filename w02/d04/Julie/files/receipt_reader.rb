file = File.new("receipts.txt", "r")

file.each do |line|
  values = line.split(",")   #split tursn the string into an array
  puts "Store: #{values[0]}"
  puts "Product: #{values[1]}"
  puts "Price: #{values[2]}"
end

file.close