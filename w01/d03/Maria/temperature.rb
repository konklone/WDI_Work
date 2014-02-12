puts "Please add a temperature in celcius"
user_temp = gets.chomp.to_f
puts "Would you like to convert celcius to (F)arenheit or to (K)elvin"
convert_to = gets.chomp.downcase
if convert_to == "K"
celcius_to_k_converter
else
	celcius_to_f_converter
end

def celcius_to_f_converter	
	answer = (user_temp * 9) / 5 + 32 
end


def celcius_to_k_converter
	answer = user_temp + 273
end

puts "Your converted temperature is: #{answer}"


#The Math:
#cel: Multiply by 9, then divide by 5, then add 32
#Kelvin = Celcius + 273 

# ANOTHER WAY TO DO IT:

# def convert_to_faren (c)
# 	(c* 9/5) +32
# end
# def convert_to_kelvin (c)
# 	c + 273
# end

# puts "enter temp in celc"
# temperature_celcius = gets.chomp.to_f
# puts "to convert to f or k?"
# temp_type = gets.chomp.downcase

# case temp_type
# 	when "f"
# 		puts convert_to_faren(temperature_celsius)
# 	when "c"
# 		puts "It is #{temperature_celsius +273} degrees k"
# 	else puts "choose f or k"
# 	end
