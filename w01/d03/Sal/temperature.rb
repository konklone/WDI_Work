def convert_to_fahrenheit(c)
	(c * 9/5) + 32
end

def convert_to_kelvin(c)
	c + 273 
end

puts "Enter a temperature in Celsius"
temperature_celsius = gets.chomp.to_f

puts "Do you want to convert to (f)arenheit or (k)elvin?"
temperature_type = gets.chomp.downcase


case temperature_type 
	when "f"
		puts convert_to_fahrenheit(temperature_celsius)
	when "k"
		puts convert_to_kelvin(temperature_celsius)
	else 
		puts "please choose f or k"
end

