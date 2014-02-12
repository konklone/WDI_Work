# Write `convert_to_fahrenheit` and `convert_to_kelvin` methods that will each take a 
# temperature in Celsius as a parameter and return the converted temperature.
# - Once you have these methods written, a program that does the following:
#   - The user should be asked to enter a temperature in Celsius
#   - The user should be asked to enter if they want to convert the temperature to Fahrenheit 
# or Kelvin
#   - After these have been entered, the user should be told what the converted temperature 
# is

puts "Please ender a temperature in Celsius:"
$celsius_temp = gets.chomp.to_f 

def convert_to_fahrenheit
	fahrenheit_temp = $celsius_temp * (9.0/5.0) + 32
end 

def convert_to_kelvin
	kelvin_temp = $celsius_temp +273.15
end 

puts "Do you want to convert to (F)ahrenheit or (K)elvin?"
choice = gets.chomp.downcase

if choice == "k"
	converted_temp = convert_to_kelvin
else
	converted_temp= convert_to_fahrenheit
end

puts "The converted temperature is #{converted_temp}"

#I clearly forgot about arguments on defined statements.  Yay for review!