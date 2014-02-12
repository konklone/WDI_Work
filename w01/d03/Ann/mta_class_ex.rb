=begin 
def display_trains(system)
  system.keys.join(" , ")
end 

#displaying trains - keys fxn grabs keys (n, l, s) and gives it to user in an array 

def display_stops (system, train)
  system[train].join(" , ")
end 

n = ["times_sq", "34th", "28th-n", "23rd-n", "union_sq", "8th-n"]
l = ["8th-l", "6th", "union_sq", "3rd", "1st"]
s = ["grand_c", "33rd", "28th-s", "23rd-s", "union_sq", "astor_place"]

mta = {n: n, l: l, s: s}


puts "**** MTA ****"

puts "What train do you want to get on? #{display_trains(mta)}"
on_train = gets.chomp.to_sym

puts "Which stop? #{display_stops(mta, on_train)}"
on_stop = gets.chomp

puts "What train do you want to get on? #{display_trains(mta)}"
off_train = gets.chomp.to_sym

puts "Which stop? #{display_stops(mta, off_train)}"
off_stop = gets.chomp

if on_train != off_train 
  intersection = (mta[on_train] & mta[off_train]).first 

  on_stop_index = mta[on_train].index(on_stop)
  on_stop_intersection_index = mta[on_train].index(intersection)
  before_transfer_length = (on_stop_index - on_stop_intersection_index).abs 

  puts "Off stop #{off_stop}"
  puts "On train #{on_train}"
  off_stop_index = mta[off_train].index(off_stop)
  puts "Off stop index #{off_stop_index}"
  off_stop_intersection_index = mta[off_train].index(intersection)
  puts "Off stop intersection index #{off_stop_intersection_index}"
  after_transfer_length = (off_stop_index - off_stop_intersection_index).abs 

  total_trip_length = on_stop_index + off_stop_index  

  else 
    on_stop_index = mta[on_train].index(on_stop)
    off_stop_index = mta[off_stop].index(off_stop)
    total_trip_length = (on_stop_index - off_stop_index).abs
end 

puts "Your trip legnth is #{total_trip_length} stops."
=end 

# A method that returns a string with all of the train lines listed, separated by a comma
def display_trains(system)
  return system.keys.join(', ')
end

# A method that returns a string with all of the stops on a train line listed, separated by a comma
def display_stops(system, train)
  return system[train].join(', ')
end

# Each of the train lines modelled as an array, and stored in a variable with the train line name
n = ['ts', '34th', '28th-n', '23rd-n', 'us']
l = ['8th', '6th', 'us', '3rd', '1st']
s = ['gc', '33rd', '28th-s', '23rd-s', 'us']

# A hash that represents the entire subway system.The keys are symbols and the values are arrays containing the stops.
mta = {n: n, l: l, s: s}

# Print the title of the application
puts "***MTA***"

# Ask the train and stop the user wants to get on, and store them in variables
puts "What train do you want to get on? #{display_trains(mta)}"
on_train = gets.chomp.to_sym
puts "Which stop? #{display_stops(mta, on_train)}"
on_stop = gets.chomp

# Ask the train and stop the user wants to get off, and store them in variables
puts "What train do you want to get off? #{display_trains(mta)}"
off_train = gets.chomp.to_sym
puts "Which stop? #{display_stops(mta, off_train)}"
off_stop = gets.chomp

# Decide if we have to transfer or not
if on_train != off_train #If we do have to transfer

  # Find out what the transfer point is
  intersection = (mta[on_train] & mta[off_train]).first

  # Find out the distance from our on stop to the transfer point
  on_stop_index = mta[on_train].index(on_stop)
  on_stop_intersection_index = mta[on_train].index(intersection)
  before_transfer_length = (on_stop_index - on_stop_intersection_index).abs

  # Find out the distance from our transfer point to the off stop
  off_stop_index = mta[off_train].index(off_stop)
  off_stop_intersection_index = mta[off_train].index(intersection)
  after_transfer_length = (off_stop_index - off_stop_intersection_index).abs

  # Add our before transfer and after transfer stops to get the total length
  total_trip_length = before_transfer_length + after_transfer_length
else #If we don't have to transfer

  # Find out the distance from our on stop to the off stop
  on_stop_index = mta[on_train].index(on_stop)
  off_stop_index = mta[off_train].index(off_stop)
  total_trip_length = (on_stop_index - off_stop_index).abs
end

# Print out the trip length
puts "Your trip length is #{total_trip_length} stops."