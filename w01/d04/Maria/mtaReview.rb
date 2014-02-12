#### PseudoCode ######
# choose starting line
# 	show available lines
# choose starting stop
# 	show available stops

# Line on
# 	option
# Stop on
# 	options
# Line off
# 	options
# transfer?
# 	If No transfer 
# 		then assign value to stops then subtract
# 		make sure its positive and tell user.
# 	end
# transfer is yes
# 		then find where we are transferring
# 		then we find how many stops to transfer point
# 		and then distance to where getting off. 
# 		then add those 2 together and tell user
# 	end
################################## MTA ##############################################
def display_trains(system)
  system.keys.join(', ')
end
 
def display_stops(system, train)
  system[train].join(', ')
end
 
n = ['ts', '34th', '28th-n', '23rd-n', 'us']
l = ['8th', '6th', 'us', '3rd', '1st']
s = ['gc', '33rd', '28th-s', '23rd-s', 'us']
 
mta = {n: n, l: l, s: s}
 
puts "***MTA***"
 
puts "What train do you want to get on? #{display_trains(mta)}"
on_train = gets.chomp.to_sym
puts "Which stop? #{display_stops(mta, on_train)}"
on_stop = gets.chomp
 
puts "What train do you want to get off? #{display_trains(mta)}"
off_train = gets.chomp.to_sym
puts "Which stop? #{display_stops(mta, off_train)}"
off_stop = gets.chomp
 
if on_train != off_train
  intersection = (mta[on_train] & mta[off_train]).first
 
  on_stop_index = mta[on_train].index(on_stop)
  on_stop_intersection_index = mta[on_train].index(intersection)
  before_transfer_length = (on_stop_index - on_stop_intersection_index).abs
 
  off_stop_index = mta[off_train].index(off_stop)
  off_stop_intersection_index = mta[off_train].index(intersection)
  after_transfer_length = (off_stop_index - off_stop_intersection_index).abs
 
  total_trip_length = before_transfer_length + after_transfer_length
else
  on_stop_index = mta[on_train].index(on_stop)
  off_stop_index = mta[off_train].index(off_stop)
  total_trip_length = (on_stop_index - off_stop_index).abs
end
 
puts "Your trip length is #{total_trip_length} stops."
