puts "Enter a temperature in Celcius"
temperature_celcius = gets.chomp.to_f

puts "Do you want to convert to (F)ahrenheit or (K)elvin?"
temperature_type = gets.chomp.downcase

def convert_to_fahrenheit (c)
  (c * 9/5) + 32
end

def convert_to_kelvin (c)
  c + 273
end

case temperature_type
  when "f"
    puts "It is #{convert_to_fahrenheit(temperature_celcius)} degrees Fahrenheit."
  when "k"
    puts "It is #{convert_to_kelvin(temperature_celcius)} degrees Kelvin."
  else
    puts "please choose F or K."
end
