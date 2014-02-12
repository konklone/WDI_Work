puts "what day of the week is it?"
day = gets.chomp.downcase

case day
when "monday"
	puts "just another manic #{day}"
when "tuesday"
	puts "more like threesday"
when "wednesday"
	puts "hump day!"
when "thursday"
	puts "everybody's working for the weekend"
when "friday"
	puts "tgif?"
when "saturday"
	puts "sleep"
when "sunday"
	puts "grillin"
else 
	puts "thats not really a day..."
end


