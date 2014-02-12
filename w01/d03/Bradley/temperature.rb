def convert_to_fahrenheit(c)
  f = c * (9.0 / 5.0) + 32
  f
end

def convert_to_kelvin(c)
  k = c + 273
  k
end

def converter
  puts "enter a temperature (in celsius) you'd like to convert"
  temp = gets.chomp.to_i

  puts "convert to : (k)elvin or (f)ahrenheit"
  choice = gets.chomp.downcase

  case choice
  when 'k'
    temp = convert_to_kelvin(temp)
  when 'f'
    temp = convert_to_fahrenheit(temp)
  else
    puts "that doesn't make sense. try again."
    converter
  end

  puts "your converted temperature is #{temp}!"
end

converter
