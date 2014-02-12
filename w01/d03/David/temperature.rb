def convert_to_fahrenheit(celsius_temp)
  return (celsius_temp *(9/5)) + 32
end

def convert_to_kelvin(celsius_temp)
  return celsius_temp + 273.15
end

puts "Please enter a temperature in Celsius"
temp_c = gets.chomp.to_i

puts "Would you like to convert to (F)ahrenheit or (K)elvin?"
unit = gets.chomp.upcase

if unit == "F"
  puts "#{convert_to_fahrenheit(temp_c)} degrees F"
elsif unit == "K"
  puts "#{convert_to_kelvin(temp_c)} degrees K"
end
    