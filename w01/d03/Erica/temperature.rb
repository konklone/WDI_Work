def convert_to_fahrenheit (c)
  return (c * 9/5) + 32
end

def convert_to_kelvin (c)
  c + 273
end

puts "Enter a temperature in celsius"
temperature_celsius = gets.chomp.to_f

puts "Do you want to convert to (f)ahrenheit or (k)elvin?"
temperature_type = gets.chomp.downcase

case temperature_type
when "f"
  puts "Its #{convert_to_fahrenheit(temperature_celsius)} degrees f"
when "k"
  puts "It is #{convert_to_kelvin(temperature_celsius)} degrees k"
else
  puts "please choose f or k"
end