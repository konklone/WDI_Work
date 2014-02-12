n = ['ts', '34th', '28th-n', '23rd-n', 'us']
l = ['8th', '6th', 'us', '3rd', '1st']
s = ['gc', '33rd', '28th-s', '23rd-s', 'us']
o = ['59th','50th', 'ts','34th','28th']
mta = {}
mta[:n] = n
mta[:l] = l
mta[:s] = s
mta[:o] = o

def chomper
  gets.chomp.downcase
end

puts "Which line do you want to get on? N, L, O, or S,?"
line_on = chomper.to_sym

puts "Which stop would you like to get on?"
puts mta[line_on]
stop_on = chomper

puts "Which line do you want to get off? N, L, O, or S?"
line_off = chomper.to_sym
puts mta[line_off]

puts "Which stop would you like to get off?"
stop_off = chomper

if line_on == line_off
  stop1 = mta[line_on].index(stop_on)
  stop2 = mta[line_on].index(stop_off)

  trip_length = (stop2 - stop1).abs
else
  intersection = (mta[line_on] & mta[line_off]).first
  stop1 = mta[line_on].index(stop_on)
  stop2 = mta[line_on].index(intersection)
  stop3 = mta[line_off].index(stop_off)

  trip_length = (stop2 - stop1).abs + (stop3 - stop2).abs
end

puts "Your trip has #{trip_length} stops." 







  

