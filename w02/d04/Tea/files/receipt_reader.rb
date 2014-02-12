file = File.new("receipts.txt", "r")

file.each do |line|
  item = line.split(", ")
  puts "Store: #{item[0]}"
  puts "Product: #{item[1]}"
  puts "Price: #{item[2]}"
  puts "\n-----------------\n"
end

file.close
