#Days of the Week

puts "What day of the week is it today?"
day = gets.chomp.downcase

case day
when "monday"
  puts "Happy Monday! Only five more days until the weekend."
when "tuesday"
  puts "It's Tuesday... just keep swimming!"
when "wednesday"
  puts "It's Wednesday! Woop woop!"
when "thursday"
  puts "It's Thursday. One more day until Friday!"
when "friday"
  puts "TGIF!!!"
else
  puts "It's the weekend! Yay!"
end