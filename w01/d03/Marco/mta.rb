n = ['ts', '34th', '28th-n', '23rd-n', 'us', '8th']
l = ['8th-a', '6th', 'us', '3rd', '1st']
s = ['gc', '33rd', '28th-s', '23rd-s', 'us', 'a']
mta = {}
mta[:n] = n
mta[:l] = l
mta[:s] = s

################################

puts "What MTA Subway line would you like to ride to your destination? (N / L / S)" 
subway_line = gets.chomp.downcase.to_s

case subway_line

  when "n" 
    puts "Stations on the N Line: #{n.join(", ")}"

  when "l"
    puts "Stations on the L Line: #{l.join(", ")}"

  when "s"
    puts "Stations on the S Line: #{s.join(", ")}"

end

puts "Please choose a station to begin your trip."
line_start = mta[subway_line.to_sym].index(gets.chomp.downcase)

puts "Is your destination on the same Subway line? (Yes / No)"
line_switch = gets.chomp.downcase

if line_switch == "no"
  puts "What line would you like to switch to? (N, L, S)"
  line_switch_variable = gets.chomp.downcase

  puts "N Line: #{n.join(", ")}"
  puts "L Line: #{l.join(", ")}"
  puts "Six Line: #{s.join(", ")}"
  puts "Please choose a station on your destination line from the Subway stations above"

  station_switch = gets.chomp.downcase
  line_end_diff = mta[subway_line.to_sym].index(line_switch_variable)

  puts "You have #{(line_start - mta[:"#{subway_line}"].index(line_start)).abs + (mta[:"#{subway_line}"].index(line_switch_variable) - line_end_diff).abs} stops on your trip"

#intersection = ""

else
  puts "Which stop is your destination?"
  line_end_same = mta[:"#{subway_line}"].index(gets.chomp.downcase)
  puts "You have #{(line_end_same - line_start).abs} stops on your trip"
end