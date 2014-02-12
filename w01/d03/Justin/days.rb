puts "What day of the week is it?"
day = gets.chomp.downcase

case day
when "sunday"
	puts "Football!!"
when "monday"
	puts "Get busy."
when "tuesday"
	puts "Something, something..."
when "wednesday"
	puts "Ride a camel today."
when "thursday"
	puts "Almost there."
when "friday"
	puts "TGIF!"
when "saturday"
	puts "Sleep in!"
else
	puts "Don't lie at me fool!"
end