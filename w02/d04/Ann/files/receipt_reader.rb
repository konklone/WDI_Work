#Run ruby receipt_reader.rb 
#prints each of the receipts 
#Store: Barnes and Noble 
#Product: Harry Potter
#Price: 16.95 

File.new("receipt.txt", "r")

file.each do |line|
   values = line.split(" , ")
   puts "Store: #{values[0]}" 
   puts "Product: #{values[1]}"
   puts "Price: #{values[2]}"
end 

