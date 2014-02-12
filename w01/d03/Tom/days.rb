puts "What day of the work week is it?"
day = gets.chomp.downcase

case day
  when "monday"
    puts "Hey at least ya got football!"
  when "tuesday"
    puts "Keep on truckin"
  when "wednesday"
    puts "The camel's favorite day"
  when "thursday"
    puts "You've almost made it"
  when "friday"
    puts "Happy Hour starts whenever you want it to!"
  else
    puts "It's the weekend? Lucky stiff!"
end