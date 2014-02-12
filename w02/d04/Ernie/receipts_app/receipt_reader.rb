#require_relative "recepit_maker"

#recepit_reader.rb 
#runs each of the recepit like so
#Store:
#Product:
#price:
#
#

recepit = File.new("receipt.txt", "r")

recepit.each do |line|
  values = line.split (',')
  puts "Store:#{values[0]}"
  puts "Product:#{values[1]}"
  puts "Price:#{values[2]}"
end

recepit.close