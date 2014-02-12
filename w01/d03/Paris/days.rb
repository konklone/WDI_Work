puts "What day of the week is it? Monday, Tuesday, Wednesday, Thursday, Friday?"
todays_day = gets.chomp.downcase

if todays_day == "monday"
  puts "TGIM!"
elsif todays_day == "tuesday" 
  puts "TGIT!"
elsif todays_day == "wednesday"
  puts "TGIW!"
elsif todays_day  == "thursday"
  puts "TGIT"
else todays_day  == "friday"
  puts "TGIF!"
end 
