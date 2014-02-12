
def convert_to_fahrenheit(c)
	temp_f = c * 9/5 + 32
end

def convert_to_kelvin(c)
	temp_k = c + 273.15
end

puts "Please enter a temperature in Celcius."
temp_c = gets.chomp.to_f

puts "Would you like to convert to:"
puts "(f)ahrenheit or (k)elvin?"
temp_scale = gets.chomp.downcase

case temp_scale
when "f"
	temp_scale = "Fahrenheit"
	puts "#{temp_c} Celcius is #{convert_to_fahrenheit(temp_c)} #{temp_scale}"
when "k"
	temp_scale = "Kelvin"
	puts "#{temp_c} Celcius is #{convert_to_kelvin(temp_c)} #{temp_scale}"
else
	puts "I didn't recognize your input. Please either type 'f' or 'k'."
end