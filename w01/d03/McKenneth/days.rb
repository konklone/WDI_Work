puts "I am the Day Monster. All your days are belong to me!"
puts "But right now I'm feeling very forgetful...Could you tell me what day it is?"
print ">"
day = gets.chomp.downcase

case day
when "monday"
  puts "I hate Monday's. Always jockin my fresh... "
when "tuesday"
  puts "Tuesday...more like SNOOOOZEDAY"
when "wednesday"
  puts "Wednesday...today? yesterday? What day?"
when "thursday"
  puts "GAH ONE MORE OMG ITS ALMOST"
when "friday"
  puts "Its Friday...Friday! GETTING DOWN ON FRIDAY!!!"
when "saturday"
  puts "WE WE WE SO EXCITED"
when "sunday"
  puts "Oh that day after saturday that everyone hates..."
else
  puts "I really don't think that's a day..."
  puts "You're just as bad as me..."
end