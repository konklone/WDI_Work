#subway lines######
subway = {
n: ["times square", "34th", "28th", "23rd", "union square", "8th"], 
l: ["8th ave", "6th ave", "union square", "3rd ave", "1st ave"]
}

# n_line = ["Times Square", "34th", "28th", "23rd", "Union Square", "8th"]
# l_line = ["8th Ave", "6th Ave", "Union Square", "3rd Ave", "1st Ave"]
###################

#choice methods####
def train_choice
  puts "Please choose a Train: (n) line or (l) line to get on"
  gets.chomp.downcase
end

def stop_on_choice
  puts "Please choose a stop to get on"
  gets.chomp.downcase
end

def line_off_choice
puts "What line do you wish to get off at?"
gets.chomp.downcase
end

def stop_off_choice
  puts "Please choose a stop to get off?"
  gets.chomp.downcase
end

#commute counter for a single subway line
def how_many_stops(subway, on, off)
#array
      choice_subway = subway

      choice_subway.index(off) - choice_subway.index(on)
end

#start execution##############################################

# ask user what subway_LINE want to get on until they say get OFF
case train_choice
  #if user says n-LINE
  when 'n'
  #provide all stops of n-LINE
      subway[:n].each { |line| puts line }

  #ask what STOP to get ON at
      $stop_start = stop_on_choice

  #ask what LINE to get OFF at
      line_stop = line_off_choice

  #provide all stops of OFF LINE
      subway[line_stop.to_sym].each { |line| puts line }
  #ask what STOP to get OFF at
      $stop_end = stop_off_choice

    #return number of stops

    #if within N
      if line_stop == 'n'
          puts how_many_stops(subway[:n], $stop_start, $stop_end)
            #if from N to L ||
        elsif line_stop == 'l'
              #simple count of N + simple count of L
              #reverse the L line if going west to allow for 'rightward' counting-style
            if $stop_start != '8th ave' && ($stop_end == '8th ave' || $stop_end == '6th ave')
                puts how_many_stops(subway[:n], $stop_start, 'union square') + how_many_stops(subway[:l], 'union square', $stop_end)
            else
                puts how_many_stops(subway[:n], $stop_start, 'union square') + how_many_stops(subway[:l], 'union square', $stop_end)
            end
      else
                nil

end 


#if user says l-LINE

  when 'l'
  #provide all stops of l-LINE
      subway[:l].each { |line| puts line }

  #ask what STOP to get ON at
      $stop_start = stop_on_choice

  #ask what LINE to get OFF at
      line_stop = line_off_choice

  #provide all stops of OFF LINE
      subway[line_stop.to_sym].each { |line| puts line }
  #ask what STOP to get OFF at
      $stop_end = stop_off_choice

    #return number of stops

if line_stop == 'l'
          puts how_many_stops(subway[:l], $stop_start, $stop_end)
            #if from N to L ||
        elsif line_stop == 'n'
            #   #simple count of N + simple count of L
            #   #reverse the L line if going west to allow for 'rightward' counting-style
            # if $stop_start != '8th ave' && ($stop_end == '8th ave' || $stop_end == '6th ave')
            #       puts how_many_stops(subway[:l], $stop_start, 'union square') + how_many_stops(subway[:n], 'union square', $stop_end)
            #   else
                  puts how_many_stops(subway[:l], $stop_start, 'union square') + how_many_stops(subway[:n], 'union square', $stop_end)
            end
      else
           nil

end 


end