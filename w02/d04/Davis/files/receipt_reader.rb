# ruby receipt_reader.rb
# => Store: Barnes & Noble
# => Product: Harry Potter
# => Price: $16.95
# etc

receipt = File.new("receipt.txt","r")
receipt.each do |line|
	a = line.split(",")
	puts "Store: #{a[0]}"
	puts "Product: #{a[1]}"
	puts "Price: $#{a[2]}"
end
receipt.close

