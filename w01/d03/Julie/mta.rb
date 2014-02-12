
def display_trains

#this code doesn't work :(ls
n = ["times square", "34th", "28th", "23rd", "union square", "8th"]
l = ['8th', '6th', 'us', '3rd', '1st']
s = ['gc', '33rd', '28th-s', '23rd-s', 'us']

mta = {n: n, l: l, s: s}


puts "what line would you like to get on? #{}"
line_on = gets.chomp.downcase
if line_on == "l"
  puts "the line goes to #{l}"
  puts "What stop will you be getting on?"
  stop_on_l = gets.chomp.downcase
else
  puts "the line goes to #{n}"
  stop_on_n = gets.chomp.downcase
end


puts "what line would you like to get off? (l/n)"
line_off = gets.chomp.downcase
if line_off == "l"
  puts "the line goes to #{l}"
  puts "Where will you be getting off?"
  line_off_l = gets.chomp.downcase
else
  puts "the line goes to #{n}"
  line_off_n = gets.chomp.downcase
end



stop_on_index_n = (n_hash[stop_on_n] - 4).abs
stop_on_index_l = (l_hash[stop_on_l] -2).abs  

stop_off_index_n = (n_hash[line_off_l] - 4).abs
stop_off_index_l = (n_hash[line_off_n] - 2).abs

if line_on == "l" && line_off == "l"
  puts "#{stop_on_index_l + stop_off_index_l} "
elsif line_on == "l" && line_off == "n"
  puts "#{stop_on_index_l + stop_off_index_n}"
elsif line_on == "n" && line_off == "l"
  puts "#{stop_on_index_n + stop_off_index_l}"
else puts "#{stop_on_index_n + stop_off_index_n}"
end
  

#This code worked for getting one stop
# n = ["times square", "34th", "28th", "23rd", "union square", "8th"]

# puts "What stop will you be getting on?"
# stop_on = gets.chomp.downcase
# puts "Where will you be getting off?"
# stop_off = gets.chomp.downcase
# end

# n_hash = Hash[n.map.with_index.to_a]
# stop_on_index = n_hash[stop_on]
# stop_off_index = n_hash[stop_off]

# find_difference = (stop_off_index - stop_on_index).abs

# puts  "You have #{find_difference} stops to go."

















