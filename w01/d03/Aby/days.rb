puts "What day of the week it is"
day = gets.chomp.downcase

case day
when "monday"
	puts "Hello Monday"
when "tuesday"
	puts "Blah Tuesday"
when "wednesday"
	puts "Hump Day!"
when "thursday"
	puts "Almost Thursday"
when "friday"
	puts "TGIF!"
else
	puts "That's not a day"
end