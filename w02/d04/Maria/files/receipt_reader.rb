#ruby receipt_reader.rb
#Store: Barnes and nOble
#Product: Harry Potter
#Price: $16.95







file = File.new("receipts.txt", "r") #this gets the info in the receipts.txt file

file.each do |line|
  values = line.split(",") # remember this returns it as an array
  puts "Store: #{values[0]}"
  puts "Product: #{values[1]}"
  puts "Price: #{values[2]}"
end
file.close
