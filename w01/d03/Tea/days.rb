puts "What day of the week is it?"
day = gets.chomp.downcase

case day
  when "monday"
    puts "Try to stay awake this monday!"
  when "tuesday"
    puts "tuuuuuuuuuuuesday."
  when "wednesday"
    puts "It's the middle of the week! You're almost there!"
  when "thursday"
    puts "The week is almost over. Hang in there."
  when "friday"
    puts "TGIF! Go get some drinks!"
  when "saturday"
    puts "Happy hangover Saturday!"
  when "sunday"
    puts "Today is the day of rest!"
  else
    puts "Sorry, are you speaking English?"
end