n = ["ts", "34th", "28th", "23rd-n", "us"]
l = [ "8th", "6th", "us", "3rd", "1st"]
s = ["gc", "33rd", "28th-s", "23rd-s", "us"]
o = ["59th", "50th", "Times Square", "34th", "28th"]
mta = { "n" => n, "l" => l, "s" => s, "1" => 1 }

#def display_trains(system) ## passing a parameter into a method
#  system.keys.join(' , ')
#end

#def display_stops(system, train)
#system[train].join(' , ')
#end
puts "*****MTA*****"
puts "What line are you getting on: (N), (L) (S)ix or (O)ne?"
line = gets.chomp.downcase.to_sym
if line == :n
  puts n
elsif line == :l
  puts l
elsif line == :s
  puts s
elsif line == :o
  puts o
end

if line == :l

puts "Where would you like to start?" # #{display_trains(mta)}
start = gets.chomp.downcase
puts "Where would you like to finish?" # #{display_stops(mta, on-train)}
finish = gets.chomp.downcase
puts "Your destination is #{(l.index(start) - l.index(finish)).abs} stops away."
 elsif line == :n
puts "Where would you like to start?" 
start = gets.chomp.downcase
puts "Where would you like to finish?"
finish = gets.chomp.downcase
puts "Your destination is #{(n.index(start) - n.index(finish)).abs} stops away."
elsif line == :s
puts "Where would you like to start?" 
start = gets.chomp.downcase
puts "Where would you like to finish?"
finish = gets.chomp.downcase
puts "Your destination is #{(s.index(start) - s.index(finish)).abs} stops away."
elsif line == :o
puts "Where would you like to start?" 
start = gets.chomp.downcase
puts "Where would you like to finish?"
finish = gets.chomp.downcase
puts "Your destination is #{(o.index(start) - o.index(finish)).abs} stops away."
end

if 




# puts "Where would you like to finish?"
# finish = gets.chomp.downcase
# puts "Your destination is #{n.index(start) - n.index(finish)} stops away."


# when start = :n
#   when :n 
#     puts n
#   when :l
#     puts l
#   when :s
#     puts s 
#   end
# when :n 
#   puts n  

# elsif stop_on && stop_off == :l
#   then puts "your destination is #{(l.index(stop_on) - l.index(stop_off))} away"
# elsif stop_on && stop_off == :s
#   then puts "your destination is #{(s.index(stop_on) - s.index(stop_off))} away"
if on_train != off_train
 intersection = (mta[on_train]) & mta[off_train]).first
# the & operator returns an array 
# .first gives you first of array

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
  total_trip_length = (on_stop_index - off_stop_index)
# on_stop_index = mta[on_train].index(on_stop)
off_stop_index = mta[off_train].index(off_stop)
total trip length = (on_stop_index - off_stop_index).abs

