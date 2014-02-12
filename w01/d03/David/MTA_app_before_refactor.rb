#train lines stops stored in arrays
n = ["8th-n", "union square", "23rd-n", "28th-n", "34th-n", "times square"]
l = ["1st", "3rd", "union square", "6th", "8th-l"]
s = ["Astor", "union square", "23rd-s", "28th-s", "33rd", "grand central"]
i = ["28th-i", "34th-i", "times square", "50th", "59th"]

#hash containing the train line arrays
mta = { n: n, l: l, s: s, i: i }

#****** Peter's code for displaying train lines, pass the parameter mta, this will return strings not symbols ******
def display_trains(system)
  system.keys.join(', ')
end

#****** Peter's code for displaying stops lines ******
def display_stops(system, train)
  system[train].join(', ')
end

#lists the stops on a certain line
def list_stops(array, line)
  iterator = 0
  while iterator < array[line].length
    puts array[line][iterator]
    iterator = iterator + 1
  end
end

#gets the index of an array and converts to an integer
def get_array_key(array, line, stop)
  array[line].index(stop).to_i
end

#attemp to find single intersection withough having to specifiy independent values for stops
# def find_transfer (line1, line2)
#   iterator = 0 
#   intersection = array[line1] & array[line2]
#   while iterator <= intersection.length
#       if intersection[iterator] == "union square"
#         return interintersection[iterator]
#       break
#       elsif intersection[iterator] == "times square"]
#         return intersection[iterator]
#       break
#       else
#       iterator = iterator + 1
#     end
#   end
# end

# ******Can write a method for displaying trains*******
print "What line would you like to get on- (N)line, (L)line, (S)line, or (I)line: ?"
line_on = gets.chomp.downcase.to_sym

#method listing all stops for chosen train line
list_stops(mta, line_on)
puts "What stop would you like to get on?"
stop_on = gets.chomp.downcase


# ******Can write a method for displaying trains*******
puts "What line would you like to get off(N)line, (L)line, (S)line, or (I)line: ?"
line_off = gets.chomp.downcase.to_sym
#method listing all stops for chosen train line
list_stops(mta, line_off)

puts "What stop would you like to get off at?"
stop_off = gets.chomp.downcase

#variable defining the intersection of the 3 train lines i.e. N, L, and S
intersection = mta[line_on] & mta[line_off]
intersection = intersection[0]

#************ Peter's code for finding intersectioin -- alternative to intersection[0]*************
#intersection = (mta[line_on] & mta[line_off]).first

#determines if user transfered lines and uses array keys to find number of stops
if line_on != line_off
  before_transfer = (get_array_key(mta, line_on, stop_on) - get_array_key(mta, line_on, intersection)).abs
  after_transfer = (get_array_key(mta, line_off, intersection) - get_array_key(mta, line_off, stop_off)).abs
  
  #DEBUGGING
  #puts "Debug - before_transfer : #{before_transfer}, after_transfer: #{after_transfer}, line_on: #{line_on}, stop_on: #{stop_on}, line_off: #{line_off}, stop_off: #{stop_off}, intersection: #{intersection}"
  
  distance = before_transfer + after_transfer
  puts "You traveled #{distance} stops and transfered at #{intersection}"
else
  stop_off_number = get_array_key(mta, line_off, stop_off)
  stop_on_number = get_array_key(mta, line_on, stop_on)
  
  # DEBUGGING
  # puts "Debug - stop_off_number: #{stop_off_number}, stop_on_number: #{stop_on_number}, stop_on: #{stop_on}, line_off: #{line_off}, stop_off: #{stop_off}"
  distance = (stop_off_number - stop_on_number).abs
  puts "You traveled #{distance} stops"
end

#********* Can pull the puts code for the distance out of the if statement *********






