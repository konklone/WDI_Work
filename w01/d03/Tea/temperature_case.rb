puts "Enter a temperature in Celcius"
temperature_celcius = gets.chomp.to_f

puts "Do you want to convert to (F)ahrenheit or (K)elvin?"
temperature_type = gets.chomp.downcase

case temperature_type
when "f"
  puts "It is #{temperature_celcius * 9/5 + 32}°F."
when "k"
  puts "It is #{temperature_celcius + 273} K."
else
  puts "please choose F or K."
end