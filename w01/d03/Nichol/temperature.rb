# ### Celsius Temperature Converter
# - This should be done in a new file called temperature.rb
# - Write `convert_to_fahrenheit` and `convert_to_kelvin` methods that will each take a temperature in Celsius as a parameter and return the converted temperature.
# - Once you have these methods written, a program that does the following:
#   - The user should be asked to enter a temperature in Celsius
#   - The user should be asked to enter if they want to convert the temperature to Fahrenheit or Kelvin
#   - After these have been entered, the user should be told what the converted temperature is

def convert_to_fahrenheit(tempc)
	tempf = (tempc * 9/5) + 32
	return tempf
end

def convert_to_celsius(tempf)
	tempc = (tempf - 32) * 5/9
	return tempc
end

def convert_to_kelvin(tempc)
	tempk = tempc + 273.15
	return tempk
end

puts "enter a temp in celsius"
tempc = gets.chomp.to_f

puts "convert to kelvin or Fahrenheit?"
targetunit = gets.chomp.downcase

if targetunit == "f"
	convertedtemp = convert_to_fahrenheit(tempc)
elsif targetunit == "k"
	convertedtemp = convert_to_kelvin(tempc)
end

puts "your converted temperature is #{convertedtemp}"
