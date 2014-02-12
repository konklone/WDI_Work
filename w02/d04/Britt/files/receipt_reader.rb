# Will display each receipt entry to User
file = File.new("receipts.txt", "r")

file.each do |line|
	item_info = []
	item_info = line.split(",")

	puts "\nStore: #{item_info[0]}"
	puts "Product: #{item_info[1]}"
	puts "Price: $#{item_info[2]}"
end

file.close