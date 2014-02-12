def how_are_you?(name)
	puts "How are you #{name}?"
	answer = gets.chomp

	if answer == "good"
		puts "great!"
	else
		puts "Go eat some ice cream"
	end
end