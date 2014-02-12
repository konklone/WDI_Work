# Receipts should look like this

file = File.new("receipts.txt", "r")

file.each do |line|
  # this will return an array with 3 values
  values = line.split(",")
  puts "Store: #{values[0]}"
  puts "Product: #{values[1]}"
  puts "Price: #{values[2]}"
  puts ""
end

file.close






