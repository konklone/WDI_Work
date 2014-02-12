file = File.new("receipts.txt", "r")

file.each do |x|
  values = line.split(",")
  puts "Store: #{values[0]}"
  puts "Product: #{values[1]}"
  puts "Price: #{values[2]}"
end

file.close

