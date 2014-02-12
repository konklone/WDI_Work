#ruby receipts_reader.rb 
#
# Store : Barnes and NOble
# Product: Harry Potter
# Price: $5
#
# Store: Giant
# Podcut: Beer
# Price: $5


file = File.new("receipts.txt", "r")
file.each do |line|
	purchase = line.split ","
	puts "Store: #{purchase[0]}"
	puts "Prodcut: #{purchase[1]}"
	puts "Price: #{purchase[2]}"
	puts ""
end
file.close
