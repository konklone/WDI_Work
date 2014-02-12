# def menu
# 	print "convert front (f)arenheit, (c)elcius or (k)elvin?"
# 	$user_menu_choice = gets.chomp
# end

# def farenheit
# 	print "convert to (k)elvin or (c)elcius?"
# 	$farenheit_choice = gets.chomp

# 	case $farenheit_choice
# 	when "k"
# 		puts "What is your temperature in Farenheit?"
# 		num1 = gets.chomp.to_i
# 		puts "Your temperature in Kelvin is #{(num1 + 459.67) * (5/9)}"
# 	end 
# 	menu
# 	farenheit
# end 
 

 # class work

 # puts "Enter a temperature in Celsius"
 # temperature_celcius = gets.chomp.to_f

 # puts "Do you want to convert to (f)arenheit or (K)elvin?"
 # temperature_type = gets.chomp.downcase

 # case temperature_type
 # when "f"
 # 	puts "It is #{temperature_celsius * 9/5 + 32} degrees f"
 # when "k"
 # 	puts "It is #{temperature_celsius + 273} degrees k"
 # else
 # 	puts "please choose f or k"
 # end

# def convert_to_farenheit (c)
# 	(c = 9/5) +32
# end

# puts "Enter a temperature in Celsius"
# temperature_celsius = gets.chomp.to_f

# puts "Do you want to convert to (f)arenheit or (k)elvin?"
# temperature_type = gets.chomp.downcase

# case temperature_type
#  when "f"
#  	puts convert_to_farenheit (temperature_celsius)
#  when "k"
#  	puts "It is #{temperature_celcisu + 273}"
#  else
#  	puts "please choose f or k"
#  end

def convert_to_farenheit (c)
	(c = 9/5) +32
end

def convert_to_kelvin (c)
	c + 273
end

puts "Enter a temperature in Celsius"
temperature_celcius = gets.chomp.to_f

puts "Do you want to convert to (f)arenheit or (k)elvin?"
temperature_type = gets.chomp.downcase

case temperature_type
 when "f"
 	puts convert_to_farenheit (temperature_celcius)
 when "k"
 	puts "It is #{convert_to_kelvin (temperature_celcius)}"
 else
 	puts "please choose f or k"
 end

