def celsius_to_fahrenheit(temp)
  fahrenheit = ((9.0/5) * temp) + 32
end

def celsius_to_kelvin(temp)
  kelvin = 273 + temp
end

def kelvin_to_celsius(temp)
  celsius = temp - 273
end

def kelvin_to_fahrenheit(temp)
  final = celsius_to_fahrenheit(kelvin_to_celsius(temp))
end

def fahrenheit_to_celsius(temp)
  celsius = (temp - 32) * (5.0/9)
end

def fahrenheit_to_kelvin(temp)
  final = fahrenheit_to_celsius(temp) + 273
end

puts "Give me a temperature in Celsius"
print ">"
celsius = gets.chomp.to_i 

puts "Do you want to convert that to Fahrenheit or Kelvin??"
print ">"
selection = gets.chomp.downcase

case selection
  when "fahrenheit"
  puts "#{celsius_to_fahrenheit(celsius)} ºF"
  when "kelvin"
  puts "#{celsius_to_kelvin(celsius)} K"
  else
  puts "I don't know what that is..."
  end

puts "Now! new hotness...I can convert anything!"
puts "Give me a temperature"
$temperature = gets.chomp.to_i

puts "Now tell me what scale it is"
scale = gets.chomp

def converter
puts "Now tell me what you want to convert it to!"
$convert_to = gets.chomp
end

if scale == "kelvin"
    converter
    if $convert_to == "fahrenheit"
      puts kelvin_to_fahrenheit($temperature)
    else
      puts kelvin_to_celsius($temperature)
    end
  elsif scale == "fahrenheit"
    converter
    if $convert_to == "kelvin"
     puts fahrenheit_to_kelvin($temperature)
    else
      puts fahrenheit_to_celsius($temperature)
   end
  elsif scale == "celsius"
    converter
    if $convert_to == "fahrenheit"
      puts celsius_to_fahrenheit($temperature)
    else
      puts celsius_to_kelvin($temperature)
    end
  else
    puts "you broke me!"
end


