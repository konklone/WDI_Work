#run this file

#print out each entry
#store:asdfasd
#item:dsfasdf
#price:asdfasd

file = File.new("receipts.txt","r")

file.each do |line|
  each_one = line.split(",")
  puts "Store: #{each_one[0].capitalize}"
  puts "Item: #{each_one[1].capitalize}"
  puts "Price: $#{each_one[2]}"
  puts
end

file.close