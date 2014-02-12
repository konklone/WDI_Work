def convert_to_f(c)
	(c* 9/5) + 32
end 

def convert_to_k(c)
	c + 273
end

puts "Enter a temp in celsius"
temp_celsius = gets.chomp.to_f

puts "Do you want to convert to (f)ahrenheit or (k)elvin?"
temp_type = gets.chomp.downcase

case temp_type
when "f"
	puts "That's #{convert_to_f (temp_celsius)} degrees F"
when "k"
	puts "That's #{convert_to_k (temp_celsius)} degrees K"
else
	puts "you screwed up"
end