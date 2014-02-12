def convert_to_fahrenheit_from_celsius(temp)
  return (temp *(9/5)) + 32
end

def convert_to_kelvin_from_celsius(temp)
  return temp + 273.15
end

def convert_to_celsius_from_fahrenheit(temp)
  return ((5 / 9) * (temp-32))
end

def convert_to_kelvin_from_fahrenheit(temp)
  return ((5 / 9) * (temp-32)) + 273.15
end

def convert_to_fahrenheit_from_kelvin(temp)
  return ((temp - 273.15) * 1.8) + 32
end

def convert_to_celsius_from_kelvin(temp)
  return temp - 273.15
end


puts "What is the temp unit you would like to convert from: (F)ahrenheit, (C)elsius, (K)elvin?"
convert_from = gets.chomp.upcase

puts "What is the temp unit you would like to convert to: (F)ahrenheit, (C)elsius, (K)elvin?"
convert_to = gets.chomp.upcase

puts "What is the temperature value you would like to convert"
temp = gets.chomp.to_f

if convert_from == "C" && convert_to == "F"
  puts convert_to_fahrenheit_from_celsius(temp)
elsif convert_from == "C" && convert_to == "K"
  puts convert_to_kelvin_from_celsius(temp)
elsif convert_from == "F" && convert_to == "C"
  puts convert_to_celsius_from_fahrenheit(temp)
elsif convert_from == "F" && convert_to == "K"
  puts convert_to_kelvin_from_fahrenheit(temp)
elsif convert_from == "K" && convert_to == "F"
  puts convert_to_fahrenheit_from_kelvin(temp)
elsif convert_from == "K" && convert_to == "C"
  puts convert_to_celsius_from_kelvin(temp)
end
    
    
    
    
    