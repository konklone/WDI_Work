puts "What is the temperature in Celsius?"
temp_celsius = gets.chomp.to_f 

puts "Would you like to convert this to (f)ahrenheit or (k)elvin?"
conversion = gets.chomp.downcase 

def convert_to_fahrenheit (c)
   return puts (c * 9/5) + 32 
  #puts "#{temp_celsius} degrees Celsius is equivalent to #{temp_celsius * (9/5) + 32} degrees Celsius."
end

def convert_to_kelvin 
  puts "#{temp_celsius} degrees Celsius is equivalent to #{temp_celsius + 273.15} kelvin."
end 

case conversion 
when "f"
  #puts convert_to_fahrenheit(temp_celsius)
  puts "The #{temp_celsius} is equivalent to #{convert_to_fahrenheit (temp_celsius)} degrees F."
when "k"
  puts convert_to_kelvin
end 




