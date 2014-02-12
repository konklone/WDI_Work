# ruby receipt_reader.#!/usr/bin/env ruby -
# Store: Barnes and NOble
#Product: Harry Potter
#Price : 45.56

file = File.new("receipts.txt", "r")

file.each do |line|
	values = line.split(",")
	puts "Store: #{values[0]}"
	puts "Product: #{values[1]}"
	puts "Price: #{values[2]}"
end
