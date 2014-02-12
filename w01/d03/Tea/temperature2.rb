# still in progress

def get_temperature
  puts "Enter a temperature"
  temperature = gets.chomp.to_f
end

def ask_convert_type
  puts "Do you want to convert to (C)elcius, (F)ahrenheit, or (K)elvin?"
  temperature_convert_to = gets.chomp.downcase
end

puts "Welcome to Temperature Conversion! Would you like to convert from (C)elcius, (F)ahrenheit, or (K)elvin?"
temperature_convert_from = gets.chomp.downcase

case temperature_convert_from
  when "c"
    get_temperature

    ask_convert_type
  
  case temperature_convert_to
  when "c"
    puts "Pffft you're already in Celcius, dummy!"
  when "f"
    puts "It is #{(temperature * 9/5) + 32}°F."
  when "k"
    puts "It is #{temperature + 273} K."
  else
    puts "please choose C, F, or K."
  end
when "f"
  get_temperature

  ask_convert_type

  case temperature_convert_to
  when "c"
    puts "Pffft you're already in Celcius, dummy!"
  when "f"
    puts "Pffft you're already in Fahrenheit, dummy!"
  when "k"
    puts "It is #{temperature + 273} K."
  else
    puts "please choose C, F, or K."
  end
when "k"
  puts "It is #{temperature_celcius + 273} K."
else
  puts "please choose F or K."
end

puts "Enter a temperature"
temperature = temperaturize



puts "Do you want to convert to (C)elcius, (F)ahrenheit, or (K)elvin?"
temperature_convert_to = gets.chomp.downcase




#from celcius
case temperature_type
when "f"
  puts "It is #{(temperature_celcius * 9/5) + 32}°F."
when "k"
  puts "It is #{temperature_celcius + 273} K."
else
  puts "please choose F or K."
end