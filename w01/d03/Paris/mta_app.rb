n = ['times square', '34th', '28th-n', '23rd-n', 'union station']
l = ['8th', '6th', 'union station', '3rd', '1st']
s = ['grand central', '33rd', '28th-s', '23rd-s', 'union station']
#mta = {'n' => n, 'l' => l, 's' => s}

# mta = {}
# mta[:n] = n
# mta[:l] = l
# mta[:s] = s

#PHASE 2
########## THIS BLOCK ASKS FOR THE LINE ON AND STOP ON #############

puts "What line would you like to get on?"
line_on = gets.chomp.downcase

if line_on == "n"
  puts "Welcome to the N line. Here are your stops: 'times square', '34th', '28th-n', '23rd-n', 'union station'."
elsif line_on == "l"
  puts  "Welcome to the L line. Here are your stops: '8th', '6th', 'union station', '3rd', '1st'."
elsif line_on == "s" 
  puts "Welcome to the S line. Here are your stops: 'grand central', '33rd', '28th-s', '23rd-s', 'union station'."
end 

puts "What stop would you like to get on?"
stop_on = gets.chomp.downcase

########## THIS BLOCK ASKS FOR THE LINE OFF AND STOP OFF #############

puts "What line would you like to get off?"
line_off = gets.chomp.downcase

if line_off == "n"
  puts "Here are your stops: 'times square', '34th', '28th-n', '23rd-n', 'union station'."
elsif line_off == "l"
  puts  "Here are your stops: '8th', '6th', 'union station', '3rd', '1st'."
else line_off == "s"  
  puts  "Here are your stops: 'grand central', '33rd', '28th-s', '23rd-s', 'union station'."
end

puts "What stop would you like to get off?"
stop_off = gets.chomp.downcase

########## THIS BLOCK CALCULATES THE NUMBER OF STOPS PER LINE. #############

####THE FOLLOWING ARE 3 "IF" BLOCKS FOR THE N LINE####

#For the instance that both lines are N
if line_on =="n" && line_off == "n"
    n_hash = Hash[n.map.with_index.to_a]
    n_stop_on_index = n_hash[stop_on] 
    n_stop_off_index = n_hash[stop_off] 
    total_n_line_stops = (n_stop_on_index.to_i - n_stop_off_index.to_i).abs 
    #puts "these are your n stops: #{total_n_line_stops}"
end

#For the instance that the line to get on is n but the line to get off is not n
if line_on == "n" && line_off != "n"
  n_hash = Hash[n.map.with_index.to_a]
  n_stop_on_index = n_hash[stop_on] 
  total_n_line_stops = (4 - n_stop_on_index.to_i).abs # 4 is the index of union station.
  #puts "these are your n stops: #{total_n_line_stops}"
end  

#For the instance that the line to get on is not n and the line to get off is n.
if line_on != "n" && line_off == "n"
  n_hash = Hash[n.map.with_index.to_a]
  n_stop_off_index = n_hash[stop_off] 
  total_n_line_stops = (4 - n_stop_off_index.to_i).abs 
  # puts "these are your n stops: #{total_n_line_stops}"
end 



####THE FOLLOWING ARE 3 "IF" BLOCKS FOR THE L LINE####

#For the instance that both lines are L
if line_on == "l" && line_off == "l"
  l_hash = Hash[l.map.with_index.to_a]
  l_stop_on_index = l_hash[stop_on] 
  l_stop_off_index = l_hash[stop_off] 
  total_l_line_stops = (l_stop_on_index.to_i - l_stop_off_index.to_i).abs
else
  # puts "these are your l stops: #{total_l_line_stops}"
end

#For the instance that the line to get on is L but the line to get off is not L
if line_on == "l" && line_off != "l"
  l_hash = Hash[l.map.with_index.to_a]
  l_stop_on_index = l_hash[stop_on] 
  total_l_line_stops = (2 - l_stop_on_index.to_i).abs # 2 is the index of union station.
  # puts "these are your l stops: #{total_l_line_stops}"
end  

if line_on != "l" && line_off == "l"
  l_hash = Hash[l.map.with_index.to_a]
  l_stop_off_index = l_hash[stop_off] 
  total_l_line_stops = (2 - l_stop_off_index.to_i).abs 
  # puts "these are your l stops: #{total_l_line_stops}"
end 

####THE FOLLOWING ARE 3 "IF" BLOCKS FOR THE S LINE####

#For the instance that both lines are S
if line_on == "s" && line_off == "s"
  s_hash = Hash[s.map.with_index.to_a]
  s_stop_on_index = s_hash[stop_on] 
  s_stop_off_index = s_hash[stop_off] 
  total_s_line_stops = (s_stop_on_index.to_i - s_stop_off_index.to_i).abs
  # puts "these are your s stops: #{total_s_line_stops}"
end 

#For the instance that the line to get on is S but the line to get off is not S
if line_on =="s" && line_off != "s"
  s_hash = Hash[s.map.with_index.to_a]
  s_stop_on_index = s_hash[stop_on] 
  total_s_line_stops = (4 - s_stop_on_index.to_i).abs # 4 is the index of union station.
  # puts "these are your s stops: #{total_s_line_stops}"
end

#For the instance that the line to get on is not S but the line to get off is S
if line_on !="s" && line_off == "s"
  s_hash = Hash[s.map.with_index.to_a]
  s_stop_off_index = s_hash[stop_off] 
  total_s_line_stops = (4 - s_stop_off_index.to_i).abs
  # puts "these are your s stops: #{total_s_line_stops}"
end

#adds the grand total of stops for all lines taken. 
puts "Your total subway stops are: #{(total_n_line_stops.to_i + total_l_line_stops.to_i + total_s_line_stops.to_i)}."
