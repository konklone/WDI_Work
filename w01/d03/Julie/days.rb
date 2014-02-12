puts "What day of the week is today?"
day = gets.chomp.downcase

case day
when "monday"
  puts "Boo!"
when "tuesday"
  puts "Meh"
when "wednesday"
  puts "Hump Day!"
when "thursday"
  puts "Almost there!"
when "friday"
  puts "Happy Hour!"
when "saturday"
  puts "Lets go out!"
when "sunday"
  puts "Maybe stay in bed"
else 
  puts "Please enter a day of the week"
end
