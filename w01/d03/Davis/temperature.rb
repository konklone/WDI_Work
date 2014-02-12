def extract_temp_from_string(string)
	string[/\d+/].join.to_f
end

def convert_to_fahrenheit(temp_in_celsius)
	temp_in_celsius.to_f * (9.0 / 5.0) + 32.0
end

def convert_to_kelvin(temp_in_celsius)
	temp_in_celsius.to_f + 273.15
end

def convert_to_celsius(temp)
	if temp.include?("c")
		extract_temp_from_string(temp)
	elsif temp.include?("f")
		extract_temp_from_string(temp) * (9.0 / 5.0) + 32
	elsif temp.include?("k")
		extract_temp_from_string(temp) + 273.15
	else
		#error
	end
end

puts "What is the current temperature? Ex. 20c, 70f, 270k"
temp = gets.chomp

puts "Do you want the temperature in (f)ahrenheit, (k)elvin, or (c)elsius?"
choice = gets.chomp.downcase

case choice
when "f"
	puts "#{convert_to_fahrenheit(temp)} degrees in fahrenheit"
when "k"
	puts "#{convert_to_kelvin(temp)} degrees in kelvin"
when "c"
	puts "#{convert_to_celsius(temp)} degrees in celsius"
else
	puts "That is not an option. Try again."
end

