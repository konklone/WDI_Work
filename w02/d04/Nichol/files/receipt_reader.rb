require "pry"

file = File.new("receipts.txt", "r")
file_as_array = Array.new

file.each do |line|
	puts line
	file_as_array << line
end


puts file_as_array[0]

# puts file.read

# file.rewind

# file_as_string = file.read
# my_array = file_as_string

# new_array = my_array.split(", ")

# puts my_array[0]
# puts my_array[1]
# puts new_array

# #binding.pry