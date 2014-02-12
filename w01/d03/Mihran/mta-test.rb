$mta = {
    n: ['ts', '34th', '28th-n', '23rd-n', 'us'], 
    l: ['8th', '6th', 'us', '3rd', '1st'], 
    s: ['gc', '33rd', '28th-s', '23rd-s', 'us']
            }

# def origin_line_choice
  print "Which line do you want to get on? N or L?"
  origin_line = gets.chomp.downcase
    case origin_line 
    when"n"
      puts $mta[:n]
    when "l"
      puts $mta[:l]
    end
# end

origin_line = origin_line.to_sym

# def origin_stop_choice
  puts "At which stop do you want to get on?"
  origin_stop = $mta[origin_line].index(gets.chomp.downcase)
  puts "that's index #{origin_stop} on the #{origin_line} line" #this can be deleted#


  puts "Which line do you want to get off? N or L?"
   destination_line = gets.chomp.downcase
    case destination_line 
    when"n"
      puts $mta[:n]
    when "l"
      puts $mta[:l]
    end

destination_line = destination_line.to_sym

  puts "Which stop do you want to get off?"
    destination_stop = $mta[destination_line].index(gets.chomp.downcase)

    # puts "OK that's index #{destination_stop}" #this can be deleted#

if origin_line == destination_line
  puts "You must ride #{(destination_stop - origin_stop).to_i.abs} stops!"
end



if origin_line != destination_line
  if origin_line == "n" 
    puts "You must ride ((4 - origin_stop.abs + (2 - destination_stop.abs)).to_i.abs stops!"
  end
end


# if origin_line != destination_line
#   if origin_line == "l" 
#     puts "You must ride #{((2 - origin_stop.abs) + (4 - destination_stop).abs).to_i.abs} stops!"
#   end
# end



#       answer = (4 - origin_stop.abs)) + (2 - destination_stop).abs).to_i.abs
# end

# #   puts "#{answer} stops!"



