# MTA Subway App

# N Subway Line
line_n = ["Times Square", "34th", "28th-North", "23rd-North", "Union Square", "8th"]
# L Subway Line
line_l = ["8th", "6th", "Union Square", "3rd", "1st"]
# 6 (Six) Subway Line
line_six = ["Grand Central", "33rd", "28th-South", "23rd-South", "Union Square", "Astor"]
# 1 (One) Subway Line
line_one = ["59th", "50th", "Times Square", "34th", "28th"]

# Good Line Inputs

def user_choice_line_start
   puts "What line would you like to get on at? The N, L, Six, or One: "
   user_choice_line_start = gets.chomp.downcase
end

def user_choice_line_end
   puts "What line would you like to get off at? The N, L, Six, or One: "
   user_choice_line_stop = gets.chomp.downcase
end

def get_on
   puts "\nWhat stop would you like to get on at?"
   user_start = gets.chomp.downcase
end

def get_off
   puts "\nWhat stop would you like to get off at?"
   user_stop = gets.chomp.downcase
end

########### DEFINITIONS OVER, PROGRAM BEGINS ##############

puts "\n***MTA***\n"

# Gets users starting line
user_line_start = user_choice_line_start

case user_line_start
when "n"
   puts "N stops: " + line_n[0..5].join(", ")
   line_start = line_n
when "l"
   puts "L stops: " + line_l[0..4].join(", ")
   line_start = line_l
when "six"
   puts "Six stops: " + line_six[0..5].join(", ")
   line_start = line_six
when "one"
   puts "One stops: " + line_one[0..4].join(", ")
   line_start = line_one
else
   puts "That line is not an option."
   user_choice_line_start
end

# Gets users beginning stop on line
user_start = get_on

# Gets users ending line
user_line_end = user_choice_line_end

case user_line_end
when "n"
   puts "N stops: " + line_n[0..5].join(", ")
   line_stop = line_n
when "l"
   puts "L stops: " + line_l[0..4].join(", ")
   line_stop = line_l
when "six"
   puts "Six stops: " + line_six[0..5].join(", ")
   line_stop = line_six
when "one"
   puts "One stops: " + line_one[0..4].join(", ")
   line_stop= line_one
else
   puts "That line is not an option."
   user_choice_line_end
end

# Gets users end stop on line
user_stop = get_off

# Calculate number of stops 
if user_line_start == user_line_end
   total_stops = (line_start.index(user_start) - line_stop.index(user_stop)).abs
elsif (user_line_start == "one" && user_line_end == "n") || (user_line_start == "n" && user_line_end == "one") 
   total_stops = ((line_start.index(user_start) - line_start.index("Times Square"))).abs + ((line_stop.index(user_stop) - line_stop.index("Times Square"))).abs
elsif user_line_start == "one" && (user_line_end == "l" || user_line_end == "six")
   puts "\nSorry those lines do not connect."
   total_stops = "?"
elsif user_line_end == "one" && (user_line_start == "l" || user_line_start == "six")
   puts "\nSorry those lines do not connect."
   total_stops = "?"
else
   #unless total_stops.nil?
      total_stops = ((line_start.index(user_start) - line_start.index("Union Square"))).abs + ((line_stop.index(user_stop) - line_stop.index("Union Square"))).abs
   #end
end

# Prints number of stop(s)
if total_stops == 1
   puts "You have #{total_stops} stop." 
else
   puts "You have #{total_stops} stops."  
end