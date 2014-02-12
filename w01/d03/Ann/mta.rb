 #Creating an MTA app! 
#Phase 1 Complete 
#One line functionality
=begin 

n = ["times_sq", "34th", "28th", "23rd", "union_sq", "8th"]
#n_hash = [times_sq: 1, 34th: 2, 28th: 3, 23rd: 4, union_sq: 5, 8th: 6]

l = ["8th Ave", "6th Ave", "Union Square", "3rd Ave", "1st Ave"]
six = ["Grand Central", "33rd St", "28th St", "23rd St", "Union Square", "Astor Place"]

puts "Welcome to the L Train! Here are your possible stops:"
puts n[1..6] 
 
puts "Where is your starting point?"
starting_pt = gets.chomp   

puts "Where is your end point?"
end_pt = gets.chomp 

total_stops = n.index(starting_pt) - n.index(end_pt) 

puts "You have #{total_stops.abs} stops!"

=end 



#Phase 2 

n = ["times_sq", "34th", "28th", "23rd", "union_sq", "8th"]
l = ["8th", "6th", "union_sq", "3rd", "1st"]
s = ["Grand Central", "33rd St", "28th", "23rd", "union_sq", "astor_place"]

mta = {}
mta[:n] = n
mta[:l] = l
mta[:s] = s

puts "Please choose a line to begin your trip. L, N, or S."
subway_line = gets.chomp.downcase 

case subway_line 
  when "l"
    puts l[0..6]
  when "n" 
    puts n[0..5]
  when "s"
    puts s[0..6]
end 

puts "Is your destination on the same subway line? (y/n)"
line_switch = gets.chomp.downcase.to_s 

if line_switch == "y" 

    puts "Where is your starting point?"
    starting_pt = gets.chomp   

    puts "Where is your end point?"
    end_pt = gets.chomp 

    total_stops = mta[:"#{subway_line}"].index(starting_pt) - mta[:"#{subway_line}"].index(end_pt) 

    puts "You have #{total_stops.abs} stops!"

  end 

if line_switch == "n"

  puts "Please choose a station to begin your ride."
  start_station = gets.chomp.downcase 

  start_station_value = (mta[:"#{subway_line}"].index(start_station)) - (mta[:"#{subway_line}"].index("union_sq"))
  start_final = start_station_value.abs  

  puts "Please choose a subway line to end your ride. L, N, or S."
  subway_end = gets.chomp.downcase 
  case subway_end   
        when "l"
          puts l[0..6]
        when "n" 
          puts n[0..5]
        when "s"  
          puts s[0..6]
      end 

  puts "Please choose a subway station to end your ride. "
  end_station= gets.chomp.downcase 
  end_station_value = (mta[:"#{subway_line}"].index(end_station)) - (mta[:"#{subway_line}"].index("union_sq"))
  end_final = end_station_value.abs  

  puts "You will have #{start_final + end_final} stops in your trip."

end 
  
   
